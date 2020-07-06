
CXX = g++
CXX_FLAGS = -g -Wall -Wformat

SRC_DIR = ./src/
OBJ_DIR = ./obj/

SRC_FILES = $(wildcard ${SRC_DIR}/*.cpp) $(wildcard ${SRC_DIR}/*/*.cpp)
OBJ_FILES = $(patsubst $(SRC_DIR)/%.cpp, $(OBJ_DIR)%.o, $(SRC_FILES))

main: setup ${OBJ_FILES}

$(OBJ_DIR)%.o: $(SRC_DIR)/%.cpp
	${CXX} ${CXX_FLAGS} -c -o $@ $<

setup:
	mkdir -p obj

cleanup:
	rm -rf ${OBJ_DIR}/*