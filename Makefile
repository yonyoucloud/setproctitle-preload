CFLAGS=-Werror -fPIC -shared -ldl

TARGET=preload_setproctitle.so

.PHONY: all clean

all:
	$(CC) $(CFLAGS) -o $(TARGET) preload_setproctitle.c
	chmod 644 $(TARGET)

clean:
	rm -f $(TARGET)
