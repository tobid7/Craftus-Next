#include <BitmapEngine.hpp>
#include <external/lodepng.hpp>

#include <memory>
#include <stdio.h>
#include <stdarg.h>  
#include <time.h>
#include <unistd.h>
#include <fstream>
#include <string.h>
#include <string>


std::string FormatString(std::string fmt_str, ...)
{
	va_list ap;
	char* fp = NULL;
	va_start(ap, fmt_str);
	vsprintf(fp, fmt_str.c_str(), ap);
	va_end(ap);
	std::unique_ptr<char, decltype(free)*> formatted(fp, free);
	return std::string(formatted.get());
}

std::string GetTimeStr(void)
{
	time_t unixTime;
	struct tm timeStruct;
	time(&unixTime);
	
	localtime_r(&unixTime, &timeStruct);
	
	//localtime_s(&timeStruct, &unixTime);
	
	return FormatString("%04i-%02i-%02i_%02i-%02i-%02i", timeStruct.tm_year + 1900, timeStruct.tm_mon + 1, timeStruct.tm_mday,
		timeStruct.tm_hour, timeStruct.tm_min, timeStruct.tm_sec);
}

bool shouldbe_disabled;
std::string csvpc;

bool NameIsEndingWith(const std::string &name, const std::vector<std::string> &extensions)
  {
    if (name.substr(0, 2) == "._") return false;

	  if (name.size() == 0) return false;

	  if (extensions.size() == 0) return true;

	  for(int i = 0; i < (int)extensions.size(); i++) {
		  const std::string ext = extensions.at(i);
		  if (strcasecmp(name.c_str() + name.size() - ext.size(), ext.c_str()) == 0) return true;
	  }

	  return false;
  }

Base::BitmapPrinter::BitmapPrinter(int w, int h)
{
	BMP newmap(w, h, true);
	bitmap = newmap;
	//renderframe.LoadPFromBuffer(BitmapConverter::ConvertData(bitmap.DATA()));
	blank = newmap;
}

Base::BitmapPrinter::~BitmapPrinter()
{
	if(renderframe.GetRegID() != 0) renderframe.Destroy();
}

bool Base::BitmapPrinter::DecodeBMPFile(std::string file)
{
	unsigned error = bitmap.read(file.c_str());
	
	if (error)
	{
		Base::AddError(error);
		return false;
	}

	return true;
}

void Base::BitmapPrinter::DrawPixel(int x, int y, uint8_t b, uint8_t g, uint8_t r, uint8_t a)
{
	unsigned error = bitmap.set_pixel(x, (bitmap.bmp_info_header.height -1) - y, b, g, r, a);
	if (error)
	{
		
	}
}
void Base::BitmapPrinter::DrawRect(int x, int y, int w, int h, uint8_t line_w, uint8_t b, uint8_t g, uint8_t r, uint8_t a)
{
	unsigned error = bitmap.draw_rectangle(x, bitmap.bmp_info_header.height - y - h,  w, h, b, g, r, a, line_w);
	if (error)
	{
		Base::AddError(error);
	}
}

void Base::BitmapPrinter::DrawRectFilled(int x, int y, int w, int h, uint8_t b, uint8_t g, uint8_t r, uint8_t a)
{
	unsigned error = bitmap.fill_region(x, bitmap.bmp_info_header.height - h - y, w, h, b, g, r, a);
	if (error)
	{
		Base::AddError(error);
	}
}

void Base::BitmapPrinter::SaveBmp(std::string name)
{
	if(!NameIsEndingWith(name, {"bmp"}))
    {
        name += ".bmp";
    }
	bitmap.write(name.c_str());
}
void Base::BitmapPrinter::SavePng(std::string name)
{
	if(!NameIsEndingWith(name, {"png"}))
    {
        name += ".png";
    }
	std::vector<unsigned char> ImageBuffer;
	ImageBuffer = BitmapConverter::ConvertBMP2PNGData(bitmap.DATA());
	lodepng::save_file(ImageBuffer, name);
}

BaseTexture Base::BitmapPrinter::GetImage()
{
	BaseTexture img;
	//img.LoadFromBitmap(bitmap);
	return img;
}

void Base::BitmapPrinter::UsePreMap(BMP map)
{
	bitmap = map;
}
void Base::BitmapPrinter::UsePrePrintMap(BitmapPrinter printmap)
{
	bitmap = printmap.GetBitmap();
}

void Base::BitmapPrinter::Clear(uint8_t b, uint8_t g, uint8_t r, uint8_t a)
{
	bitmap.fill_region(0, 0, bitmap.bmp_info_header.width, bitmap.bmp_info_header.height, b, g, r, a);
}
void Base::BitmapPrinter::ClearBlank()
{
	bitmap = blank;
}

bool Base::BitmapPrinter::UpdateScreenF(int framerate)
{
	bool updtt = false;
	if (isscreen)
	{
		if(frame == (60/framerate)){
			if(renderframe.GetRegID() != 0) renderframe.Destroy();
			
			this->Decode(decc);
			frame = 0;
			updtt = true;
		}
		frame++;
	}
	return updtt;
}
bool Base::BitmapPrinter::UpdateScreen()
{
	bool updtt = false;
	if (isscreen)
	{
		if(renderframe.GetRegID() != 0) renderframe.Destroy();
		this->Decode(decc);
		updtt = true;
	}	
	return updtt;
}

#define TICKS_PER_MSEC 268111.856

void Base::BitmapPrinter::Benchmark()
{
	if(setupbenchmark)
	{
		frametime = 0;
		renderedframes = 0;
		timer = 0;
		setupbenchmark = false;
		lastTime = 0; 
	}
	if(benchmark)
	{
		if(timer >= 60)
		{
			std::string renderedf = std::to_string(renderedframes);
			std::string avgdtt = std::to_string(mhdtt);
			float alldtt = 0;
			for (size_t i = 1; i < hdttt.size(); i++)
			{
				alldtt += hdttt[i];
			}
			float alldtt2 = 0;
			for (size_t i = 0; i < hdttt2.size(); i++)
			{
				alldtt2 += hdttt2[i];
			}
			float alldtt3 = 0;
			for (size_t i = 0; i < hdttt3.size(); i++)
			{
				alldtt3 += hdttt3[i];
			}
			int allfps = 0;
			for (size_t f = 1; f < fpscountc.size(); f++)
			{
				allfps += fpscountc[f];
			}
			
			
			std::string avgcpu = std::to_string((alldtt/(float)hdttt.size()-1));
			std::string avgcpu2 = std::to_string(((alldtt2/(float)hdttt2.size())*1000));
			std::string avgcpu3 = std::to_string(((alldtt3/(float)hdttt3.size())*1000));
			std::string avgfps = std::to_string((allfps/(int)fpscountc.size()-1));

			std::string resultt = "TestMode: " + std::to_string(testfpsd) + "fps" + "\nRendered Frames: " + renderedf + "\nMax Cpu Time: " + avgdtt + "\nAvg Cpu Time: " + avgcpu + "\nAvg Fps: " + avgfps + "\nAvg EncodeTime: " + avgcpu2 + "ms/f\nAvg DecodeTime: " + avgcpu3 + "ms\n";
			this->ClearBlank();
			this->DrawRectFilled(0, 0, this->bitmap.bmp_info_header.width, this->bitmap.bmp_info_header.height, 0, 0, 0, 255);
			std::string outname = csvpc + "/benchmark_" + GetTimeStr() + ".png";
			this->SavePng(outname);
			benchmark = false;
		}
		uint64_t currentTime = 0;
		dtt = ((float)(currentTime / (float)TICKS_PER_MSEC) - (float)(lastTime / (float)TICKS_PER_MSEC)) / 1000.f;
		lastTime = currentTime;
		lastTime = currentTime;
		frameCounter++;
		fpsClock += dtt;
		if (fpsClock >= 1.f) {
			fps = frameCounter;
			frameCounter = 0;
			fpsClock = 0.f;
		}
		uint64_t lastTime2 = 0;
		this->ClearBlank();
		this->DrawRectFilled(0, 0, this->bitmap.bmp_info_header.width, this->bitmap.bmp_info_header.width, 255, 255, 255, 255);
		this->DrawRect(5, 5, this->bitmap.bmp_info_header.width - 10, this->bitmap.bmp_info_header.height - 10, 5, 0, 0, 0, 0);
		//this->DrawDebugText(20, 20, 0, Base::Color::Hex("#ffffff"), "Fps: " + std::to_string(fps));
		/*this->DrawDebugText(0, 0, 0.5f, Base::Color::Hex("#ff0000"), "Time: " + std::to_string(timer));
		this->DrawDebugText(0, 10, 0.5f, Base::Color::Hex("#ff0000"), "Fps: " + std::to_string(fps));
		this->DrawDebugText(0, 20, 0.5f, Base::Color::Hex("#ff0000"), "dt: " + std::to_string(dtt));
		this->DrawDebugText(0, 30, 0.5f, Base::Color::Hex("#ff0000"), "MaxEncodeTime: " + std::to_string(mdtt2*1000) + "ms/f");
		this->DrawDebugText(0, 40, 0.5f, Base::Color::Hex("#ff0000"), "MaxDecodeTime: " + std::to_string(mdtt3*1000) + "ms");*/
		uint64_t currentTime2 = 0;
		dtt2 = ((float)(currentTime2 / (float)TICKS_PER_MSEC) - (float)(lastTime2 / (float)TICKS_PER_MSEC)) / 1000.f;
		hdttt2.push_back(dtt2);
		lastTime2 = 0;
		bool updgg = this->UpdateScreenF(testfps);
		currentTime2 = 0;
		dtt3 = ((float)(currentTime2 / (float)TICKS_PER_MSEC) - (float)(lastTime2 / (float)TICKS_PER_MSEC)) / 1000.f;
		if(updgg) hdttt3.push_back(dtt3);
		renderedframes++;
		if(mdtt2 < dtt2)
		{
			mdtt2 = dtt2;
		}
		if(mdtt3 < dtt3 && updgg)
		{
			mdtt3 = dtt3;
		}
		timer+= 1*dtt;
		float hdtt = 0;
		hdttt.push_back(hdtt);
		fpscountc.push_back(fps);
		if(mhdtt < hdtt)
		{
			mhdtt = 0;
		}
	}
}

void Base::BitmapPrinter::SetupBenchmark(int framerate)
{
	benchmark = true;
	setupbenchmark = true;
	this->testfps = framerate;
	this->testfpsd = framerate;
}

bool Base::BitmapPrinter::Decode(Decoder deccc)
{
	bool res = false;

	switch (deccc)
	{
	case Decoder::BITMAP2PNG2TEX:
		renderframe.LoadMem(BitmapConverter::ConvertBMP2PNGData(this->bitmap.DATA()));
		res = true;
		break;
	case Decoder::BITMAP2TEX:
		//renderframe.LoadFromBitmap(this->bitmap);
		renderframe.LoadMem(this->bitmap.DATA());
		res = true;
		break;
	
	default:
		res = false;
		break;
	}
	return res;
}

void Base::BitmapPrinter::DrawBitmap(int x, int y, BMP map)
{
	for(int i = 0; i < map.bmp_info_header.width; i++)
	{
		for(int j = 0; j < map.bmp_info_header.height; j++)
		{
			bitmap.set_pixel(x + i, (bitmap.bmp_info_header.height -1) - (y + j), UNPACK_BGRA(map.get_pixel(i, (map.bmp_info_header.height -1) - j)));
		}
	}
}
namespace Base
{
	bool BitmapPrinter::DecodePNGFile(std::string file)
	{
		if(!NameIsEndingWith(file, {"png"}))
		{
			return false;
		}
		//bitmap.read_mem(BitmapConverter::ConvertPNG2BMPFile(file));
		BitmapConverter::ConvertPNG2BMPFile(file);
		bitmap.read("irufghiorgudripygpiodhuysg.bmp");
		remove("irufghiorgudripygpiodhuysg.bmp");
	}
}