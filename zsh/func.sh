# shell fuctions library
# find what's new in a directory
lsnew() { ls -lt ${1+"$@"} | head -20; }

#Usage: put_key servername
# put rsa key to server
function put_key(){
   if [ ! -s ~/.ssh/id_rsa.pub  ]
      then
         ssh-keygen -t rsa
   fi
   cat ~/.ssh/id_rsa.pub | ssh $1 'sh -c "cat - >> ~/.ssh/authorized_keys"'
}

# Usage: gbk2utf8 gbkfile utf8file
# gbk to utf8 encoding
gbk2utf8 ()
{
    iconv -f gbk -t utf8 $1 -o $2
}


# Usage: ii
# show infomation
function ii(){

RED='\e[1;31m'
BLUE='\e[1;34m'
CYAN='\e[1;36m'
NC='\e[0m'
    clear

    echo -e "\nYou are logged on ${RED}$HOSTNAME"
    echo -e "\nAdditional information:$NC " ; uname -a
    echo -e "\n${RED}Users logged on:$NC " ; w -h
    echo -e "\n${RED}Current date :$NC " ; date
    echo -e "\n${RED}Machine stats :$NC " ; uptime
    echo -e "\n${RED}Memory stats :$NC " ; free -m
    echo -e "\n${RED}Disk usage :$NC " ; df -lh
    echo -e "\n${RED}Local IP Address :$NC" ; /sbin/ifconfig eth0 | awk '/inet/
{ print $2 } ' | sed -e s/addr://
    echo -e "-------------------------------------------------------------\n"
}

# Usage: se(simple-extract) <file>
# Description: extracts archived files (maybe)
se ()
{
    if [ -f $1 ]; then
        case $1 in
            *.tar.bz2)  tar -jxvf $1        ;;
            *.tar.gz)   tar -xvzf $1        ;;
            *.bz2)      bzip2 -d $1         ;;
            *.gz)       gunzip -d $1        ;;
            *.tar)      tar -xvf $1         ;;
            *.tgz)      gunzip -d $1        ;;
            *.zip)      unzip $1            ;;
	    *.rar)      unrar x $1          ;;
            *.Z)        uncompress $1       ;;
            *)          echo "'$1' Error. Please go away" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}
