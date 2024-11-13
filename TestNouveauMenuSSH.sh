#!/bin/bash

# Menu du script

read -p "Adresse IP cible : " IPCible
read -p "Nom d'utilisateur : " User
echo -e "Veuillez séléctionner un numéro de choix :\n1 - Action sur utilisateur\n2 - Action sur ordinateur client\n3 - Information sur utilisateur\n4 - Information sur ordinateur client\n5 - Information sur script"
read -p "Choix:" choix

####################################################################################
################### Réponses du script aux choix possibles ###########################
####################################################################################

############################# CHOIX NUMERO 1 #########################################################
####################### BRIQUE ACTION UTILISATEUR #####################################################

if [ "$choix" -eq 1 ]
then

  # 1 Fonction pour créer un compte utilisateur

function create_user() 
{
read -p "Entrez le nom d'utilisateur à créer : " username
ssh -t "$User@$IPCible" "sudo -S useradd -m -s /bin/bash $username"
echo "Compte utilisateur $username créé."
#timedatectl | grep "Local time" << log_evttmp.log 
}



  # 2 Fonction pour changer  le mot de passe d'un utilisateur

function change_password()
{
read -p "Entrer le nom d'utilisateur dont vous voulez changer le mot de passe : " username
ssh -t "$User@$IPCible" "sudo passwd $username"
}



  # 3 Fonction pour supprimer un compte utilisateur

function delete_user()
{
read -p "Entrez le nom d'utilisateur à supprimer: " username
ssh -t "$User@$IPCible" "sudo userdel $username"
echo "Compte utilisateur '$username' supprimé"
}



  # 4 Fonction pour désactiver un compte utilisateur
function disable_user() 
{
read -p "Entrez le nom d'utilisateur à désactiver : " username
ssh -t "$User@$IPCible" "sudo usermod -L $username"
echo "Compte utilisateur '$username' désactivé."
}



  # 5 Fonction pour ajouter utilisateur à un groupe d'administration
function addsudogroup()
{
read -p "Entrez le nom de l'utilisateur à ajouter au groupe sudo : " nom_utilisateur
ssh -t "$User@$IPCible" "sudo usermod -aG sudo $nom_utilisateur"
if [ "$?" = "0" ];
then
echo "L'utilisateur $nom_utilisateur a bien été ajouté au groupe d'administration"
else
echo "L'utilisateur $nom_utilisateur n'existe pas"
fi
}

  # 6 Fonction pour ajouter utilisateur à un groupe local
function addlocalgroup()
{
read -p "Entrez le nom de l'utilisateur à ajouter : " nom_utilisateur
read -p "Entrez le nom du groupe local : " nom_groupe
ssh -t "$User@$IPCible" "sudo usermod -aG $nom_groupe $nom_utilisateur"
if [ "$?" = "0" ];
then
echo "L'utilisateur $nom_utilisateur a bien été ajouté au groupe $nom_groupe"
else
echo "L'utilisateur $nom_utilisateur n'existe pas"
fi
}



  # 7 Fonction pour supprimer utilisateur d'un groupe local
function removelocalgroup()
{
read -p "Entrez le nom de l'utilisateur à retirer : " nom_utilisateur
read -p "Entrez le nom du groupe local : " nom_groupe
ssh -t "$User@$IPCible" "sudo gpasswd -d $nom_utilisateur $nom_groupe"
if [ "$?" = "0" ];
then
echo "L'utilisateur $nom_utilisateur a bien été supprimé du groupe $nom_groupe"
else
echo "L'utilisateur $nom_utilisateur n'existe pas"
fi
}

echo -e "Merci de choisir votre action en tapant :\n1 - Créer un compte utilisateur\n2 - Changer le mot de passe d'un utilisateur\n3 - Supprimer un compte utilisateur\n4 - Désactiver un groupe utilisateur\n5 - Ajouter à un groupe d'administrateur\n6 - Ajouter à un groupe local\n7 pour Sortie d'un groupe local"
read -p "Choix:" action 

        case "$action" in
                 1) create_user ;;
                 2) change_password ;;
                 3) delete_user ;;
                 4) disable_user ;;
                 5) addsudogroup ;;
                 6) addlocalgroup ;;
                 7) removelocalgroup ;;
                 *) echo "Option invalide.";;
	esac
fi


