
# Compiler and flags.
# ==========================================================
CXX = g++
CXX_FLAGS = -g -Wall -Wformat


# Project directories.
# ==========================================================
BIN_DIR = ./bin/
SRC_DIR = ./src/
OBJ_DIR = ./obj/

SRC_FILES = $(wildcard ${SRC_DIR}/*.cpp) $(wildcard ${SRC_DIR}/*/*.cpp)
OBJ_FILES = $(patsubst $(SRC_DIR)/%.cpp, $(OBJ_DIR)/%.o, $(SRC_FILES))


# Setup for `Dear IamGUI` & `SDL 2.0` dependencies.
# ==========================================================
CXX_FLAGS += `sdl2-config --libs`
CXX_FLAGS += -I./dep/
CXX_FLAGS += -I./dep/ImGui/include
CXX_FLAGS += ./dep/ImGui/obj/imgui.o


# Executable name.
# ==========================================================
EXEC = OpenPaint


# Make rules.
# ==========================================================
main: setup ${OBJ_FILES}
	${CXX} ${CXX_FLAGS} ${OBJ_FILES} -o ${BIN_DIR}${EXEC}

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	${CXX} ${CXX_FLAGS} -c -o $@ $<

setup:
	mkdir -p obj obj/ui bin

cleanup:
	rm -f ${EXEC}
	rm -rf ${OBJ_DIR}/*

run: main
	./${BIN_DIR}${EXEC}