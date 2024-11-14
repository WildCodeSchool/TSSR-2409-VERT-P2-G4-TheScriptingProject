# Menu du script

$IPCible = Read-Host "Entrez l'IP cible"
$User = Read-Host "Entrez le nom d'utilisateur"



 
  # 1 Fonction pour créer un compte utilisateur
  
  # 2 Fonction pour changer  le mot de passe d'un utilisateur

  # 3 Fonction pour supprimer un compte utilisateur

  # 4 Fonction pour désactiver un compte utilisateur

  # 5 Fonction pour ajouter utilisateur à un groupe d'administration

  # 6 Fonction pour ajouter utilisateur à un groupe local

  # 7 Fonction pour supprimer utilisateur d'un groupe local

############################# CHOIX NUMERO 2 ##########################################################################
####################### BRIQUE ACTION ORDINATEUR ####################################################################

## 1 Fonction pour arrêter le système
function Arret
{
shutdown /s
}


## 2 Fonction pour redémarrer
function Redemarrage
{
Restart-Computer
}


## 3 Fonction pour verrouiller la session
function Verrou
{
Rundll32.exe user32.dll,LockWorkStation
}


## 4 Fonction pour mettre à jour le système
function MajSystem
{
Get-WindowsUpdate
Install-WindowsUpdate -AcceptAll -AutoReboot
Write-Host "Système mis à jour !"
}


## 5 Fonction pour création de répertoire
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

# Création d'un compte utilisateur local
function Create-LocalUser {
param (
[string]$username,
[string]$password
)
$securePassword = ConvertTo-SecureString $password -AsPlainText -Force
New-LocalUser -Name $username -Password $securePassword -FullName "$username User" -Description "Compte utilisateur créé"
Write-Host "Compte utilisateur '$username' créé avec succès."
}

# Changement de mot de passe d'un compte utilisateur local
function Change-LocalUserPassword {
param (
[string]$username,
[string]$newPassword
)
$securePassword = ConvertTo-SecureString $newPassword -AsPlainText -Force
Set-LocalUser -Name $username -Password $securePassword
Write-Host "Mot de passe pour '$username' changé avec succès."
}

# Suppression d'un compte utilisateur local
function Remove-LocalUser {
param (
[string]$username
)
Remove-LocalUser -Name $username
Write-Host "Compte utilisateur '$username' supprimé avec succès."
}

# Désactivation d'un compte utilisateur local
function Disable-LocalUser {
param (
[string]$username
)
Disable-LocalUser -Name $username
Write-Host "Compte utilisateur '$username' désactivé avec succès."
}

# Créer un utilisateur
Create-LocalUser -username "utilisateur" -password "1234"

# Changer le mot de passe de l'utilisateur
Change-LocalUserPassword -username "utilisateur" -newPassword "2345"

# Désactiver l'utilisateur
Disable-LocalUser -username "utilisateur"

# Supprimer l'utilisateur
Remove-LocalUser -username "utilisateur"


—-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


# Obtenir toutes les interfaces réseau
$interfaces = Get-NetAdapter

# Compter le nombre d'interfaces
$nombreInterfaces = $interfaces.Count
Write-Host "Nombre d'interfaces : $nombreInterfaces"

# Parcourir chaque interface pour obtenir l'adresse IP et l'adresse MAC
foreach ($interface in $interfaces) {
# Obtenir l'adresse IP de l'interface
$ipAddresses = Get-NetIPAddress -InterfaceIndex $interface.InterfaceIndex | Select-Object -ExpandProperty IPAddress

 # Afficher les informations
 Write-Host "Interface : $($interface.Name)"
 Write-Host "Adresse MAC : $($interface.MacAddress)"
    
 if ($ipAddresses) {
 Write-Host "Adresse IP : $($ipAddresses -join ', ')"
 } else {
  Write-Host "Adresse IP : Aucune adresse IP assignée"
 }
    
    Write-Host "-----------------------------"
}
—-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Fonction pour ajouter un utilisateur à un groupe d'administration
function Ajouter-AuGroupeAdministration {
    param (
        [string]$NomGroupe,
        [string]$NomUtilisateur
    )
    try {
        Add-LocalGroupMember -Group $NomGroupe -Member $NomUtilisateur
        Write-Host "L'utilisateur $NomUtilisateur a été ajouté au groupe d'administration $NomGroupe."
    } catch {
        Write-Host "Erreur lors de l'ajout de l'utilisateur $NomUtilisateur au groupe $NomGroupe : $_"
    }
}

# Fonction pour ajouter un utilisateur à un groupe local
function Ajouter-AuGroupeLocal {
    param (
        [string]$NomGroupe,
        [string]$NomUtilisateur
    )
    try {
        Add-LocalGroupMember -Group $NomGroupe -Member $NomUtilisateur
        Write-Host "L'utilisateur $NomUtilisateur a été ajouté au groupe local $NomGroupe."
    } catch {
        Write-Host "Erreur lors de l'ajout de l'utilisateur $NomUtilisateur au groupe $NomGroupe : $_"
    }
}

# Fonction pour retirer un utilisateur d'un groupe local
function Retirer-DuGroupeLocal {
    param (
        [string]$NomGroupe,
        [string]$NomUtilisateur
    )
    try {
        Remove-LocalGroupMember -Group $NomGroupe -Member $NomUtilisateur
        Write-Host "L'utilisateur $NomUtilisateur a été retiré du groupe local $NomGroupe."
    } catch {
        Write-Host "Erreur lors du retrait de l'utilisateur $NomUtilisateur du groupe $NomGroupe : $_"
    }
}
# Ajouter-AuGroupeAdministration -NomGroupe "Administrateurs" -NomUtilisateur "NomUtilisateur"
# Ajouter-AuGroupeLocal -NomGroupe "Utilisateurs" -NomUtilisateur "NomUtilisateur"
# Retirer-DuGroupeLocal -NomGroupe "Utilisateurs" -NomUtilisateur "NomUtilisateur"

—-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Spécifiez le nom d'utilisateur
$username = "NomUtilisateur"  # Remplacez par le nom d'utilisateur souhaité

# Obtenir les informations de l'utilisateur
$user = Get-ADUser -Identity $username -Properties LastLogonDate, PasswordLastSet

# Afficher la date de dernière connexion
if ($user.LastLogonDate) {
    Write-Host "Date de dernière connexion de l'utilisateur $username : $($user.LastLogonDate)"
} else {
    Write-Host "Aucune date de dernière connexion trouvée pour l'utilisateur $username."
}

# Afficher la date de dernière modification du mot de passe
if ($user.PasswordLastSet) {
    Write-Host "Date de dernière modification du mot de passe de l'utilisateur $username : $($user.PasswordLastSet)"
} else {
    Write-Host "Aucune date de dernière modification du mot de passe trouvée pour l'utilisateur $username."
}

# Obtenir la liste des sessions ouvertes par l'utilisateur
$sessions = Get-WmiObject -Class Win32_ComputerSystem | Where-Object { $_.UserName -eq $username }

if ($sessions) {
    Write-Host "Sessions ouvertes par l'utilisateur $username :"
    foreach ($session in $sessions) {
        Write-Host " - Session active sur : $($session.Name)"
    }
} else {
    Write-Host "Aucune session ouverte trouvée pour l'utilisateur $username."
}
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Script PowerShell pour activer et désactiver le pare-feu Windows

function Activer-PareFeu {
    Write-Host "Activation du pare-feu Windows..."
    Set-NetFirewallProfile -All -Enabled True
    Write-Host "Le pare-feu Windows est maintenant activé."
}

function Desactiver-PareFeu {
    Write-Host "Désactivation du pare-feu Windows..."
    Set-NetFirewallProfile -All -Enabled False
    Write-Host "Le pare-feu Windows est maintenant désactivé."
}

# Menu pour choisir l'action
Write-Host "Choisissez une option :"
Write-Host "1. Activer le pare-feu"
Write-Host "2. Désactiver le pare-feu"
$choix = Read-Host "Entrez votre choix (1 ou 2)"

switch ($choix) {
    1 { Activer-PareFeu }
    2 { Desactiver-PareFeu }
    default { Write-Host "Choix invalide. Veuillez entrer 1 ou 2." }
    }
----------------------------------------------------------------------------------------------------------------------------------------------------------------

# Demander le nom d'utilisateur
$username = Read-Host "Entrez le nom d'utilisateur"

# Vérifier si l'utilisateur existe
$user = Get-ADUser -Identity $username -ErrorAction SilentlyContinue
if (-not $user) {
    Write-Host "L'utilisateur $username n'existe pas." -ForegroundColor Red
    exit
}

# Obtenir les groupes d'appartenance de l'utilisateur
$groups = Get-ADUser -Identity $username -Properties MemberOf | Select-Object -ExpandProperty MemberOf

Write-Host "Groupes d'appartenance pour l'utilisateur $username :" -ForegroundColor Green
foreach ($group in $groups) {
    $groupName = (Get-ADGroup -Identity $group).Name
    Write-Host "- $groupName"
}

# Obtenir l'historique des commandes exécutées par l'utilisateur
# Note : L'historique des commandes est généralement stocké dans le fichier de profil de l'utilisateur
$historyFilePath = "C:\Users\$username\Documents\PowerShell_history.txt"

if (Test-Path $historyFilePath) {
    Write-Host "
nHistorique des commandes exécutées par l'utilisateur $username :" -ForegroundColor Green
    Get-Content $historyFilePath | ForEach-Object { Write-Host "- $_" }
} else {
    Write-Host "Aucun historique de commandes trouvé pour l'utilisateur $username." -ForegroundColor Yellow
}

--------------------------------------------------------------------------------------------------------------------------------------------------------------

# Importer le module nécessaire pour utiliser Windows Forms
Add-Type -AssemblyName System.Windows.Forms

# Créer une fonction pour établir une connexion à distance
function Start-RemoteSession {
    param (
        [string]$ComputerName
    )

    try {
        # Établir une session à distance
        $session = New-PSSession -ComputerName $ComputerName -ErrorAction Stop
        Invoke-Command -Session $session -ScriptBlock { Start-Process "powershell.exe" -ArgumentList '-NoExit', '-Command', 'Write-Host "Session à distance établie!"' }
        Write-Host "Connexion réussie à $ComputerName"
    } catch {
        Write-Host "Erreur lors de la connexion à $ComputerName : $_"
    }
}

# Créer la fenêtre principale
$form = New-Object System.Windows.Forms.Form
$form.Text = "Prise de main à distance"
$form.Size = New-Object System.Drawing.Size(300,200)
$form.StartPosition = "CenterScreen"

# Créer un label
$label = New-Object System.Windows.Forms.Label
$label.Text = "Entrez le nom de l'ordinateur :"
$label.AutoSize = $true
$label.Location = New-Object System.Drawing.Point(10,20)
$form.Controls.Add($label)

# Créer un champ de texte pour l'entrée de l'utilisateur
$textBox = New-Object System.Windows.Forms.TextBox
$textBox.Location = New-Object System.Drawing.Point(10,50)
$textBox.Size = New-Object System.Drawing.Size(260,20)
$form.Controls.Add($textBox)

# Créer un bouton pour démarrer la session
$button = New-Object System.Windows.Forms.Button
$button.Text = "Démarrer la session"
$button.Location = New-Object System.Drawing.Point(10,80)
$button.Add_Click({
    $computerName = $textBox.Text
    Start-RemoteSession -ComputerName $computerName
})
$form.Controls.Add($button)

# Afficher la fenêtre
$form.Add_Shown({$form.Activate()})
[void]$form.ShowDialog()
    
