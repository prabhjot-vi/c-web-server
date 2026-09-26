#include<stdio.h>
#include<sys/socket.h>

int main() {
    int socket_fd = socket(AF_INET, SOCK_STREAM, 0);
    if (-1 == socket_fd) {
        printf("Unable to create socket\n");
        return 1;
    }

    printf("Socket file descriptor: %d\n", socket_fd);
}
