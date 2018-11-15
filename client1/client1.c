#include "unp.h"

int main(int argc , char ** argv){
    int sockfd,n;
    char recvline[MAXLINE+1];
    struct sockaddr_in servaddr;

    if(argc != 2){
        return 0;
    }

    sockfd = socket(AF_INET,SOCK_STREAM,0) ;
    if(sockfd<0){
        return 0;
    }

    bzero(&servaddr,sizeof(servaddr)); //初始化
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(13);

    int tmp = inet_pton(AF_INET,argv[1],&servaddr.sin_addr);
    if(tmp<=0){
        return 0;
    }

    if(connect(sockfd,(SA *)&servaddr,sizeof(servaddr))<0){
        return 0;
    }

    while((n=read(sockfd,recvline,MAXLINE))>0){
        recvline[n]=0;
        if(fputs(recvline,stdout) == EOF){
            return 0;
        }
    }

    if(n<0){
        return 0;
    }

    exit(0);
}