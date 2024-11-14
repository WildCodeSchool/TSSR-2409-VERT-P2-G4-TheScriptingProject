if [ "$choix" -eq 3 ] ;
then

# 1 Fonction pour date de dernière connexion d'un utilisateur
function date_derniere_connexion()
{
echo "Date de dernière connexion de l'utilisateur $User :"
ssh -t "$User@$IPCible" "last -n 1 $User | awk '{print $4, $5, $6, $7}'"
}


# 2 Fonction pour date de dernière modification du mot de passe
function dernier_modif_mdp()
{
echo "Date de dernière modification du mot de passe de l'utilisateur $User :"
ssh -t "$User@$IPCible" "chage -l $User | grep "Last password change" | awk -F: '{print $2}'"
}

# 3 Fonction pour liste des sessions ouvertes par l'utilisateur
function session_open()
{
echo "Sessions ouvertes par l'utilisateur $User :"
ssh -t "$User@$IPCible" "who | grep $U"

}

# 4 Fonction pour le groupe d'appartenance d'un utilisateur
function groupuser()
{
read -p "Veuillez entrer le nom de l'utilisateur " user
echo "L'utilisateur "$user" appartient au(x) groupe(s) suivant(s) : "
ssh -t "$User@$IPCible" "groups $user"
}

# 5 Fonction pour historique des commandes exécutées par l'utilisateur
function historyuser()
{
read -p "Veuillez entrer le nom de l'utilisateur " user
ssh -t "$User@$IPCible" "cat /home/$user/.bash_history"
}

# 6 Fonction pour droits/permissions de l'utilisateur sur un dossier ou fichier
function rights()
{
read -p "Veuillez spécifier le chemin absolu du dossier ou fichier à vérifier : " chemin
ssh -t "$User@$IPCible" "ls -l $chemin"
echo "Commande en cours de développement"
}

echo -e "Veuillez choisir l'information désirée en tapant:\n1 - Date de dernière connexion d'un utilisateur\n2 - Date de dernière modification du mot de passe\n3 - Liste des sessions ouvertes par l'utilisateur\n4 - Groupe d'appartenance d'un utilisateur\n5 - Historique des commandes exécutées par l'utilisateur\n6 - Droits/Permissions de l'utilisateur sur un dossier ou fichier"
read -p "Choix:" info

case "$info" in
               1) date_derniere_connexion ;;
               2) dernier_modif_mdp ;;
               3) session_open ;;
               4) groupuser ;;
               5) historyuser ;;
               6) rights ;;
esac
fi
