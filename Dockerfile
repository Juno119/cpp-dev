FROM junolu/vcpkg:v1.0
RUN apt-get update && \
    apt-get install -y flex bison libdbus-1-dev libx11-dev libxft-dev libxext-dev \
        libglu1-mesa-dev nasm libthrift-dev libwayland-dev libxkbcommon-dev \
        libegl1-mesa-dev libibus-1.0-dev libxi-dev libgl1-mesa-dev libglu1-mesa-dev \
        mesa-common-dev libxrandr-dev libxxf86vm-dev libxtst-dev libxvmc-dev libxaw7-dev \
        python3 python3-distutils python3.10-venv gfortran && \
    vcpkg install --clean-after-build gflags glog gtest rxcpp boost libtorch \
        brpc grpc srpc evpp libuv dlib bzip2 yaml-cpp \
        workflow cpp-taskflow spdlog sqlpp11 tbb \
        gstreamer numcpp murmurhash nlohmann-json folly \
        rapidjson poco poco[netssl] librdkafka redis-plus-plus zookeeper etcd-cpp-apiv3 \
        ffmpeg[x264,x265,ffprobe] \
        opencv4[dnn,contrib,eigen,ffmpeg,gdcm,ipp,jasper,nonfree,openmp,ovis,sfm,png,jpeg,world]  --recurse && \
    rm -rf /var/lib/apt/lists/*