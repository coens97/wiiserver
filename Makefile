CC = gcc

TARGET = wiiserver

all: $(TARGET) $(TARGET)-wii

$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) -o bin/$(TARGET) $(TARGET).c

$(TARGET)-wii: $(TARGET).c
	$(CC) $(CFLAGS) -o bin/$(TARGET)-wii $(TARGET).c --target=powerpc--netbsd

clean:
	$(RM) bin/$(TARGET) bin/$(TARGET)-wii