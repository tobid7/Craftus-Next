mkdir -p libs
mkdir -p libs/include
mkdir -p libs/lib

mkdir upt_env
cd upt_env
mkdir base
cmake -S ../../../base -B ./base --toolchain /home/itc/Craftus-Next/Platforms/3ds/tools/toolchain_3ds.cmake -DBASE_CTR=ON
cmake --build base -j4
cp -rf base/*.a ../libs/lib/
cp -rf ../../../base/include/* ../libs/include/
cp -rf ../../../external/glm/glm ../libs/include/

cd ..
rm -rf upt_env