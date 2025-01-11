# Define build directories
BUILD_DIR = build
OBJ_DIR = $(BUILD_DIR)/obj

# Compiler settings
CC = gcc
CFLAGS = -g -w -Wall
CXXFLAGS = -Ilib -Isrc -Itest
VPATH = lib:src:test
LIB = -lm

# Create build directories if they don't exist
$(shell mkdir -p $(OBJ_DIR) $(BUILD_DIR))



# Main executable construction
main: $(OBJ_DIR)/main.o $(OBJ_DIR)/gpio.o
	$(CC) $(CFLAGS) -o $(BUILD_DIR)/main $(OBJ_DIR)/main.o $(OBJ_DIR)/gpio.o $(LIB)

# GPIO executable construction
gpio: $(OBJ_DIR)/gpio_test.o
	$(CC) $(CFLAGS) -o $(BUILD_DIR)/gpio $(OBJ_DIR)/gpio_test.o $(LIB) 



# Object generation for MAIN
$(OBJ_DIR)/main.o: ./src/main.c
	$(CC) $(CFLAGS) -c ./src/main.c -o $(OBJ_DIR)/main.o $(CXXFLAGS)

# Object generation for GPIO
$(OBJ_DIR)/gpio.o: ./src/gpio.c ./lib/gpio.h
	$(CC) $(CFLAGS) -c ./src/gpio.c -o $(OBJ_DIR)/gpio.o $(CXXFLAGS)
$(OBJ_DIR)/gpio_test.o: ./test/gpio.c ./lib/gpio.h
	$(CC) $(CFLAGS) -c ./test/gpio.c -o $(OBJ_DIR)/gpio_test.o $(CXXFLAGS)



# Clean up the build directories
clean:
	rm -rf $(BUILD_DIR)/*