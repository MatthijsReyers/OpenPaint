
CXX = g++

CXX_FLAGS = `pkg-config --cflags --libs gtkmm-3.0`
CXX_FLAGS += -g -Wall -Wformat

BIN_DIR = ./bin/
SRC_DIR = ./src/
OBJ_DIR = ./obj/
LIB_DIR = ./lib/

SRC_FILES = $(wildcard ${SRC_DIR}/*.cpp) $(wildcard ${SRC_DIR}/*/*.cpp)
OBJ_FILES = $(patsubst $(SRC_DIR)/%.cpp, $(OBJ_DIR)/%.o, $(SRC_FILES))

EXEC = OpenPaint

main: setup ${OBJ_FILES}
	${CXX} ${CXX_FLAGS} ${OBJ_FILES} -o ${BIN_DIR}${EXEC}

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	${CXX} ${CXX_FLAGS} -c -o $@ $<

setup:
	mkdir -p obj obj/ui bin

cleanup:
	rm ${EXEC}
	rm -r ${OBJ_DIR}/*

run:
	./${EXEC}