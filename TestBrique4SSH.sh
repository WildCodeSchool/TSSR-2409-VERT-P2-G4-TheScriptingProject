if [ "$choix" -eq 4 ] 
then

# 1 Version de l'OS
function versionOS()
{
echo "La version des l'OS est:" 
ssh -t "$User@$IPCible" "uname -r"
}

# 2 Nombre de disques
function ListDisk()
{
ssh -t "$User@$IPCible" "lsblk -d -o NAME,SIZE,TYPE"
}

# 3 Fonction pour les partitions (nombre, nom, FS, taille) par disque
function ListPartition()
{
ssh -t "$User@$IPCible" "lsblk -o NAME,FSSIZE,FSTYPE,LABEL"
}

# 4 Fonction pour espace disque restant par partition/volume
function FreeSpace()
{
ssh -t "$User@$IPCible" "lsblk -o NAME,FSAVAIL"
}

# 5 Fonction pour le nom et espace disque d'un dossier (nom de dossier demandé)
function FolderInfos()
{
echo "Fonction en cours de développement - fonctionnelle sur l'ancien modèle d'envoi de script sur machine distante"
#while true
#do
#	read -p 'Emplacement absolu du dossier, "exit" pour sortir : ' FolderPlacement
#	if  [ -d "$FolderPlacement" ]
#	then
#    	while true
#    	do
#        	du -sh $FolderPlacement | cut -f1 && basename $FolderPlacement
#        	break
#    	done
#	elif [ $FolderPlacement = "exit" ]
#	then
#   	break
#	else
#    	echo -e "\033[31mCe dossier n'existe pas ou le champ est vide !\033[0m"
#	fi
#done
}

# 6 Fonction pour la liste des lecteurs montés (disque, CD, etc...)
function MountedDrive()
{
ssh -t "$User@$IPCible" "df -h | grep '^/dev/'"
}

# 7 Fonction pour le nombre d'interfaces
function interfacesnumber()
{
echo "nombre d'interfaces : "
ssh -t "$User@$IPCible" "ip link show | grep -c '^[0-9]'"
}

# 8 Fonction pour l’adresse IP de chaque interface
function interfaceip()
{
echo "Fonction en cours de développement - fonctionnelle sur l'ancien modèle d'envoi de script sur machine distante"
#ip -o -4 addr show | while read -r line; do
## Récupérer le nom de l'interface (colonne 2) et l'adresse IP (colonne 4)
#iface=$(echo "$line" | awk '{print $2}')
#ip_addr=$(echo "$line" | awk '{print $4}')
## Afficher le nom de l'interface et son adresse IP
#echo "$iface : $ip_addr"
done
}

# 9 Fonction pour l’adresse Mac
function macaddr()
{
echo "L’adresse MAC de cet ordinateur est : "
ssh -t "$User@$IPCible" "ip link show $interface | awk '/ether/ {print $2}'"
}

# 10 Fonction pour la liste des ports ouverts
function ports_ouverts()
{
ssh -t "$User@$IPCible" "sudo -S netstat –tulnp"
}

# 11 Fonction pour le statut du pare-feu
function status_firewall()
{
ssh -t "$User@$IPCible" "systemctl status firewall"
}

echo -e "Veuillez choisir l'information désirée en tapant :\n1 - Version de l'OS\n2 - Nombre de disques\n3 - Partitions (nombre, nom, FS, taille) par disque\n4 - Espace disque restant par partition/volume\n5 - Nom et espace disque d'un dossier\n6 - Liste des lecteurs montés\n7 - Nombre d'interfaces\n8 - Adresses IP de chaque interface\n9 - Adresse MAC\n10 - Liste des ports ouverts\n11 - Statut du pare-feu"
read -p "Choix:" info

case "$info" in
               1) versionOS ;;
               2) ListDisk  ;;
               3) ListPartition  ;;
               4) FreeSpace  ;;
               5) FolderInfos ;;
               6) MountedDrive  ;;
               7) interfacesnumber  ;;
               8) interfaceip  ;;
               9) macaddr  ;;
               10) ports_ouverts ;;  
               11) status_firewall ;;
esac
fi
