#include "unp.h"
// kill by ctrl+c need sudo netstat -apn | grep 1992

int main(int argc , char ** argv){
	int					listenfd, connfd;
	struct sockaddr_in	servaddr;
	char				buff[MAXLINE];
	time_t				ticks;

	listenfd = Socket(AF_INET, SOCK_STREAM, 0);

	bzero(&servaddr, sizeof(servaddr));
	servaddr.sin_family      = AF_INET;  //填写套接字
	servaddr.sin_addr.s_addr = htonl(INADDR_ANY);
	servaddr.sin_port        = htons(1992);	/* daytime server */

	Bind(listenfd, (SA *) &servaddr, sizeof(servaddr)); //Permission denied。这个是由于超0~1024的端口为公认端口，需要root权限运行。

	Listen(listenfd, LISTENQ);

	for ( ; ; ) {
		connfd = Accept(listenfd, (SA *) NULL, NULL); //由listenfd产生一个新的connfd，在这个connfd上进行了操作
        ticks = time(NULL);
        snprintf(buff, sizeof(buff), "%.24s\r\n", ctime(&ticks)); //字符放入buff中
        Write(connfd, buff, strlen(buff)); //这里strlen自己加1，只会导致服务端多传了一个字符。
        // int bufflen = strlen(buff);
        // printf("bufflen is %d\n",bufflen);
        // char tmp[5];
        // tmp[0] = 'a';
        // tmp[1] = 'b';
        // tmp[2] = '\r';
        // tmp[3] = '\n';
        // tmp[4] = '\0';
        // int tmplen = strlen(tmp);
        // printf("tmplen is %d\n",tmplen);
		Close(connfd); //关闭connfd
	}
}