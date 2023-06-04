CFLAG = -Wall -Wextra -Werror

NAME = libftprintf.a

SRC = ft_printf.c \
	ft_put_nbr_lower.c \
	ft_put_nbr_upper.c \
	ft_put_point_hexa.c \
	ft_put_unsig_dec.c \
	ft_putchar.c \
	ft_putnbr.c \
	ft_putstr.c \

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	@ar rcs $(NAME) $(OBJ)

%.o: %.c
	@cc $(CFLAG) -c $< -o $@

clean:
	@rm -f $(OBJ)
	@echo "OBJ deleted"

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: all, clean, fclean, re, bonus



