<div align="center">
<h1> comment utiliser le serveur vsftpd avec docker </h1>

#### *Fait par Samuel et Chris*
#### *420H64RO serveur local 3*
#### *13 octobre 2021*
---
![rosemont](https://upload.wikimedia.org/wikipedia/fr/thumb/e/e2/Logo_college_rosemont_nouveau.png/179px-Logo_college_rosemont_nouveau.png)
 ---
 ## Sur la Machine Physique:
*Premierement on installe vsftpd :* __sudo apt install vsftpd -y__

*deuxiemement on installe filezilla :* __sudo apt install filezilla -y__  

*on se deplace dans le dossier quon a creer avec* ->  __mkdir -p 420H64RO_ft__

 **cd 420H64RO_ftp/** -> *on se deplace dans le repertoire creer*

**sudo docker build . -t ubuntu:vsftpd**  -> *on creer l'image avec le code du fichier Docker et on fait un tag*

**sudo docker images** -> *on affiche les images disponible dans le docker*  

**sudo docker run -d -it --name tp1_chris_et_samuel id_de_l’image** -> *on met en cours l'image en mettant un nom*

**sudo docker container ls -a** -> *pour lister les containers disponibles*

**sudo docker exec -it tp1_chris_et_samuel bash** -> *pour executer l'image lancer auparavant et se deplacer dans la machine*

## Dans le conteneur:
 
**systemctl start vsftpd**  
**systemctl status vsftpd**  
**ifconfig**  

## Finalement, sur la machine physique il faut:
Aller dans ftp et connecter vous avec adresse ip de l'interface eth0 en bridge avec* **filezilla** *en verifiant les informations avec ifconfig  
*Dans l'application filezilla*
*Dans host ; il faut rajouter ip de l'interface eth0.* Par Exemple : 172.17.0.2,  
*L'identifiant(username) par default est :* "ftpuser" *et le mot de passe c'est* "ftpuser"  
*Ainsi, apres avoir fait quickconnect, vous serez redigez dans le dossier* **/home/ftpuser/ftp/**  
*Vous devez deposer vos fichiers dans le repertoire* **/home/ftpuser/ftp/files**  

</div>
