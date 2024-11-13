# Product Backlog

```sh
cat Team.txt
```
>Bruno  
>Souhail  
>Mohammed  
>William  

---

### :trident: :one: Chaque semaine - Définir un `$SM` et un `$PO`
- Semaine 01 `SM=Souhail  && PO=William`
- Semaine 02 `SM=Mohammed && PO=Bruno  `
- Semaine 03 `SM=William  && PO=Souhail`
- Semaine 04 `SM=Bruno    && PO=Mohammed`

---

### :runner: :two: Sprint semaine 01 - Labos et codage
#### 1. Sprint backlog

1a. Mise en place du labos pour tous les membres.
| Distribution | Windows Server 2022 | Debian 12 | Windows 10 | Ubuntu 22.04 |  
|:---:|:---:|:---:|:---:|:---:|
| Nom | **SRVWIN01** | **SRVLX01** | **CLIWIN01** | **CLILIN01** |
| Compte | **Administrator** | **root** | **wilder** | **wilder** |
| Mot de passe | **Azerty1\*** | **Azerty1\*** | **Azerty1\*** | **Azerty1\*** |
| Adresse IP fixe | **172.16.10.5/24** | **172.16.10.10/24** | **172.16.10.20/24** | **172.16.10.30/24** |

1b. Etablir un plan schématique du script final.

1c. Développement des premières briques indépendantes et enregistrement dans une doc.  
:arrow_right: Action/Utilisateur : Création de compte utilisateur local  
:arrow_right: Action/Utilisateur : Changement de mot de passe  
:arrow_right: Action/Utilisateur : Suppression de compte utilisateur local  
:arrow_right: Action/Utilisateur : Désactivation de compte utilisateur local  
:arrow_right: Action/Utilisateur : Ajout à un groupe d'administration  
:arrow_right: Action/Utilisateur : Ajout à un groupe local  
:arrow_right: Action/Utilisateur : Sortie d’un groupe local  
:arrow_right: Action/Ordinateur client : Arrêt  
:arrow_right: Action/Ordinateur client : Redémarrage  
:arrow_right: Action/Ordinateur client : Verrouillage  
:arrow_right: Action/Ordinateur client : Mise-à-jour du système  
:arrow_right: Action/Ordinateur client : Création de répertoire  
:arrow_right: Action/Ordinateur client : Modification de répertoire  
:arrow_right: Action/Ordinateur client : Suppression de répertoire  

#### 2. Sprint review
:ok: Les labos sont fonctionnels.  
:warning: Le plan schématique n'est pas fait, manque de compréhension sur le comportement du script.  
:ok: Les lignes prévues ont été codées et sauvegardées dans une doc.  
:ok: Résolution d'un problème avec `case`.  

---

### :runner: :three: Sprint semaine 02 - Répartition des tâches de codages + bilan
#### 1. Sprint backlog

1a. Mise en réseaux des labos.

1b. Mise en place de la structure du script

1c. Développement des dernières briques indépendantes et enregistrement dans une doc.  
:arrow_right: Information/Utilisateur : Date de dernière connexion d’un utilisateur  
:arrow_right: Information/Utilisateur : Date de dernière modification du mot de passe  
:arrow_right: Information/Utilisateur : Liste des sessions ouvertes par l'utilisateur  
:arrow_right: Information/Utilisateur : Groupe d’appartenance d’un utilisateur  
:arrow_right: Information/Utilisateur : Historique des commandes exécutées par l'utilisateur  
:arrow_right: Information/Utilisateur : Droits/permissions de l’utilisateur sur un dossier  
:arrow_right: Information/Utilisateur :  Droits/permissions de l’utilisateur sur un fichier  
:arrow_right: Information/Ordinateur client : Version de l'OS  
:arrow_right: Information/Ordinateur client : Liste des ports ouverts  
:arrow_right: Information/Ordinateur client : Statut du pare-feu  


#### 2. Sprint review

 1a. :ok: Mise en place du réseau pour la moitié des membres : beaucoup de difficultés à se connecter en ssh  
 1b. :ok: Mise en place du squelette du script bash  
 1c. :ok: Mise en place de l'invite de commande pour le choix des actions  
 1d. :warning: Finaliser le processus ssh pour executer les actions sur le client  
 1e. :warning: Terminer le script bash  
 1f. :warning: Mise en place du squelette du script powershell  
 1g. :warning: Répartition des différentes taches  
 
---

### :runner: :four: Sprint semaine 03 - Répartition des tâches de codages + bilan
#### 1. Sprint backlog
:arrow_right: Information/Ordinateur client : Nombre de disque  
:arrow_right: Information/Ordinateur client : Partition (nombre, nom, FS, taille) par disque  
:arrow_right: Information/Ordinateur client : Espace disque restant par partition/volume  
:arrow_right: Information/Ordinateur client : Nom et espace disque d'un dossier (nom de dossier demandé)   
:arrow_right: Information/Ordinateur client : Liste des lecteurs monté (disque, CD, etc.)  
:arrow_right: Information/Ordinateur client : Nombre d'interface  
:arrow_right: Information/Ordinateur client : Adresse IP de chaque interface  
:arrow_right: Information/Ordinateur client : Adresse Mac  
:arrow_right: Information/Script : Recherche des evenements dans le fichier log_evt.log pour un utilisateur  
:arrow_right: Information/Script :Recherche des evenements dans le fichier log_evt.log pour un ordinateur 
#### 2. Sprint review
:alarm_clock: :warning: Terminer le script Bash  
:alarm_clock: :warning: Développer et terminer le script PowerShell  
:ok: VM et connection ssh opérationnels  
:ok: Toutes les briques Bash fonctionnent  
:ok: Menu et sous-menu opérationnels  
:ok: Execution à distance  
:warning: Compilation générale du script  
:warning: Logs  

---

### :runner: :five: Sprint semaine 04 - Répartition des tâches de codages + Rédactions des documents finaux
#### 1. Sprint backlog
#### 2. Sprint review
 
---
### :battery: :five: Etat d'avancement des briques des scripts
---- Non codé  
:hand: Seulement codé  
:+1: Codé et intégré au script  
  

| Type        | Cible             | Tâche                                                                    | Bash | PowerShell |
|-------------|-------------------|--------------------------------------------------------------------------|------|------------|
| Action      | Utilisateur       | Création de compte utilisateur local                                     |:+1:|----|
| Action      | Utilisateur       | Changement de mot de passe                                               |:+1:|----|
| Action      | Utilisateur       | Suppression de compte utilisateur local                                  |:+1:|----|
| Action      | Utilisateur       | Désactivation de compte utilisateur local                                |:+1:|----|
| Action      | Utilisateur       | Ajout à un groupe d'administration                                       |:+1:|----|
| Action      | Utilisateur       | Ajout à un groupe local                                                  |:+1:|----|
| Action      | Utilisateur       | Sortie d’un groupe local                                                 |:+1:|----|
| Action      | Ordinateur client | Arrêt                                                                    |:+1:|----|
| Action      | Ordinateur client | Redémarrage                                                              |:+1:|----|
| Action      | Ordinateur client | Verrouillage                                                             |:+1:|----|
| Action      | Ordinateur client | Mise-à-jour du système                                                   |:+1:|----|
| Action      | Ordinateur client | Création de répertoire                                                   |:+1:|----|
| Action      | Ordinateur client | Modification de répertoire                                               |:+1:|----|
| Action      | Ordinateur client | Suppression de répertoire                                                |:+1:|----|
| Action      | Ordinateur client | Prise de main à distance (GUI)                                           |----|----|
| Action      | Ordinateur client | Activation du pare-feu                                                   |:+1:|----|
| Action      | Ordinateur client | Désactivation du pare-feu                                                |:+1:|----|
| Action      | Ordinateur client | Installation de logiciel                                                 |:+1:|----|
| Action      | Ordinateur client | Désinstallation de logiciel                                              |:+1:|----|
| Action      | Ordinateur client | Exécution de script sur la machine distante                              |:+1:|----|
| Information | Utilisateur       | Date de dernière connexion d’un utilisateur                              |:+1:|----|
| Information | Utilisateur       | Date de dernière modification du mot de passe                            |:+1:|----|
| Information | Utilisateur       | Liste des sessions ouvertes par l'utilisateur                            |:+1:|----|
| Information | Utilisateur       | Groupe d’appartenance d’un utilisateur                                   |:+1:|----|
| Information | Utilisateur       | Historique des commandes exécutées par l'utilisateur                     |:+1:|----|
| Information | Utilisateur       | Droits/permissions de l’utilisateur sur un dossier                       |:+1:|----|
| Information | Utilisateur       | Droits/permissions de l’utilisateur sur un fichier                       |:+1:|----|
| Information | Ordinateur client | Version de l'OS                                                          |:+1:|----|
| Information | Ordinateur client | Nombre de disque                                                         |:+1:|----|
| Information | Ordinateur client | Partition (nombre, nom, FS, taille) par disque                           |:+1:|----|
| Information | Ordinateur client | Espace disque restant par partition/volume                               |:+1:|----|
| Information | Ordinateur client | Nom et espace disque d'un dossier (nom de dossier demandé)               |:+1:|----|
| Information | Ordinateur client | Liste des lecteurs monté (disque, CD, etc.)                              |:+1:|----|
| Information | Ordinateur client | Nombre d'interface                                                       |:+1:|----|
| Information | Ordinateur client | Adresse IP de chaque interface                                           |:+1:|----|
| Information | Ordinateur client | Adresse Mac                                                              |:+1:|----|
| Information | Ordinateur client | Liste des ports ouverts                                                  |:+1:|----|
| Information | Ordinateur client | Statut du pare-feu                                                       |:+1:|----|
| Information | Script            | Recherche des evenements dans le fichier log_evt.log pour un utilisateur |:+1:|----|
| Information | Script            | Recherche des evenements dans le fichier log_evt.log pour un ordinateur  |:+1:|----|
| Générale    | Script            | Compilation générale du script                                           |----|----|
| Générale    | Script            | Mise en forme et présentation des menus                                  |----|----|
| Générale    | Script            | Etat d'avancement en pourcentage                                         |----|----|
