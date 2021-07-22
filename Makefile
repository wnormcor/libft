NAME = libft.a

SRC  = 	ft_memset_bzero.c ft_memfunc.c ft_strl.c ft_strchr.c ft_strn.c \
		ft_atoi.c ft_is.c ft_to.c ft_calloc_strdup.c \
		ft_sec_str.c ft_sec_put.c ft_sec_itoa.c ft_sec_split.c

OBJ  = 	ft_memset_bzero.o ft_memfunc.o ft_strl.o ft_strchr.o ft_strn.o \
		ft_atoi.o ft_is.o ft_to.o ft_calloc_strdup.o \
		ft_sec_str.o ft_sec_put.o ft_sec_itoa.o ft_sec_split.o

SRCBONUS = ft_bonus_one.c ft_bonus_two.c

OBJBONUS = ft_bonus_one.o ft_bonus_two.o

all: $(NAME)

$(OBJ):
	@gcc -Wall -Wextra -Werror -c $(SRC)
	@echo OBJ: Sources for 1 and 2 part had been compiled in .o files

$(OBJBONUS):
	@gcc -Wall -Wextra -Werror -c $(SRCBONUS)
	@echo OBJBONUS: Sources for BONUS part had been compiled in files $(OBJBONUS)

$(NAME): $(OBJ)
	@ar rcs $(NAME) $(OBJ)
	@echo LIBNAME: Library $(NAME) for 1 and 2 part has been created with object-file index

bonus: $(OBJBONUS)
	@ar rcs $(NAME) $(OBJBONUS)
	@echo BONUS: In library $(NAME) BONUS part has been added with object-file index

clean:
	@rm -f $(OBJ) $(OBJBONUS)
	@echo CLEAN: Objects files .o had been cleaned

fclean: clean
	@rm -f $(NAME)
	@echo FCLEAN: Library $(NAME) has been cleaned

re: fclean all
	@echo RE: fclean and make all completed

.PHONY: all clean fclean re