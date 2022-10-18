#pragma once
#include <string>
#include <iostream>
#include <iomanip>
#include <vector>

#include <cstdio>
#include <cstring>

namespace Base
{
  inline bool NameIsEndingWith(const std::string &name, const std::vector<std::string> &extensions)
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
}
template<class T>
T GetFileName(T const & path, T const & delims = "/\\")
{
  return path.substr(path.find_last_of(delims) + 1);
}
template<class T>
T remove_ext(T const & filename)
{
  typename T::size_type const p(filename.find_last_of('.'));
  return p > 0 && p != T::npos ? filename.substr(0, p) : filename;
}

template< typename T >
std::string Int_To_Hex( T i )
{
  std::stringstream stream;
  stream << "0x" 
         << std::setfill ('0') << std::setw(sizeof(T)*2) 
         << std::hex << i;
  return stream.str();
}