NAME		= placeholder
CC			= cc
CFLAGS		= -Wall -Wextra -Werror -fsanitize=address #-g

SRC_DIR = sources
HDR_DIR = headers
OBJ_DIR = objects

SOURCES = $(addprefix $(SRC_DIR)/, main.c)
HEADERS = $(addprefix $(HDR_DIR)/, placeholder.h)
OBJECTS = $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SOURCES))

LIBFT_DIR	= libft
LIBFT		= $(LIBFT_DIR)/libft.a

# ================================== RULES =================================== #

all: $(NAME)

$(NAME): $(OBJECTS) $(LIBFT) Makefile
	@echo "\n==> Linking $(NAME)..."
	@$(CC) $(CFLAGS) $(OBJECTS) $(LIBFT) -o $(NAME)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c $(HEADERS)
	@echo " -> Compiling $<"
	@mkdir -p $(OBJ_DIR)
	@$(CC) $(CFLAGS) -c $< -o $@

$(LIBFT):
	@echo "\n==> Building Libft..."
	@$(MAKE) -C $(LIBFT_DIR)

clean:
	@echo "\n==> Cleaning project..."
	@$(MAKE) -s clean -C $(LIBFT_DIR)
	@rm -rf $(OBJ_DIR)

fclean: clean
	@echo "\n==> Full clean..."
	@$(MAKE) -s fclean -C $(LIBFT_DIR)
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
