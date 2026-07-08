# Build the ARM64 Android fuzzer
cd $SRC/buttercup_target/scripts
export AFL_PATH=/src/aflplusplus
export NDK=/src/android-ndk-r25c

sed -i 's|#include "afl-fuzz.h"||' ../harnesses/fuzz_image_processing.c
	
# ADD THIS LINE TO CREATE THE BUILD DIRECTORY
mkdir -p ../build

     ./build.sh afl

# Copy the fuzzer to the output directory
cp ../build/fuzz_image_processing_afl $OUT/fuzz_image_processing

# Copy the pre-compiled .so since the harness dlopens it
cp ../lib/libimage_processing_util_jni.so $OUT/
