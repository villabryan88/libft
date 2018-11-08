# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bvilla <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/22 20:11:16 by bvilla            #+#    #+#              #
#    Updated: 2018/11/07 19:12:18 by bvilla           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SOURCE = srcs/ft_memset.c srcs/ft_putchar.c srcs/ft_putnbr.c srcs/ft_putstr.c \
	 	 srcs/ft_bzero.c srcs/ft_memcpy.c srcs/ft_memccpy.c srcs/ft_memmove.c \
		 srcs/ft_memchr.c srcs/ft_memcmp.c srcs/ft_strlen.c srcs/ft_strdup.c \
		 srcs/ft_strcpy.c srcs/ft_strncpy.c srcs/ft_strcat.c srcs/ft_strncat.c \
		 srcs/ft_strlcat.c srcs/ft_strchr.c srcs/ft_strrchr.c srcs/ft_strstr.c \
		 srcs/ft_strnstr.c srcs/ft_strcmp.c srcs/ft_strncmp.c srcs/ft_atoi.c \
		 srcs/ft_isalpha.c srcs/ft_isdigit.c srcs/ft_isalnum.c \
		 srcs/ft_isascii.c srcs/ft_isprint.c srcs/ft_toupper.c \
		 srcs/ft_tolower.c srcs/ft_memalloc.c srcs/ft_memdel.c \
		 srcs/ft_strnew.c srcs/ft_strdel.c srcs/ft_strclr.c srcs/ft_striter.c \
		 srcs/ft_striteri.c srcs/ft_strmap.c srcs/ft_strmapi.c \
		 srcs/ft_strequ.c srcs/ft_strnequ.c srcs/ft_strsub.c srcs/ft_strjoin.c \
		 srcs/ft_strtrim.c srcs/ft_strsplit.c srcs/ft_itoa.c srcs/ft_putendl.c \
		 srcs/ft_putchar_fd.c srcs/ft_putstr_fd.c srcs/ft_putendl_fd.c \
		 srcs/ft_putnbr_fd.c srcs/ft_strnlen.c srcs/ft_isspace.c \
		 srcs/ft_wrdcnt.c srcs/ft_putnbrendl.c srcs/ft_iseven.c \
		 srcs/ft_isneg.c srcs/ft_lstnew.c srcs/ft_lstdelone.c srcs/ft_lstdel.c \
		 srcs/ft_lstadd.c srcs/ft_lstiter.c srcs/ft_lstmap.c
		 
HEADERS = includes
OBJS = $(SOURCE:srcs/%.c=%.o)
$(NAME): 
	gcc -Wall -Wextra -Werror -c $(SOURCE) -I$(HEADERS)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)
clean:
	rm -f $(OBJS)
fclean: clean
	rm -f $(NAME)
all: $(NAME)
re: fclean all
test: re
	rm -f $(OJBS)
	gcc -Wall -Werror -Wextra ../backup/tester.c libft.a -o test
	./test
check: re
	rm -f $(OBJS)
	gcc -Wall -Werror -Wextra ../backup/tester.c libft.a -o test
	gcc -o checker ../backup/checker.c
	./test > test.txt
	./checker
sclean: fclean
	rm checker
	rm test
	rm test.txt
backup: 
	cp tester.c checker.c ../backup/
git: 
	git add Makefile
	git add includes/libft.h
	git add $(SOURCE)
	git status
