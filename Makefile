# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bvilla <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/22 20:11:16 by bvilla            #+#    #+#              #
#    Updated: 2018/10/30 18:38:31 by bvilla           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SOURCE = ft_memset.c ft_putchar.c ft_putnbr.c ft_putstr.c ft_bzero.c \
		 ft_memcpy.c ft_memccpy.c ft_memmove.c ft_memchr.c ft_memcmp.c \
		 ft_strlen.c ft_strdup.c ft_strcpy.c ft_strncpy.c ft_strcat.c \
		 ft_strncat.c ft_strlcat.c ft_strchr.c ft_strrchr.c ft_strstr.c \
		 ft_strnstr.c ft_strcmp.c ft_strncmp.c
all: 
	gcc -Wall -Wextra -Werror -c $(SOURCE)
	ar rc $(NAME) *.o
	ranlib $(NAME)
clean:
	rm -f *.o
fclean: clean
	rm -f $(NAME)
$(NAME): all clean
re: fclean all
test: re
	rm -f *.o
	gcc -Wall -Werror -Wextra tester.c libft.a
