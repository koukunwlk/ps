NAME		= push_swap
LIBFT		= ./libft/libft.a

CC			= clang
CFLAGS		= -Wall -Wextra -Werror -g

RM			= rm -rf


B =		$(shell tput bold)
BLA =	$(shell tput setaf 0)
RED =	$(shell tput setaf 1)
GRE =	$(shell tput setaf 2)
YEL =	$(shell tput setaf 3)
BLU =	$(shell tput setaf 4)
MAG =	$(shell tput setaf 5)
CYA =	$(shell tput setaf 6)
WHI =	$(shell tput setaf 7)
D =		$(shell tput sgr0)
BEL =	$(shell tput bel)
CLR =	$(shell tput el 1)

INCLUDE 	= -I ./include/
PATH_OBJ	= ./objs/
PATH_SRC	= ./srcs/
PATH_FREE	= $(PATH_SRC)free_all/
PATH_INIT	= $(PATH_SRC)init_stack/
PATH_MAIN	= $(PATH_SRC)main_function/
PATH_MOVES	= $(PATH_SRC)moves/
PATH_SORT	= $(PATH_SRC)sort/
PATH_SWAP	= $(PATH_SRC)swap_area/
PATH_VALID	= $(PATH_SRC)validates/
PATH_UTILS	= $(PATH_SRC)utils/

SRCS		= $(PATH_MAIN)push_swap.c\
			  $(PATH_VALID)validate_args.c\
			  $(PATH_VALID)is_sorted.c\
			  $(PATH_INIT)init_stack.c\
			  $(PATH_INIT)populate_stack.c\
			  $(PATH_FREE)free_stack.c\
			  $(PATH_SWAP)pa.c\
			  $(PATH_SWAP)pb.c\
			  $(PATH_SWAP)ra.c\
			  $(PATH_SWAP)rb.c\
			  $(PATH_SWAP)rr.c\
			  $(PATH_SWAP)rra.c\
			  $(PATH_SWAP)rrb.c\
			  $(PATH_SWAP)rrr.c\
			  $(PATH_SWAP)sa.c\
			  $(PATH_SWAP)sb.c\
			  $(PATH_SORT)sort_3.c\
			  $(PATH_SORT)sort_5.c\
			  $(PATH_SORT)sort_n.c\
			  $(PATH_UTILS)find_bigger.c\
			  $(PATH_UTILS)find_lower.c\
			  $(PATH_UTILS)stack_size.c\
			  $(PATH_UTILS)count_moves.c\
			  $(PATH_UTILS)find_bigger_in_group.c\
			  $(PATH_UTILS)ft_abs.c\
			  $(PATH_UTILS)index_sort.c\
			  $(PATH_MOVES)move_to_b.c\
			  $(PATH_MOVES)move_to_a.c\
			  


OBJS		= $(patsubst $(PATH_SRC)%.c, $(PATH_OBJ)%.o, $(SRCS))

all: $(NAME)

$(NAME): $(OBJS) $(LIBFT)
	@$(CC) $(CFLAGS) $(INCLUDE) $(OBJS) $(LIBFT)  -o $(NAME)
	@echo "$(GRE)Push_swap compiled!\n$(D)"

$(PATH_OBJ)%.o: $(PATH_SRC)%.c
	@mkdir -p $(PATH_OBJ)
	@mkdir -p $(PATH_OBJ)free_all/
	@mkdir -p $(PATH_OBJ)init_stack/
	@mkdir -p $(PATH_OBJ)main_function/
	@mkdir -p $(PATH_OBJ)moves/
	@mkdir -p $(PATH_OBJ)sort/
	@mkdir -p $(PATH_OBJ)swap_area/
	@mkdir -p $(PATH_OBJ)validates/
	@mkdir -p $(PATH_OBJ)write_stacks/
	@mkdir -p $(PATH_OBJ)utils/
	@$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $@

$(LIBFT):
	@make -C ./libft
	@echo "$(GRE)\nLibft compiled.$(D)"
clean: 
	@make fclean -C ./libft
	@echo "$(RED)Cleaning libft.$(D)"
	@$(RM) $(PATH_OBJ)
	@echo "$(RED)Cleaning Push_swap objects.$(D)"

fclean: clean
	@$(RM) $(NAME)
	@echo "$(RED)Removing Push_swap binary.$(D)"

re: fclean all