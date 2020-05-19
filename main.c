#include <stdio.h>
#include <time.h>
#include <unistd.h>
#include <fcntl.h>

int main()
{
	double first = clock();
	extern int ft_strlen(char *s);
	extern char *ft_strcpy(char *dest, char *src);
	extern int ft_strcmp(char *s1, char *s2);
	extern char *ft_strdup(char *s);
	//extern int ft_strdup(char *s);
	//extern ssize_t ft_read(int fd, void *buff, size_t count);
	extern ssize_t ft_read(int fd, void *buff, size_t count);
	char dest[4] = "lol\0";
	char src[4] = "lo\0";
	char *m;
	//printf("%s\n", ft_strdup("lol"));
	printf("%s\n", ft_strdup("lol\0"));
	/*m = malloc(14);
	printf("%d %f\n", ft_strlen("qsdfjh"), (clock() - first) / CLOCKS_PER_SEC);
	int fd = open("l.txt", O_RDONLY);
	printf("ft_read : %d\n", ft_read(fd, m, 4));
	//printf("%d fd\n", fd);
	printf("|%s|\n", m);
	close(fd);
	fd = open("l.txt", O_RDONLY);
	//printf()
	printf("read :%d\n", read(fd, (void*)m, 4));
	printf("%s\n", m);*/
}