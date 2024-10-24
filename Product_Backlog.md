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
- Semaine 01 `SM=Souhail && PO=William`
- Semaine 02 `SM=        && PO=       `
- Semaine 03 `SM=        && PO=       `
- Semaine 04 `SM=        && PO=       `

---

### :runner: :two: Sprint semaine 01 - Labos et codage
#### 1. Sprint backlog

1a. Mise en place du labos pour tous les membres
| Distribution | Windows Server 2022 | Debian 12 | Windows 10 | Ubuntu 22.04 |  
|:---:|:---:|:---:|:---:|:---:|
| Nom | **SRVWIN01** | **SRVLX01** | **CLIWIN01** | **CLILIN01** |
| Compte | **Administrator** | **root** | **wilder** | **wilder** |
| Mot de passe | **Azerty1\*** | **Azerty1\*** | **Azerty1\*** | **Azerty1\*** |
| Adresse IP fixe | **172.16.10.5/24** | **172.16.10.10/24** | **172.16.10.20/24** | **172.16.10.30/24** |

1b. Etablir un plan schématique du script final

1c. Développement des premières briques indépendantes et enregistrement dans une doc.
- Création de compte utilisateur local
- Changement de mot de passe
- Suppression de compte utilisateur local
- Désactivation de compte utilisateur local
- Ajout à un groupe d'administration
- Ajout à un groupe local
- Sortie d’un groupe local
- Arrêt
- Redémarrage
- Verrouillage
- Mise-à-jour du système
- Création de répertoire
- Modification de répertoire
- Suppression de répertoire

#### 2. Sprint review
:ok: Les labos sont fonctionnels.  
:warning: Le plan schématique n'est pas fait, manque de compréhension sur le comportement du script.  
:ok: Les lignes prévues ont été codées et sauvegardées dans une doc.  
:ok: Résolution d'un problème avec `case`.  

---

### :runner: :three: Sprint semaine 02 - Répartition des tâches de codages + bilan
#### 1. Sprint backlog
#### 2. Sprint review

Souhail :  
William :  
Mohammed :  
Bruno :  

---

### :runner: :four: Sprint semaine 03 - Répartition des tâches de codages + bilan
#### 1. Sprint backlog
#### 2. Sprint review

Souhail :  
William :  
Mohammed :  
Bruno :  

---

### :runner: :five: Sprint semaine 04 - Répartition des tâches de codages + Rédactions des documents finaux
#### 1. Sprint backlog
#### 2. Sprint review

Souhail :  
William :  
Mohammed :  
Bruno :  

| Type        | Cible             | Tâche                                                                    | Bash | PowerShell |
|-------------|-------------------|--------------------------------------------------------------------------|------|------------|
| Action      | Utilisateur       | Création de compte utilisateur local                                     |
| Action      | Utilisateur       | Changement de mot de passe                                               |
| Action      | Utilisateur       | Suppression de compte utilisateur local                                  |
| Action      | Utilisateur       | Désactivation de compte utilisateur local                                |
| Action      | Utilisateur       | Ajout à un groupe d'administration                                       |
| Action      | Utilisateur       | Ajout à un groupe local                                                  |
| Action      | Utilisateur       | Sortie d’un groupe local                                                 |
| Action      | Ordinateur client | Arrêt                                                                    |
| Action      | Ordinateur client | Redémarrage                                                              |
| Action      | Ordinateur client | Verrouillage                                                             |
| Action      | Ordinateur client | Mise-à-jour du système                                                   |
| Action      | Ordinateur client | Création de répertoire                                                   |
| Action      | Ordinateur client | Modification de répertoire                                               |
| Action      | Ordinateur client | Suppression de répertoire                                                |
| Action      | Ordinateur client | Prise de main à distance (GUI)                                           |
| Action      | Ordinateur client | Activation du pare-feu                                                   |
| Action      | Ordinateur client | Désactivation du pare-feu                                                |
| Action      | Ordinateur client | Installation de logiciel                                                 |
| Action      | Ordinateur client | Désinstallation de logiciel                                              |
| Action      | Ordinateur client | Exécution de script sur la machine distante                              |
| Information | Utilisateur       | Date de dernière connexion d’un utilisateur                              |
| Information | Utilisateur       | Date de dernière modification du mot de passe                            |
| Information | Utilisateur       | Liste des sessions ouvertes par l'utilisateur                            |
| Information | Utilisateur       | Groupe d’appartenance d’un utilisateur                                   |
| Information | Utilisateur       | Historique des commandes exécutées par l'utilisateur                     |
| Information | Utilisateur       | Droits/permissions de l’utilisateur sur un dossier                       |
| Information | Utilisateur       | Droits/permissions de l’utilisateur sur un fichier                       |
| Information | Ordinateur client | Version de l'OS                                                          |
| Information | Ordinateur client | Nombre de disque                                                         |
| Information | Ordinateur client | Partition (nombre, nom, FS, taille) par disque                           |
| Information | Ordinateur client | Espace disque restant par partition/volume                               |
| Information | Ordinateur client | Nom et espace disque d'un dossier (nom de dossier demandé)               |
| Information | Ordinateur client | Liste des lecteurs monté (disque, CD, etc.)                              |
| Information | Ordinateur client | Nombre d'interface                                                       |
| Information | Ordinateur client | Adresse IP de chaque interface                                           |
| Information | Ordinateur client | Adresse Mac                                                              |
| Information | Ordinateur client | Liste des ports ouverts                                                  |
| Information | Ordinateur client | Statut du pare-feu                                                       |
| Information | Script            | Recherche des evenements dans le fichier log_evt.log pour un utilisateur |
| Information | Script            | Recherche des evenements dans le fichier log_evt.log pour un ordinateur  |

