# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: odursun <odursun@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/02/06 11:25:39 by odursun           #+#    #+#              #
#    Updated: 2022/02/06 13:32:47 by odursun          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME=	libftprintf.a

SRC=	ft_convert.c ft_printf.c ft_hexconvert.c

OBJS=	$(SRC:.c=.o)

CC=		@gcc

CFLAGS=	-Wall -Wextra -Werror -I.

RM=		@rm -rf

all: 	$(NAME)

$(NAME): $(OBJS)
			@ar rcs $(NAME) $(OBJS)

clean:
			$(RM) $(OBJS)

fclean: clean
			$(RM) $(NAME)

re:	fclean $(NAME)
		
.PHONY=	all re clean fclean 
