CC := gcc
FLAGS := -g -std=c11 -Wall -Werror -fsanitize=address

BUILD_DIR := build

APP := $(BUILD_DIR)/server

$(APP): main.c
	mkdir -p $(BUILD_DIR)
	gcc $(FLAGS) -o $@ $<

.PHONY: build run clean

build: $(APP)

run: $(APP)
	./$(APP)

clean:
	rm -rf $(BUILD_DIR)