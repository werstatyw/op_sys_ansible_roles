echo "first we are installing the role:"
ansible-galaxy role install -r requirements_apache2.yml
echo "then we'll run playbook"
ansible-playbook -i ansible@linsrv, playbook_apache2.yml -kK