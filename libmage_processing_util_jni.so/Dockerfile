    FROM gcr.io/oss-fuzz-base/base-builder                                                                                                                                           
    RUN apt-get update && apt-get install -y make autoconf automake libtool build-essential wget cmake                                                                               
    # Install Android NDK (AFL++ Android fuzzing relies on it)                                                                                                                       
    RUN wget -q https://dl.google.com/android/repository/android-ndk-r25c-linux.zip && \                                                                                             
        unzip -q android-ndk-r25c-linux.zip && \                                                                                                                                     
        rm android-ndk-r25c-linux.zip                                                                                                                                                
    ENV NDK=/src/android-ndk-r25c                                                                                                                                                    
    COPY . $SRC/buttercup_target                                                                                                                                                     
    WORKDIR $SRC/buttercup_target                                                                                                                                                    
    COPY build.sh $SRC/                                                                                                                                                              
