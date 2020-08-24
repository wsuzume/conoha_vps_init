EDITOR=vim
TRUE_INVENTORY=~/config/conoha_vps

copy_inventory:
	./script/copy_inventory.sh ${TRUE_INVENTORY}

.SILENT:
true_inventory:
	echo ${TRUE_INVENTORY}

playbook:
	ansible-playbook -i inventory/conoha_vps playbook.yml
