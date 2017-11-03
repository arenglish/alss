CFLAGS = -O
CC = g++
alss.cpp SRC = pid/pid_controller.cpp
OBJ = $(SRC:.cpp = .o)
PidController: $(OBJ)
	$(CC) $(CFLAGS) -o PidController $(OBJ)
clean:
	rm -f core *.o 