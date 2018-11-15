#include "unp.h"

int main(int argc , char ** argv){
    int sockfd,n;
    char recvline[MAXLINE+1];
    struct sockaddr_in servaddr;
    printf("argc is %d \n",argc); // ./client agrc is 1  ./client 127.0.0.1 agrc is 2
    printf("MAXLINE is %d \n",MAXLINE);  //4096
    if(argc != 2){
        err_quit("agrc != 2");
    }

    sockfd = socket(AF_INET,SOCK_STREAM,0) ;
    if(sockfd<0){
        err_sys("socket < 0");
    }

    bzero(&servaddr,sizeof(servaddr)); //初始化
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(1992); //server 端口号

    int tmp = inet_pton(AF_INET,argv[1],&servaddr.sin_addr); //./client localhost 则报错，必须是127.0.0.1形式
    if(tmp<=0){
        err_quit("inet_pton error");
    }

    if(connect(sockfd,(SA *)&servaddr,sizeof(servaddr))<0){
        err_sys("connect error");
    }
    memset(recvline,'0',sizeof(recvline)/sizeof(char)); //0初始化 就是空 '0'是字符
    while((n=read(sockfd,recvline,MAXLINE))>0){ //不多加一个括号 n有问题
        printf("%c\n",recvline[n-6]); //2
        printf("%c\n",recvline[n-5]); //0
        printf("%c\n",recvline[n-4]); //1
        printf("n-3 %c\n",recvline[n-3]); // 8 26-3 = 23 
        printf("n-2 %c\n",recvline[n-2]); // \r 24
        printf("n-1 is %d  %c\n",n-1,recvline[n-1]); // \n 25
        printf("n is %d  %c\n",n,recvline[n]); // not sure self char
        recvline[n]=0;
        int reclen = strlen(recvline);
        printf("rec len is %d",reclen);
        if(fputs(recvline,stdout) == EOF){ //int fputs(const char *str, FILE *stream); 需要包含最后一个字符 把str输出到stdout上面
            err_sys("fput error");
        }
        printf("in while n is %d \n",n);
    }
    printf("out while n is %d \n",n);
    if(n<0){
        err_sys("n<0 read error");
    }

    exit(0);
}