#!/bin/bash
# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 4 -*-
#
# Author of Ubuntu Post Install Script:
#   Sam Hewitt <hewittsamuel@gmail.com>
#
# Adjust to Debian (KDE4) and slovenian language:
# puikonen03ATgmail.com
#
# Description:
#   A post-installation bash script for Debian (KDE)
#
# Legal Preamble:
#
# This script is free software; you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation; version 3.
#
# This script is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
# details.
#
# You should have received a copy of the GNU General Public License along with
# this program; if not, see <https://www.gnu.org/licenses/gpl-3.0.txt>

# širina
tabs 4
clear

#----- FUNKCIJE -----#

dir="$(dirname "$0")"

. $dir/functions/sudo
. $dir/functions/upgrade
. $dir/functions/graphics
. $dir/functions/system
. $dir/functions/speedup
. $dir/functions/favourites
. $dir/functions/fonts
. $dir/functions/printers
. $dir/functions/samba
. $dir/functions/webbrowser
. $dir/functions/thunderbird
. $dir/functions/libreoffice
. $dir/functions/yakuake
. $dir/functions/dropbox
. $dir/functions/screenfetch
. $dir/functions/fortunes
. $dir/functions/texlive
. $dir/functions/rootactions
. $dir/functions/backup
. $dir/functions/cleanup




#----- OBVESTILA -----#

show_error() {
echo -e "\033[1;31m$@\033[m" 1>&2
}

show_info() {
echo -e "\033[1;32m$@\033[0m"
}

show_warning() {
echo -e "\033[1;33m$@\033[0m"
}

show_question() {
echo -e "\033[1;34m$@\033[0m"
}

show_success() {
echo -e "\033[1;35m$@\033[0m"
}

show_header() {
echo -e "\033[1;36m$@\033[0m"
}

show_listitem() {
echo -e "\033[0;37m$@\033[0m"
}

#----- GLAVNA FUNKCIJA -----#


function main {
echo ''
show_question 'Kaj bi rad naredil? '
echo ''
show_listitem '1. Namestil bom SUDO.'
show_listitem '2. Posodobil bom sistem in ga nadgradil.'
show_listitem '3. Namestil bom gonilnike za grafično kartico.'
show_listitem '4. Namestil bom sistemske pripomočke in kodeke.'
show_listitem '5. Pohitril bom sistem.'
show_listitem '6. Namestil bom dodatne KDE programe.'
show_listitem '7. Izboljšal bom glajenje fontov.'
show_listitem '8. Namestil bom gonilnike in pripomočke za tiskalnike.'
show_listitem '9. Namestil bom SAMBO.'
show_listitem '10. Namestil bom spletni brskalnik.'
show_listitem '11. Namestil bom Thunderbird.'
show_listitem '12. Namestil bom LibreOffice s pomočjo Debian Backports.'
show_listitem '13. Namestil bom Yakuake.'
show_listitem '14. Namestil bom Dropbox.'
show_listitem '15. Namestil bom Screenfetch.'
show_listitem '16. Namestil bom Fortunes.'
show_listitem '17. Namestil bom TexLive.'
show_listitem '18. Namestil bom RootActions.'
show_listitem '19. Obnovil bom nastavitve iz backup.tar.gz.'
show_listitem '20. Počistil bom sistem.'
show_listitem 'q. Quit?'
echo ''
show_question 'Vnesi svoj izbor :' && read REPLY
case $REPLY in
    1) sudo;; # Nastavi sudo 
	2) upgrade;; # Nadgradnja sistema 
	3) clear && graphics;; # Gonilniki za grafično kartico	
    4) clear && system;; # Sistemski pripomočki in kodeki 
    5) clear && speedup;; # Pohitritev sistema 
    6) clear && favourites;; # KDE programi 
    7) clear && fonts;; # Glajenje fontov 
    8) clear && printers;; # Tiskalniki 
    9) clear && samba;; # SAMBA 
    10) clear && webbrowser;; # Spletni brskalnik 
	11) clear && thunderbird;; # Thunderbird 
	12) clear && libreoffice;; # LibreOffice 
    13) clear && yakuake;; # Yakuake 
    14) clear && dropbox;; # Dropbox 
	15) clear && screenfetch;; # Screenfetch	
	16) clear && fortunes;; # Fortunes 
	17) clear && texlive;; # TexLive 
	18) clear && rootactions;; # Rootactions 
	19) clear && backup;; # Obnovitev nastavitev iz backupa 	
    20) clear && cleanup;; # Čiščenje sistema
    [Qq]* ) echo '' && quit;; # Konec
    * ) clear && show_error '\aNapačen izbor, poskusi znova.' && main;;
esac
}


function quit {
show_question 'Ali želiš končati? (D)a, (N)e : ' && read REPLY
case $REPLY in
    [Dd]* ) exit 99;;
    [Nn]* ) clear && main;;
    * ) clear && show_error 'Oprosti, poskusi znova.' && quit;;
esac
}

# KONEC NASTAVITEV FUNKCIJ IN OBVESTIL




#################################################################################################################################################################################
#################################################################################################################################################################################
#################################################################################################################################################################################

# ----- LOGO -----#


echo ''
echo -e "  \033[0m\033[1;37m               _,met\$\$\$\$\$gg.           "
echo -e "  \033[0m\033[1;37m            ,g\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$P.       "
echo -e "  \033[0m\033[1;37m          ,g\$\$P\"\"       \"\"\"Y\$\$.\".     "
echo -e "  \033[0m\033[1;37m         ,\$\$P'              \`\$\$\$.     "
echo -e "  \033[0m\033[1;37m       '',\$\$P       ,ggs.     \`\$\$b:   "
echo -e "  \033[0m\033[1;37m       '\`d\$\$'     ,\$P\"\'   \033[0m\033[1;31m.\033[0m\033[1;37m   \$\$\$    "
echo -e "  \033[0m\033[1;37m         \$\$P      d\$\'     \033[0m\033[1;31m,\033[0m\033[1;37m   \$\$P    "
echo -e "  \033[0m\033[1;37m         \$\$:      \$\$.   \033[0m\033[1;31m-\033[0m\033[1;37m   ,d\$\$'    "
echo -e "  \033[0m\033[1;37m         \$\$\;      Y\$b._   _,d\$P'     "
echo -e "  \033[0m\033[1;37m         Y\$\$.    \033[0m\033[1;31m\`.\033[0m\033[1;37m'\`\"Y\$\$\$\$P\"'         "
echo -e "  \033[0m\033[1;37m         \`\$\$b      \033[0m\033[1;31m\"-.__              "
echo -e "  \033[0m\033[1;37m          \`Y\$\$                        "
echo -e "  \033[0m\033[1;37m           \`Y\$\$.                      "
echo -e "  \033[0m\033[1;37m             \`\$\$b.                    "
echo -e "  \033[0m\033[1;37m               \`Y\$\$b.                 "
echo -e "  \033[0m\033[1;37m                  \`\"Y\$b._             "
echo -e "  \033[0m\033[1;37m                      \`\"\"\"\"           "
echo -e "                                "
echo ''
show_header '#--------------------------------------------------------------------------#'
show_header '#                        Debian Post-Install Script                        #'
show_header '#                              version: 1.00                               #'
show_header '#          Avtor skripte - Ubuntu Post Install Script: Sam Hewitt          #'
show_header '#          Prevedel in prilagodil za Debian (KDE4): Franc Žganjar          #'
show_header '#--------------------------------------------------------------------------#'

echo -e "\n\n"
##################








# ----- ZAČETEK -----#

if [[ $EUID -ne 0 ]]; then
   show_warning 'Poženi skripto kot root!' 
   exit 1
fi


show_question 'Vnesi svoje uporabniško ime :\n\n ' && read UPORABNIK



show_question 'Vnesi naslov spletne strani, kjer imaš shranjene backup.tar.gz, stili.tar.gz, WindowsFonts.tar.gz in chucknorris.tar.gz:\n\n' && read WebSite


show_question 'Vnesi kodno ime nameščenega Debian sistema:\n\n' && read CODENAME

clear 







#----- ZAGON GLAVNE SKRIPTE -----#
main

#----- KONEC GLAVNE SKRIPTE -----#








reboot

# ----- KONEC -----#



#################################################################################################################################################################################
#################################################################################################################################################################################
#################################################################################################################################################################################
