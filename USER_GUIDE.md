**<p align="center">Guide d'utilisation pour le script bash</p>**  

Ce guide d'utilisation explique les fonctions de ce script une à une, étape par étape.  

Au lancement de script, deux prompts s'affichent à votre écran. L'un vous invite à renseigner une adresse IP, et l'autre vous invite à renseigner un nom d'utilisateur se trouvant sur la machine.  

![0 DemarrageScript](https://github.com/user-attachments/assets/160089dc-e524-4cff-b319-927e0de303c5)  


### I - Brique Action - Utilisateur  
Si votre besoin est d'effectuer une action sur un utilisateur, vous devrez choisir, dans le menu principal, l'option "1 - Action sur utilisateur".  
Le menu suivant s'affichera sur votre écran :  

![I Action sur utilisateur](https://github.com/user-attachments/assets/aeb391ec-2cdf-4ec5-8d0a-5c054f3b8c29)  

**1. Création de compte utilisateur local**  
Pour créer un utilisateur, entrez 1. Un prompt s'affiche, demandant le nom du nouvel utilisateur que vous souhaitez créer.  
![1 Creation utilisateur](https://github.com/user-attachments/assets/e6de76ab-7f95-465e-acd7-d92986d48d97)  


**2. Changement de mot de passe**  
Pour changer le mot de passe d'un utilisateur, entrez 2. Un prompt s'affiche, demandant le nom de l'utilisateur pour lequel vous voulez modifier le mot de passe.  
![2 Changer mot de passe](https://github.com/user-attachments/assets/553845fc-b84e-421e-8012-50fed77deead)  


**3. Suppression de compte utilisateur local**  
Pour supprimer un utilisateur, entrez 3. Un prompt s'affiche, demandant le nom de l'utilisateur que vous souhaitez supprimer.  
![3 Supprimer utilisateur](https://github.com/user-attachments/assets/e534771b-b05b-4588-b76f-57f51d23750f)  


**4. Désactivation de compte utilisateur local**  
Pour désactiver un utilisateur, entrez 4. Un prompt s'affiche, demandant le nom de l'utilisateur à désactiver.  
![4 Desactiver utilisateur](https://github.com/user-attachments/assets/f7143b27-eb69-4731-9b7b-fdffce3e729d)  


**5. Ajout à un groupe d'administration**  
Pour ajouter un utilisateur à un groupe d'administration (sudo), entrez 5. Un prompt s'affiche, demandant le nom de l'utilisateur à ajouter au groupe sudo.  
![5 Ajout a un groupe admin](https://github.com/user-attachments/assets/58bda05c-76bc-4937-aa90-b7745e3c50ec)  


**6. Ajout à un groupe local**  
Pour ajouter un utilisateur à un groupe loca, entrez 6. Un prompt s'affiche, demandant le nom de l'utilisateur à ajouter au groupe local.  
![6 Ajout groupe local](https://github.com/user-attachments/assets/6d123f95-a0a3-45f1-9e18-fb6feab547da)


**7. Sortie d'un groupe local**  
Pour supprimer un utilisateur d'un groupe local, entrez 7. Deux prompts s'affichent. L'un demande le nom de l'utilisateur à supprimer du groupe, l'autre demande le nom du groupe local.  
![7 Retirer groupe local](https://github.com/user-attachments/assets/0185ad5e-fff2-4069-b62d-001be6e0a687)


### II - Brique Action - Ordinateur Client  
Si votre besoin est d'effectuer une action sur un ordinateur client, vous devrez choisir, dans le menu principal, l'option "2 - Action sur ordinateur client".  
Le menu suivant s'affichera sur votre écran :  

![II Action Ordinateur](https://github.com/user-attachments/assets/848175ef-e8d2-471c-8e47-831518910054)

**1. Arrêt**  
Pour arrêter l'ordinateur, entrez 1.  
![8 Arret](https://github.com/user-attachments/assets/c32fbf27-ad9a-486a-ae8a-a43eb7fd9b4b)


**2. Redémarrage**  
Pour redémarrer l'ordinateur, entrez 2.  
![9 Redemarrage](https://github.com/user-attachments/assets/44742292-0838-4a9c-8d9f-980b36accea2)


**3. Verrouillage**  
La fonctionnalité permettant le verrouillage d'une session est en cours de développement.  
![10 Verrouillage](https://github.com/user-attachments/assets/383540a1-e1f8-4729-a05f-eb050f688cd4)


**4. Mise à jour du système**  
Pour mettre à jour le système, entrez 4.  
![11 Mise a jour](https://github.com/user-attachments/assets/a67b7645-7205-4401-a9a5-feb9cc16dd53)  


**5. Création de répertoire**  
Pour créer un répertoire, entrez 5. Un prompt s'affiche, demandant le chemin absolu pour la création du répertoire.  
Il est primordial d'entrer le chemin absolu en partant de la racine, par exemple : /home/utilisateur/Documents.  
Avec ce chemin, le nouveau répertoire sera crée dans le dossier Documents se trouvant dans l'espace personnel de l'utilisateur.  
Un deuxième prompt s'affiche, demandant le nom du dossier à créer.  
![12 Creation de repertoire](https://github.com/user-attachments/assets/d2e58a85-8141-4930-90f3-8b75beb2e787)  


**6. Modification de répertoire**  
Pour modifier les droits sur un répertoire, entrez 6. Un prompt s'affiche, demandant le chemin absolu du répertoire à modifier.  
Un deuxième prompt s'affiche, demandant d'entrer le code pour les modifications des droits (exemple 745).  
![13 Modification repertoire](https://github.com/user-attachments/assets/7dc78517-a626-4805-bc19-bdc5a1b757bc)


**7. Supppression de répertoire**  
Pour supprimer un répertoire, entrez 7. Un prompt s'affiche, demandant le nom du répertoire à supprimer.  
Un deuxième prompt s'affiche, demandant de spécifier le chemin absolu du répertoire à supprimer.  
![14 Suppression de répertoire](https://github.com/user-attachments/assets/af96aa26-b571-47bc-9d02-18d1c0af7cea)  


**8. Prise de main à distance (GUI)**  
La fonctionnalité permettant le prise de main à distance est en cours de développement.  
![15 Prise de main a distance](https://github.com/user-attachments/assets/1d5cbdf8-c634-4e86-b7a7-612e43f40f78)  


**9. Activation du pare-feu**  
Pour activer le pare-feu, entrez 9.  
![16 Activer ufw](https://github.com/user-attachments/assets/39080faa-6bff-4c7d-8c2c-020939ade57f)  


**10. Désactivation du pare-feu**  
Pour désactiver le pare-feu, entrez 10.  
![17 Desactiver ufw](https://github.com/user-attachments/assets/5a97dd5a-37ab-4360-ab65-e7788abaee9d)


**11. Installation de logiciel**  
Pour installer un logiciel, entrez 11. Un prompt s'affiche, demandant la prochaine action à réaliser :  
- entrez 1 pour installer un paquet  : le paquet désiré s'installe  
![18 Installation de logiciel](https://github.com/user-attachments/assets/b54aadef-7be7-4757-b576-2b9f69d78bf7)

- entrez 2 pour rechercher un paquet  :  la recherche du paquet sur le système va se lancer  
![18 1 Installation de logiciel](https://github.com/user-attachments/assets/5952aa6f-09c4-4935-905d-421350b0542d)  


**12. Désinstallation de logiciel**  
Pour désinstaller un logiciel, entrez 12. Un prompt s'affiche, demandant de renseigner le nom du paquet à désinstaller.  
![19 Desinstallation de logiciel](https://github.com/user-attachments/assets/85a4a2ff-2664-4bed-98ab-010543ed0df5)  


**13. Exécution de script sur la machine distante**  
La fonctionnalité permettant l'exécution de script sur machine distante est en cours de développement.  
![20 Execution de script sur la machine distante](https://github.com/user-attachments/assets/a8689872-9686-4e4c-8b77-217e25e64f80)


### III - Brique Information - Utilisateur  
Si votre besoin est d'obtenir une information sur un utilisateur, vous devrez choisir, dans le menu principal, l'option "3 - Information sur utilisateur".  
Le menu suivant s'affichera sur votre écran :  
![III Information utilisateur](https://github.com/user-attachments/assets/116335c3-deb3-49c5-8c16-f0cf480645c5)  


**1. Date de dernière connexion d'un utilisateur**  
La fonction permettant d'obtenir la date de dernière connexion d'un utilisateur est en cours de développement.  
![21 Date derniere connexion](https://github.com/user-attachments/assets/93c8a34b-9c96-4a89-8422-89f63c356bac)  


**2. Date de dernière modification du mot de passe**  
Pour obtenir la date de dernière modification du mot de passe, entrez 2. Un prompt s'affiche, demandant d'entrer un nom d'utilisateur.  
![22 Date derniere modif mdp](https://github.com/user-attachments/assets/2b363251-54cf-4aef-b3b4-36742e007544)  


**3. Liste des sessions ouvertes par l'utilisateur**  
Pour obtenir la liste des sessions ouvertes par un utilisateur, entrez 3. Un prompt s'affiche, demandant un nom d'utilisateur.  
![23 Liste des sessions ouvertes](https://github.com/user-attachments/assets/34c412b4-23aa-444a-84e6-320865fae2a4)  


**4. Groupe d'appartenance d'un utilisateur**  
Pour obtenir le groupe d'appartenance d'un utilisateur, entrez 4. Un prompt s'affiche, demandant d'entrer un nom d'utilisateur.  
![24 Groupe d'appartenance d'un utilisteur](https://github.com/user-attachments/assets/62b437fd-1b8f-4c85-8be4-4fada01e000d)  


**5. Historique des commandes exécutées par l'utilisateur**  
Pour obtenir l'historique des commandes exécutées par un utilisateur, tapez 5.  
![25 Historique des commandes executees par utilisateur](https://github.com/user-attachments/assets/5ed84e3e-3e99-4852-a415-f2b8b6be3d56)


**6. Droits/permissions de l'utilisateur sur un dossier/fichier**  
Pour obtenir les droits/permissions d'un utilisateur sur un dossier/fichier, entrez 6. Un prompt s'affiche, demandant de spécifier le chemin absolu du dossier ou du fichier à vérifier.  
Il est impératif d'entrer le chemin en partant de la racine, par exemple /home/utilisateur/Documents/FichierOuDossierAVerifier  
![26 Droits permissions de lutilisateur sur un dossier fichier](https://github.com/user-attachments/assets/09c5ee4e-2ee0-4e46-9d1c-1c3b69b975f0)  


### IV - Brique Information - Ordinateur Client  
Si votre besoin est d'obtenir une information sur un ordinateur client, vous devrez choisir, dans le menu principal, l'option "4 - Information sur ordinateur client".  
Le menu suivant s'affichera sur votre écran :  
![IV Info Ordinateur](https://github.com/user-attachments/assets/300a925b-98ea-407d-b26c-839a9685321b)


**1. Version de l'OS**  
![27 Version OS](https://github.com/user-attachments/assets/ee347751-881d-4597-ae80-f71cfe493772)


**2. Nombre de disques**  
![28 Nombre de disques](https://github.com/user-attachments/assets/2cc8eff3-bef7-4079-84c2-2c437ce79181)


**3. Partition (nombre, nom, FS, taille) par disque**  
![29 Partitions](https://github.com/user-attachments/assets/9e7d1ab4-cc4c-4a76-bc2e-c057a5c93437)


**4. Espace disque restant par partition/volume**  
![30 Espace disque restant](https://github.com/user-attachments/assets/6ba0ed86-af24-4399-9102-d58d6dca3f43)


**5. Nom et espace disque d'un dossier (nom de dossier demandé)**  
![31 Nom et espace disque d'un dossier](https://github.com/user-attachments/assets/0e9a4423-e12c-4b64-adb1-315539058e6c)


**6. Liste des lecteurs montés (disque, CD, etc.)**  
![32 Liste des lecteurs montés](https://github.com/user-attachments/assets/a03855ad-1fb8-468a-9f23-efeb4668209d)


**7. Nombre d'interface**  
![33 Nombre d'interfaces](https://github.com/user-attachments/assets/175af92a-5b41-422e-96c9-2f7c6ae70f90)


**8. Adresse IP de chaque interface**  
![34 Adresse IP chaque interface](https://github.com/user-attachments/assets/29b5ce29-8fdc-45f6-b847-f66fb4d572ad)


**9. Adresse Mac**  
![35 Adresse mac](https://github.com/user-attachments/assets/cddc8e19-3e5d-446d-945e-0a7397ef14f2)


**10. Liste des ports ouverts**  
![36 Liste des ports ouverts](https://github.com/user-attachments/assets/5ef542e3-51a5-4b33-8820-24ae82a9b1e2)


**11. Statut du pare-feu**  
![37 Statut du pare feu](https://github.com/user-attachments/assets/9be92e47-5d73-4da5-a4ec-0204d30a7049)


### V - Brique Information sur script  
![V Info sur script](https://github.com/user-attachments/assets/b0fe1154-f680-4c19-b51e-a40af59a4490)


**1. Recherche des évenements dans le fichier log_evt.log pour un utilisateur**  

**2. Recherche des évenements dans le fichier log_evt.log pour un ordinateur**  

