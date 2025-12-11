#!/bin/bash
versao="4.2.4"
clear
echo " _____               _          _    _    ____  _____  "
echo "|_   _|             | |v$versao "' | |/\| |/\|  _ \|  __ \ '
echo '  | |  ___ ___  __ _| |__   ___| |\ ` ´ /| |_) | |__) |'
echo "  | | / __/ __|/ _\` | '_ \ / _ \ |_     _|  _ <|  _  /"
echo ' _| |_\__ \__ \ (_| | |_) |  __/ |/ , . \| |_) | | \ \ '
echo '|_____|___/___/\__,_|_.__/ \___|_|\/|_|\/|____/|_|  \_\'
echo "======================================================="
echo "Patch Brasileiro para Issabel5"
echo "Fork da Ibinetwork Informática - Spiral Soluções"
echo "https://spiralsolucoes.com"
echo "======================================================="
echo ""
echo "Contribuição da Comunidade"
echo "Grupo Telegram http://t.me/issabelbr"
sleep 20
echo ""
echo "INICIANDO O PROCESSO..."
echo ""
echo "Instalando ferramentas úteis..."
echo ""
yum install wget git mtr vim mlocate nmap tcpdump mc nano lynx rsync minicom screen htop subversion yum-utils p7zip p7zip-plugins -y
updatedb
echo ""
echo "Atualizando o sistema..."
echo ""
git clone https://github.com/felipeortiz21/IssabelBr-5.git /usr/src/IssabelBR
yum -y update && yum -y upgrade
echo ""
echo "Instalando patch de idiomas, cdr e bilhetagem..."
echo ""
#cp /var/www/html/modules/billing_report/index.php /var/www/html/modules/billing_report/index.php.bkp
#cp /var/www/html/modules/cdrreport/index.php /var/www/html/modules/cdrreport/index.php.bkp
rsync --progress -r /usr/src/IssabelBR/web/ /var/www/html/
echo ""
echo "Instalando audio em Português Brasil"
echo ""
rsync --progress -r -u /usr/src/IssabelBR/audio/ /var/lib/asterisk/sounds/
#sed -i '/language=pt_BR/d' /etc/asterisk/sip_general_custom.conf
#echo "language=pt_BR" >> /etc/asterisk/sip_general_custom.conf
#sed -i '/language=pt_BR/d' /etc/asterisk/iax_general_custom.conf
#echo "language=pt_BR" >> /etc/asterisk/iax_general_custom.conf
#sed -i '/defaultlanguage=pt_BR/d' /etc/asterisk/asterisk.conf
#echo "defaultlanguage=pt_BR" >> /etc/asterisk/asterisk.conf
echo ""
echo "Instalando codec g729"
yum install asterisk-codec-g729 -y
#echo ""
echo "Instalando tratamento Hangup Cause"
echo ""
sed -i '/extensions_tratamento_hangupcause.conf/d' /etc/asterisk/extensions_override_issabel.conf
sed -i '/extensions_tratamento_hangupcause.conf/d' /etc/asterisk/extensions_override_issabel.conf
sed -i '/extensions_tratamento_hangupcause.conf/d' /etc/asterisk/extensions_override_issabelpbx.conf
echo "#include /etc/asterisk/extensions_tratamento_hangupcause.conf" >> /etc/asterisk/extensions_override_issabelpbx.conf
rsync --progress -r /usr/src/IssabelBR/etc/asterisk/ /etc/asterisk/
chown asterisk.asterisk /etc/asterisk/extensions_tratamento_hangupcause.conf
echo ""
chown -R asterisk.asterisk /var/lib/asterisk/agi-bin/*
chown -R asterisk.asterisk /var/lib/asterisk/agi-bin/
echo ""
echo "Instalando sngrep"
echo "" 
rm -Rf /etc/yum.repos.d/irontec.repo
echo '[copr:copr.fedorainfracloud.org:irontec:sngrep]
name=Copr repo for sngrep owned by irontec
baseurl=https://download.copr.fedorainfracloud.org/results/irontec/sngrep/epel-7-$basearch/
type=rpm-md
skip_if_unavailable=True
gpgcheck=1
gpgkey=https://download.copr.fedorainfracloud.org/results/irontec/sngrep/pubkey.gpg
repo_gpgcheck=0
enabled=1
enabled_metadata=1
' > /etc/yum.repos.d/irontec.repo
rpm --import https://download.copr.fedorainfracloud.org/results/irontec/sngrep/pubkey.gpg
yum install sngrep -y
echo ""
wget -O /usr/bin/speedtest-cli https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py
chmod +x /usr/bin/speedtest-cli
echo "REMOVENDO CADASTRO TELA INDEX"
echo ""
sed -i -r 's/666699/33697B/' /var/www/html/modules/pbxadmin/themes/default/css/mainstyle.css
sed -i -r 's/666699/33697B/' /var/www/html/admin/assets/css/mainstyle.css
sed -i '/neo-modal-issabel-popup-box/d' /var/www/html/themes/tenant/_common/index.tpl
sed -i '/neo-modal-issabel-popup-title/d' /var/www/html/themes/tenant/_common/index.tpl
sed -i '/neo-modal-issabel-popup-close/d' /var/www/html/themes/tenant/_common/index.tpl
sed -i '/neo-modal-issabel-popup-content/d' /var/www/html/themes/tenant/_common/index.tpl
sed -i '/neo-modal-issabel-popup-blockmask/d' /var/www/html/themes/tenant/_common/index.tpl
echo ""
echo "ALTERANDO MUSICONHOLD AGENTS"
echo ""
sed -i -r 's/;musiconhold=default/musiconhold=none/' /etc/asterisk/agents.conf
rm -Rf /usr/src/IssabelBR
rm -rf /var/www/html/themes/tenant/images/issabel_logo_pattern.png
sed -i '/\/usr\/local\/sbin\/motd.sh/d' /etc/profile.d/login-info.sh
sed -i '/^#!\/bin\/bash/a printf "\\e[32m\\nSpiralPBX - Callcenter\\n\\n\\e[0m"' /etc/profile.d/login-info.sh
echo "Configurando novo Painel Operador"
echo ""
ACL_DB="/var/www/db/acl.db"
MENU_DB="/var/www/db/menu.db"

echo "== Verificando bancos SQLite =="

if [ ! -f "$ACL_DB" ] || [ ! -f "$MENU_DB" ]; then
    echo "ERRO: Um dos arquivos de banco não existe."
    exit 1
fi

echo "== Adicionando recurso em acl.db =="

sqlite3 "$ACL_DB" <<EOF
INSERT INTO acl_resource (name, description)
SELECT 'control_panel', 'Monitoramento'
WHERE NOT EXISTS (SELECT 1 FROM acl_resource WHERE name='control_panel');
EOF

echo "== Adicionando menu em menu.db =="

sqlite3 "$MENU_DB" <<EOF
INSERT INTO menu (id, IdParent, Link, Name, Type, order_no)
SELECT 'control_panel', 'pbxconfig', '', 'Monitoramento', 'module', 8
WHERE NOT EXISTS (SELECT 1 FROM menu WHERE id='control_panel');
EOF

echo ""
echo "Reiniciando serviços..."
amportal reload
amportal restart
clear
echo " _____               _          _    _    ____  _____  "
echo "|_   _|             | |v$versao "' | |/\| |/\|  _ \|  __ \ '
echo '  | |  ___ ___  __ _| |__   ___| |\ ` ´ /| |_) | |__) |'
echo "  | | / __/ __|/ _\` | '_ \ / _ \ |_     _|  _ <|  _  /"
echo ' _| |_\__ \__ \ (_| | |_) |  __/ |/ , . \| |_) | | \ \ '
echo '|_____|___/___/\__,_|_.__/ \___|_|\/|_|\/|____/|_|  \_\'
echo "======================================================="
echo ""
echo "Patch Brasileiro Instalado."
echo "Participe do grupo Telegram http://t.me/issabelbr"
echo "Colabore você também https://github.com/felipeortiz21/IssabelBr-5"
echo "Obrigado!"
echo ""
echo "** RECOMENDADO REINICIAR O SERVIDOR PARA EXECUTAR NOVO KERNEL E NOVO DAHDI **"
echo ""
