# Build the ARM64 Android fuzzer
cd $SRC/buttercup_target/scripts
export AFL_PATH=/src/aflplusplus
export NDK=/src/android-ndk-r25c

sed -i 's|#include "afl-fuzz.h"||' ../harnesses/fuzz_image_processing.c

# FIX 1: create the 'build' directory inside the scripts folder
mkdir -p build

./build.sh afl

# FIX 2: Copy from the correct local 'build' folder
cp build/fuzz_image_processing_afl $OUT/fuzz_image_processing

# Copy the pre-compiled .so since the harness dlopens it
cp ../lib/libimage_processing_util_jni.so $OUT/
