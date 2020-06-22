FROM centos:7
RUN yum install git gcc automake gcc-c++ make -y
RUN git clone https://github.com/Mellanox/sockperf
RUN cd sockperf && ./autogen.sh && ./configure && make install
