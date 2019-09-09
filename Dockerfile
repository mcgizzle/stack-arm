FROM arm32v7/ubuntu

RUN apt-get update && \
      apt-get -y install sudo wget software-properties-common

RUN wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
RUN sudo apt-add-repository "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-6.0 main"
RUN sudo apt-get update
RUN sudo apt-get install -y clang-6.0

RUN wget -qO- https://get.haskellstack.org/ | sh

