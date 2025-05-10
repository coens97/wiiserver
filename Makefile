CC = gcc

TARGET = wiiserver

all: $(TARGET)

$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) -o bin/$(TARGET) $(TARGET).c

clean:
	$(RM) bin/$(TARGET)