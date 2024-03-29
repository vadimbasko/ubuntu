#disable\enable touchpad 
xinput list | grep Touchpad
xinput disable 12
xinput enable 12

#switch to cli console
# Ctrl Alt F7 \ F1

#delete git local branches
git branch | grep -v "master" | xargs git branch -D

#add script to sudoers
sudo tee -a /etc/sudoers 'MYUSERNAME ALL = NOPASSWD: /path/to/my/program' 

#git logs in pretty format
git log --pretty=format:"%ar%x09%s" --author="Vadim" -n 20 --all

#ubuntu version
lsb_release -a

#package version
apt-cache policy <PACKAGE>


#aliases in ~/.bashrc
echo "# aliases" | tee -a ~/.bashrc
echo "alias gg='gradle'" | tee -a ~/.bashrc

#postgres
 sudo -u postgres psql -U postgres -d <DATABASE>
 sudo -u postgres psql -U postgres -d <DATABASE> -f dump/<DB DUMP>.sql
 
 #reload .bashrc
 . ~/.bashrc
 
 #clean swap
 sudo swapoff -a && sudo swapon -a
 
 #disk usage
 df -h /dev/sda3
 #or
 sudo du -ah | sort -rh | head -n 15
 # with hidden files
 du -sch .[!.]* * | sort -rh | head -n 15
 
 #get memory info
 sudo dmidecode --type 17 





