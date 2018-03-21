install : vimstuff_install rights_install_usbdevices
	cp bash_aliases ~/.bash_aliases

vimstuff_install :
	cp ./.vimrc ~/.vimrc
	mkdir -p ./.vim/syntax
	cp ./.vim/syntax/log.vim ~/.vim/syntax/log.vim

vimstuff_clean :
	rm ~/.vimrc
	rm ~/.vim/syntax/log.vim

rights_install_usbdevices:
	sudo cp ./etc/udev/rules.d/50-myusb.rules /etc/udev/rules.d/50-myusb.rules
	sudo udevadm control --reload


rights_clean_usbdevices:
	sudo rm /etc/udev/rules.d/50-myusb.rules
	sudo udevadm control --reload

clean : vimstuff_clean rights_clean_usbdevice
	rm -f ~/.bash_aliases
