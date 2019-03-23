OUTPUTDIR=$(BASEDIR)/public

SSH_HOST=n-mail
SSH_USER=rullmann
SSH_TARGET_DIR=/var/www/ullmann.space/htdocs

ssh_upload:
	rsync --delete -r --cvs-exclude --info=progress2 --rsync-path="sudo rsync" $(OUTPUTDIR)/ $(SSH_USER)@$(SSH_HOST):$(SSH_TARGET_DIR)/

server:
	hugo server -D
