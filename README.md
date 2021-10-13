<h1> comment utiliser le serveur vsftpd avec docker <h1>
  
## Fait par Samuel et Chris
## 420H64RO serveur local 3


## Sur Machine Phisique:
Premierement on installe vsftpd : **sudo apt install vsftpd -y**  
deuxiemement on installe filezilla : **sudo apt install filezilla -y**  
se deplacer dans le dossier quon a creer avec **mkdir -p 420H64RO_ft**
**cd 420H64RO_ftp/**  on se deplace dans le repertoire creer
**sudo docker build . -t ubuntu:vsftpd**  on creer l'image avec le code du fichier Docker et on fait un tag
**sudo docker images** pour afficher les images disponible dans le docker  
**sudo docker run -d -it --name tp1_chris_et_samuel id_de_l’image** on met en cours l'image en mettant un nom
**sudo docker exec -it tp1_chris_et_samuel bash**  finalement on execute avec le nom creer auparavant

## Dans le conteneur:
**systemctl start vsftpd**  
**systemctl status vsftpd**  
**ifconfig**  

## Finalement, sur la machine physique il faut:
Aller dans ftp et connecter vous avec adresse ip de l'interface eth0 en bridge avec filezilla en verifiant les informations avec ifconfig  
Dans host ; il faut rajouter ip de l'interface eth0. Par Exemple : 172.17.0.2,  
l'identifiant(username) par default est : "ftpuser" et le mot de passe c'est "ftpuser"  
Ainsi, apres avoir fait quickconnect, vous serez redigez dans le dossier /home/ftpuser/ftp/  
vous devez deposer vos fichiers dans le repertoire /home/ftpuser/ftp/files  

![rosemont](![image](https://user-images.githubusercontent.com/81458826/137175416-c82ff760-55da-4559-89ac-b8b119c71f72.png))
