# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: thibaud <thibaud@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/18 10:53:51 by tmouche           #+#    #+#              #
#    Updated: 2024/06/29 22:08:20 by thibaud          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

HDRS	:= pixel.h

SRCS	:=	tools_pixel.c \

SRCS_D	:= SRCS/
HDRS_D	:= HDRS/
OBJS_D	:= OBJS/
INC_D	:= include/

CFLAGS	:= -Wall -Wextra -Werror -g
CC		:= cc
AR		:= ar rcs
RM		:= rm -rf

NAME	:= tools	
OBJS	:= $(SRCS:%.c=$(OBJS_D)%.o)

all: minilibx-linux $(NAME) 

$(NAME): $(OBJS_D) $(OBJS) 
	$(CC) $(CFLAGS) $(OBJS) -I$(INC_D)minilibx-linux -L$(INC_D)minilibx-linux -lmlx -L/usr/lib -lXext -lX11 -lm -lz -o $(NAME)


$(OBJS_D)%.o: $(SRCS_D)%.c $(HDRS:%=$(HDRS_D)%) $(INC_D)minilibx-linux Makefile
	$(CC) $(CFLAGS) -I$(INC_D)minilibx-linux -c $< -o $@

$(OBJS_D):
	@mkdir -p $(OBJS_D)

minilibx-linux:
	$(MAKE) -C $(INC_D)minilibx-linux

clean:
	$(RM) -r $(OBJS_D)

fclean: clean
	$(RM) $(NAME)
	$(MAKE) -C $(INC_D)minilibx-linux clean

re: fclean all

.PHONY: all clean fclean re minilibx-linux
