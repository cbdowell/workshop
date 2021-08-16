
.SILENT:
.ONESHELL:


init:


clean:
	echo "clean..."

mount:
	echo "mounting..."


eject:


update:


save:
	git add --all
	git commit -m "Update Files"
	git push

#: backup data depos
backups:
	ghq list > data/repos.csv
	dconf dump /com/gexperts/Tilix/ > data/tilix.dconf
	code --list-extensions > data/vscode-extensions.csv

#: show help
help:
	remake --tasks
