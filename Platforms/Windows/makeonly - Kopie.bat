@echo_off
rm *.exe
cd build
mingw32-make
cp *.exe ../
cd ..
make
cd bin
Craftus-Next
pause