    #!/bin/bash -eu                                                                                                                                                                  
                                                                                                                                                                                     
    # Build the ARM64 Android fuzzer
    cd $SRC/buttercup_target/scripts
    export AFL_PATH=/usr/local/bin
    export NDK=/src/android-ndk-r25c
  
    ./build.sh afl
