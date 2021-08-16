
.SILENT:
.ONESHELL:

-include .env
export


#: initialize workshop
init:
	echo "init..."


#: clean workshop artifacts
clean:
	echo "clean..."


#: mount workshop paths
mount:
	echo "mounting..."


#: eject workshop mounts
eject:
	echo "injecting..."


#: update workshop changes
update:
	echo "updating..."


#: save workshop changes
save:
	git add --all
	git commit -m "Update Files"
	git push


#: dump workshop data
dumps:
	ghq list                        > data/txt/repos
	dconf dump /com/gexperts/Tilix/ > data/ini/tilix
	code --list-extensions          > data/txt/vscode
	pacman -Qne                     > data/txt/pacman


#: load workshop data
load:
	ghq import                      < data/txt/repos
	dconf load /com/gexperts/Tilix/ < data/ini/tilix
	code --list-extensions          > data/txt/vscode


#: show workshop tasks
help:
	remake --tasks
