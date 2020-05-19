SRCS	= 	\
			ft_strlen.s	\
			ft_strcpy.s	\
			ft_strcmp.s	\
			ft_read.s	\
			ft_write.s	\
			ft_strdup.s	\

CC		= nasm

FLAG	= -felf64

NAME	= libasm.a

OBJS	= ${SRCS:.s=.o}

.s.o:
				$(CC) $(FLAG) $< -o $(<:.s=.o)

all:	${OBJS}
		ar rc ${NAME} ${OBJS}
		ranlib ${NAME}

${NAME}: all

clean:
		rm -f ${OBJS}
		rm -f main.o

fclean: clean
		rm -f ${NAME}

re:		fclean all

try:	${OBJS}
		gcc main.c ${OBJS} && ./a.out

.PHONY: all clean fclean re