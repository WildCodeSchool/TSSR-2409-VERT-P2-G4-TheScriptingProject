# Menu du script

$IPCible = Read-Host "Entrez l'IP cible"
$User = Read-Host "Entrez le nom d'utilisateur"



 
  # 1 Fonction pour créer un compte utilisateur
  function adduser
  {
   $adduser = Read-host " Entrez le nom du compte utilisateur à créer:"
   # if 
    #  (Get-LocalUser | Where-Object { $_.Name -eq $adduser }) 
     # {
      #Write-Output "L'utilisateur '$adduser' existe déjà."
      #} 
    #else
     # {
      new-localuser -name $adduser -Nopassword
      Write-output " L'utilisateur $adduser a été créé"
      #}
 }
 adduser
  # 2 Fonction pour changer  le mot de passe d'un utilisateur

  # 3 Fonction pour supprimer un compte utilisateur

  # 4 Fonction pour désactiver un compte utilisateur

  # 5 Fonction pour ajouter utilisateur à un groupe d'administration

  # 6 Fonction pour ajouter utilisateur à un groupe local

  # 7 Fonction pour supprimer utilisateur d'un groupe local

############################# CHOIX NUMERO 2 ##########################################################################
####################### BRIQUE ACTION ORDINATEUR ####################################################################

  # 1 Fonction pour arrêter le système

  # 2 Fonction pour redémarrer

  # 3 Fonction pour verrouiller la session

  # 4 Fonction pour mettre à jour le système

  # 5 Fonction pour création de répertoire
  function create_directory
  {
     $Nomdirectory = Read-Host "Entrez le nom du répertoire à créer"
     $Chemin = Read-host "Entrez le chemin du répertoire à créer" 
     $Chemindirectory = "$Chemin\$Nomdirectory"
   
         if (Test-Path -Path $Chemindirectory) 
         {
         Write-Output "Le répertoire existe déjà."
         } 
         else 
         {
         New-item -ItemType Directory -Name $Nomdirectory -Path $Chemindirectory 
         Write-Output "Le répertoire '$Nomdirectory' a été créé avec succès."
         }
 
}

  # 6 Fonction pour modification de répertoire

  # 7 Fonction pour suppression de répertoire
  function delete
{
     $Nomdelete = Read-host "Entrez le nom du répertoire à supprimer"
     $Chemin = Read-host "Entrez le chemin du répertoire à supprimer"
     $Chemindirectory = "$Chemin\$Nomdelete"
     
        if (Test-Path -Path $Chemindirectory)
        {
         Remove-item -Path $Chemindirectory -Recurse -Force
         Write-Output "Le répertoire $Nomdelete a été supprimé avec succès."
         }
         else
         {
         Write-Output "Le répertoire n'existe pas."
         }
                 
}

      
  # 8 Fonction pour prise de main à distance 

  # 9 Fonction pour activer le pare-feu

  # 10 Fonction pour désactiver le pare-feu

  # 11 Fonction pour installation un logiciel

  # 12 Fonction pour désinstaller un logiciel
 

############################# CHOIX NUMERO 3 ##########################################################################
####################### BRIQUE INFO UTILISATEUR  ####################################################################

# 1 Fonction pour date de dernière connexion d'un utilisateur

# 2 Fonction pour date de dernière modification du mot de passe

# 3 Fonction pour liste des sessions ouvertes par l'utilisateur

# 4 Fonction pour le groupe d'appartenance d'un utilisateur

# 5 Fonction pour historique des commandes exécutées par l'utilisateur

# 6 Fonction pour droits/permissions de l'utilisateur sur un dossier ou fichier

############################# CHOIX NUMERO 4 ##########################################################################
######################### BRIQUE INFO ORDINATEUR  ####################################################################



# 1 Version de l'OS
function versionOs
{
   [System.Environment]::OSVersion
}

# 2 Nombre de disques

#  Fonction pour les partitions (nombre, nom, FS, taille) par disque

# 8 Fonction pour espace disque restant par partition/volume

# 9 Fonction pour le nom et espace disque d'un dossier (nom de dossier demandé)

# 10 Fonction pour la liste des lecteurs montés (disque, CD, etc...)

# 11 Fonction pour le nombre d'interfaces
function Nbinterface
{
$nombreInterfaces = (Get-NetAdapter | Measure-Object).Count
Write-Output "Le nombre d'interfaces réseau est : $nombreInterfaces"
}

# 12 Fonction pour l’adresse IP de chaque interface
function Ipaddress
{
Get-NetIPAddress | Select-Object InterfaceAlias, IPAddress
}

# 13 Fonction pour l’adresse Mac
function Macaddress
{
Get-NetAdapter | Select-Object Name, MacAddress
}

# 14 Fonction pour la liste des ports ouverts
function ports_ouverts
{
  netstat -an | Select-String "LISTEN"
}

# 15 Fonction pour le statut du pare-feu
function etat_firewall
{
  Get-NetFirewallProfile | Select-Object Name, Enabled
}
           




# Menu 


