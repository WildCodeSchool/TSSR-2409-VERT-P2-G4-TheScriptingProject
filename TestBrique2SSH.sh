#!/bin/bash

############################# CHOIX NUMERO 2 ##############################################
####################### BRIQUE ACTION ORDINATEUR ##########################################
if [ "$choix" -eq 2 ]
then

  # 1 Fonction pour arrêter le système
function arret()
{
echo "L'ordinateur va s'arrêter"
ssh $User@$IPCible "sudo shutdown now"
}



  # 2 Fonction pour redémarrer
function redemarrage()
{
ssh $User@$IPCible "sudo reboot now"
echo "L'ordinateur va redémarrer"
}

  # 3 Fonction pour verrouiller la session
function verrou()
{
ssh $User@$IPCible "loginctl lock-session"
echo "La session est verrouillée"
}

  # 4 Fonction pour mettre à jour le système
function maj()
{
ssh $User@$IPCible "sudo apt update && sudo apt upgrade -y"
echo "La mise à jour est terminée"
}

  # 5 Fonction pour création de répertoire
function creation_de_repertoire()
{
read -p "Veuillez entrer le nom du répertoire à créer :" nom_repertoire
ssh $User@$IPCible "mkdir $nom_repertoire"
echo "Le dossier $nom_repertoire a été créé"
}

  # 6 Fonction pour modification de répertoire
function modification_de_repertoire()
{
read -p "Veuillez entrer le nom du fichier à modifier :" fichier_a_modifier
read -p "Veuillez entrer le nombre pour les modification des droits : " modification_droit
ssh $User@$IPCible "chmod $modification_droit $fichier_a_modifier"
echo "Le dossier $fichier_a_modifier a été modifié"
}

  # 7 Fonction pour suppression de répertoire
function suppression_de_repertoire()
{
read -p "Veuillez entrer le nom du répertoire à supprimer : " nom_repertoire_a_supprimer
ssh $User@$IPCible "rm -r $nom_repertoire_a_supprimer"
echo "Le repertoire $nom_repetoire_a_supprimer a été supprimé"
}

 # 8 Fonction pour prise de main à distance 
function Prise_main()
{
echo "En cours de développement"
}

  # 9 Fonction pour activer le pare-feu
function activerufw()
{
ssh $User@$IPCible "sudo ufw enable && sudo ufw allow 22"
#sudo ufw allow 22
echo "Le pare-feu a été activé avec succès"
}

  # 10 Fonction pour désactiver le pare-feu
function desactiverufw()
{
ssh $User@$IPCible "sudo ufw disable"
echo "Le pare-feu a été désactivé avec succès"
}

 # 11 Fonction pour installation un logiciel
function InstallPackage()
{
while true
do

  # Choix pour $install1
while true
do
	echo -e 'Que souhaitez-vous faire ? \nTaper "package" pour renseigner un paquet. \nTaper "search" pour rechercher un paquet.'
	read -p "Choix : " install1

# Vérification entrée $install1
	if [ "$install1" = "package" ] || [ "$install1" = "search" ];
	then
    	break    
	else
    	echo "Veuillez rentrer une donnée valide !"
    	fi
done

# Action choix "package"
if [ "$install1" = "package" ]
then
	while true;
	do
    	read -p 'Quel package souhaitez-vous installer ? Tapez "EXIT" pour retourner au menu précédent : ' package1;
    	if [ "$package1" = "EXIT" ]
    	then
        	break
    	else   	 
        	ssh $User@$IPCible "sudo apt install $package1"
          echo "Le package $package1 est installé !"
    	fi
	done
fi

# Action choix "search"
if [ "$install1" = "search" ]
then
	while true;
	do
    	read -p 'Rechercher un ou plusieurs termes ? Tapez "EXIT" pour annuler : ' search1
    	if [ "$search1" = "EXIT" ]
    	then
        	break
    	else
        	ssh $User@$IPCible "sudo apt-cache search -n $search1"
    	fi
	done
fi

done
}



  # 12 Fonction pour désinstaller un logiciel
function uninstall()
{
read -p “Renseigner le nom du paquet à désinstaller : ” UninstallPackage
ssh $User@$IPCible "sudo apt remove $UninstallPackage"
}



echo -e "Merci de choisir votre action en tapant :\n1 - Arrêter le système\n2 - Redémarrer le système\n3 - Vérrouiller la session\n4 - Mettre à jour le système\n5 - Créer un répertoire\n6 - Modifier un répertoire\n7 - Supprimer un répertoire\n8 - Activer le pare-feu\n9 - Désactiver le pare-feu\n10 - Installation de logiciel\n11 - Désinstallation de logiciel\n12 - Exécution de script sur la machine distante"
read -p "Choix:" action

	case "$action" in
                         1) arret ;;
                         2) redemarrage	;;
                         3) verrou ;;
                         4) maj	;;
                         5) creation_de_repertoire ;;
                         6) modification_de_repertoire ;;
                         7) suppression_de_repertoire ;;
                         8) activerufw ;;
                         9) desactiverufw ;;
                         10) InstallPackage ;;
                         11) uninstall ;;
	esac
fi
