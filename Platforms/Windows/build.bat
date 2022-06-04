@echo_off
rm -r build
rm *.exe
mkdir build
cd build
cmake .. -G "MinGW Makefiles"
mingw32-make
cp *.exe ../
pause