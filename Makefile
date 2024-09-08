# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: qsomarri <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/06/13 17:10:40 by qsomarri          #+#    #+#              #
#    Updated: 2024/07/09 14:59:07 by qsomarri         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME =	libftprintf.a

CC  =	cc

CFLAGS =	-Wall -Wextra -Werror

AR =	ar rcs

RM =	rm -rf

MAKE = make -C

SRCS =	ft_printf.c \
	ft_printf_utils.c

OBJ_DIR =	obj

OBJS =	$(SRCS:%.c=$(OBJ_DIR)/%.o)

LIBFT_PATH =	./libft

LIBFT =	$(LIBFT_PATH)/libft.a

$(OBJ_DIR)/%.o:		%.c
			$(CC) $(CFLAGS) -c $< -o $@

all :	$(NAME)

$(NAME) :	$(LIBFT) $(OBJ_DIR) $(OBJS)
		cp $(LIBFT) $(NAME)
		$(AR) $(NAME) $(OBJS)

$(LIBFT) :
		$(MAKE) $(LIBFT_PATH) all

$(OBJ_DIR) :
		mkdir -p $(OBJ_DIR)

clean :
	$(MAKE) $(LIBFT_PATH) clean
	$(RM) $(OBJ_DIR)

fclean :	clean
		$(MAKE) $(LIBFT_PATH) fclean
		$(RM) $(NAME)

re :	fclean all

.PHONY:	all clean fclean re libft
