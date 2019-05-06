.PHONY: clean all
DIR:=.
OUT_FILE:=my_bash

all : 
	gcc HocjLinux.c -o $(OUT_FILE)
	$(DIR)/$(OUT_FILE) test_bash.sh helo helo2 123
	sudo cp $(OUT_FILE) /usr/bin/$(OUT_FILE)

clean:
	rm $(OUT_FILE)
	sudo rm /usr/bin/$(OUT_FILE)

