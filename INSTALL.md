# Guide d'installation 

## Machines requises

 1 un serveur Debian 12
   - Nom : SRVLX01
   - Compte : root
   - Mot de passe : Azerty1*
   - Adresse IP fixe : 172.16.10.10/24

 
 2 un client Ubuntu 22.04 LTS
   - Nom : CLILIN01
   - Compte : wilder (dans le groupe sudo)
   - Mot de passe : Azerty1*
   - Adresse IP fixe : 172.16.10.30/24
     
 3 un serveur Windows server
   - Nom : SRVWIN01
   - Compte : Administrator (dans le groupe des admins locaux)
   - Mot de passe : Azerty1*
   - Adresse IP fixe : 172.16.10.5/24
     
 4 un client Windows 10 
   - Nom : CLIWIN01
   - Compte : wilder (dans le groupe sudo)
   - Mot de passe : Azerty1*
   - Adresse IP fixe : 172.16.10.20/24


# Configuration réseau 

Pour le projet , toutes les machines doivent être sur le même réseau .
Pour se faire nous avons choisi de configurer 2 cartes réseaux par machines , la 1er en automatique , configuré en pont et la 2eme en IP fixe configuré en réseau internet

 1 Configuration adresse IP fixe 

 Pour les machines Debian/Ubuntu:
 
 1 Ouvrir le fichier de configuration interfaces

  `sudo nano /etc/network/interfaces`
  
