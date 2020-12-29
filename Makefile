SRC := $(wildcard *.c)
OBJ := $(SRC:%.c=%.o)

CC := gcc
LIB := -lpthread
CFLAGS := -g

TARGET := lcps

$(TARGET):$(OBJ)
	$(CC) $(CFLAGS) -o $@ $^ $(LIB)

.PHONY : clean 

clean:
	@rm -f $(OBJ)
	@rm -f $(TARGET)


