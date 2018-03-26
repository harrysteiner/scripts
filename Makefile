install : vimstuff_install rights_install_usbdevices 
	cp bash_aliases ~/.bash_aliases

clean : vimstuff_clean rights_clean_usbdevice
	rm -f ~/.bash_aliases

gdbformatter_install:
	mkdir ~/.gdbinit_sources && cp ./.gdbinit_sources/qt.py ~/.gdbinit_sources/qt4.py
	cp ./.gdbinit ~/.gdbinit

gdbformatter_clean:
	rm -rf ~/.gdbinit_sources
	rm -f ~/.gdbinit

vimstuff_install :
	cp ./.vimrc ~/.vimrc
	mkdir -p ./.vim/syntax
	cp ./.vim/syntax/log.vim ~/.vim/syntax/log.vim

vimstuff_clean :
	rm -f ~/.vimrc
	rm -f ~/.vim/syntax/log.vim

rights_install_usbdevices:
	sudo cp ./etc/udev/rules.d/50-myusb.rules /etc/udev/rules.d/50-myusb.rules
	sudo udevadm control --reload


rights_clean_usbdevice:
	sudo rm -f /etc/udev/rules.d/50-myusb.rules
	sudo udevadm control --reload

