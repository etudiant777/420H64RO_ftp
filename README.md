***
<div align="center">
<h1> Comment utiliser le serveur vsftpd avec Docker </h1>

#### *Fait par Samuel et Chris*
#### *420H64RO serveur local 3*
#### *13 octobre 2021*
---
![rosemont](https://upload.wikimedia.org/wikipedia/fr/thumb/e/e2/Logo_college_rosemont_nouveau.png/179px-Logo_college_rosemont_nouveau.png)
 ***
 
 ## Sur la Machine Physique :
*Premierement on installe vsftpd :*  ->    __sudo apt install vsftpd -y__

*Deuxiemement on installe filezilla :* __sudo apt install filezilla -y__  

*On creer un dossier qui sera notre repertoire de travail :*  ->   __mkdir -p 420H64RO_ft__

*On se deplace dans le repertoire creer :*  ->  **cd 420H64RO_ftp/**  *

*On creer l'image avec le code du fichier Docker et on fait un tag :*  ->  **sudo docker build . -t ubuntu:vsftpd** 

*Pour lister les images disponible dans le docker :*  ->  **sudo docker images** 
 
*On met en cours l'image en mettant un nom :*  ->  **sudo docker run -d -it --name tp1_chris_et_samuel id_de_l’image** 

*Pour lister les containers disponibles :*  ->  **sudo docker container ls -a** 
 
*pour executer l'image lancer auparavant et se deplacer dans la machine :*  -> **sudo docker exec -it tp1_chris_et_samuel bash**  

---
## Dans le conteneur :
*On active et on verifie l'etat du serveur ftp avec cette commande*

**systemctl start vsftpd**  
 
**systemctl status vsftpd** 
 
*On verifie l'adresse ip avec cette commande*
 
**ifconfig**  

---
## Finalement, sur la machine physique il faut :
*Aller dans ftp et connecter vous avec adresse ip de l'interface eth0 en bridge avec* **filezilla** *en verifiant les informations avec **ifconfig** .*  
*Dans l'application filezilla*
*Dans host ; il faut rajouter ip de l'interface **eth0** ou **docker0** obtenu par la commande ifconfig.* Par Exemple : **172.17.0.2**  
*L'identifiant(**username**) par default est :* **"ftpuser"** *et le mot de passe(**password**) c'est* **"ftpuser"**  
*Ainsi, apres avoir fait **quickconnect**, vous serez redigez dans le dossier* **/home/ftpuser/ftp/**  
*Vous devez deposer vos fichiers dans le repertoire* **/home/ftpuser/ftp/files**  
*Et voilà le tour est joué!!!*
 
 ---

Rendez-vous sur ce site pour plus d'information sur la configuration du fichier vsftpd.conf : 

[site de ftp*1* avec configuration ssl](https://websiteforstudents.com/install-and-configure-vsftpd-on-ubuntu-20-04-18-04)

[site de ftp*2* avec configuration ssl](https://linoxide.com/install-vsftpd-with-ssl-tls-on-ubuntu-20-04/)
</div>
