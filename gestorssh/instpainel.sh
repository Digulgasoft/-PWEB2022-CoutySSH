#!/bin/bash
clear
echo "America/Sao_Paulo" > /etc/timezone
ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime > /dev/null 2>&1
dpkg-reconfigure --frontend noninteractive tzdata > /dev/null 2>&1
clear
echo -e "\E[44;1;37m    INSTALAR PAINEL PWEB GESTOR-SSH     \E[0m" 
echo ""
echo -e "                 \033[1;31mBy @nandoslayer\033[1;36m"
echo ""
echo -ne "\n\033[1;32mDE UM ENTER PARA \033[1;33mCONTINUAR...\033[1;37m: "; read -r
clear
echo -e "\n\033[1;36mINICIANDO INSTALAÇÃO \033[1;33mAGUARDE..."
apt-get install figlet -y > /dev/null 2>&1
rm /bin/pweb > /dev/null 2>&1
sleep 5
cd /bin || exit
wget https://github.com/CoutySSH/PWEB2022/raw/ntech/gestorssh/pweb > /dev/null 2>&1
chmod 777 pweb > /dev/null 2>&1
clear
mkdir /bin/ppweb > /dev/null 2>&1
cd /bin/ppweb || exit
rm *.sh > /dev/null 2>&1
wget https://github.com/CoutySSH/PWEB2022/raw/ntech/gestorssh/install.sh > /dev/null 2>&1
wget https://github.com/CoutySSH/PWEB2022/raw/ntech/gestorssh/ubuinst.sh > /dev/null 2>&1
wget https://github.com/CoutySSH/PWEB2022/raw/ntech/gestorssh/senharoot.sh > /dev/null 2>&1
wget https://github.com/CoutySSH/PWEB2022/raw/ntech/gestorssh/restbanco.sh > /dev/null 2>&1
wget https://github.com/CoutySSH/PWEB2022/raw/ntech/gestorssh/restbanco18.sh > /dev/null 2>&1
wget https://github.com/CoutySSH/PWEB2022/raw/ntech/gestorssh/empresa.sh > /dev/null 2>&1
wget https://github.com/CoutySSH/PWEB2022/raw/ntech/gestorssh/updatepainel.sh > /dev/null 2>&1
wget https://github.com/CoutySSH/PWEB2022/raw/ntech/gestorssh/updatepainel18.sh > /dev/null 2>&1
wget https://github.com/CoutySSH/PWEB2022/raw/ntech/gestorssh/updatepainelarm.sh > /dev/null 2>&1
wget https://github.com/CoutySSH/PWEB2022/raw/ntech/gestorssh/updatepainelarm18.sh > /dev/null 2>&1
chmod 777 *.sh > /dev/null 2>&1
clear
echo -e "        \033[1;33m • \033[1;32mINSTALAÇÃO CONCLUÍDA\033[1;33m • \033[0m"
echo ""
echo -e "\033[1;31m \033[1;33mCOMANDO PRINCIPAL: \033[1;32mpweb\033[0m"
echo -e "\033[1;33m MAIS INFORMAÇÕES \033[1;31m(\033[1;36mTELEGRAM\033[1;31m): \033[1;37m@nandoslayer\033[0m"
cat /dev/null > ~/.bash_history && history -c
exit