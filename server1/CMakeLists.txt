#最低版本需求
cmake_minimum_required(VERSION 2.6)

PROJECT(server)

SET(SRC_LIST server1.c)

#build路径以及source路径
MESSAGE(STATUS "THIS IS BINARY DIR" ${server_BINARY_DIR})
MESSAGE(STATUS "THIS IS SOURCE DIR" ${server_SOURCE_DIR})

#引入头文件
#INCLUDE_DIRECTORIES(/home/liqixin/zmq/include)
#INCLUDE_DIRECTORIES(/home/liqixin/pb/include)

INCLUDE_DIRECTORIES(/home/lqx/unpv13e/lib)  #情况特殊 unp.h头文件在lib文件夹下

#引入库文件
#LINK_DIRECTORIES(/home/liqixin/zmq/lib)
#LINK_DIRECTORIES(/home/liqixin/pb/lib)


LINK_DIRECTORIES(/home/lqx/unpv13e/build)

#必须在前面，否则TARGET_LINK_LIBIRARIES找不到
ADD_EXECUTABLE(server ${SRC_LIST})

#引入库文件名
#原先命令 g++ -g -Wall -fPIC -I/home/liqixin/zmq/include -L/home/liqixin/zmq/lib -lzmq client.cpp -o client
#TARGET_LINK_LIBRARIES(server zmq protobuf protobuf-lite protoc)

TARGET_LINK_LIBRARIES(server unp)