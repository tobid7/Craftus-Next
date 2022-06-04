@echo_off
rm *.exe
cd build
mingw32-make
cp *.exe ../