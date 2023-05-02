# README - Script Bash de création d'utilisateur FTP et de base de données MySQL
Ce script Bash permet de créer facilement un utilisateur FTP et une base de données MySQL associée à cet utilisateur.

## Comment ça marche ?
Le script commence par demander le nom d'utilisateur FTP à créer à l'utilisateur qui l'exécute. Ensuite, il génère un mot de passe aléatoire à l'aide de la commande `openssl rand -base64 12`.

Le script crée ensuite l'utilisateur FTP en utilisant la commande useradd avec le nom d'utilisateur, le répertoire de base et le shell.

Il définit ensuite le mot de passe pour l'utilisateur FTP en utilisant la commande chpasswd en concaténant le nom d'utilisateur et le mot de passe généré précédemment.

Le script génère également un mot de passe aléatoire pour le compte MySQL et un autre pour le compte FTP.

Enfin, le script crée une base de données MySQL et l'utilisateur associé en utilisant la commande mysql en spécifiant le nom d'utilisateur, le mot de passe MySQL, le nom de la base de données et les privilèges.

Enfin, le script affiche les informations suivantes : le nom d'utilisateur FTP, le mot de passe FTP, le nom de la base de données MySQL, le nom d'utilisateur MySQL et le mot de passe MySQL.

## Comment l'utiliser ?
Pour utiliser ce script, il suffit de l'exécuter en tant que superutilisateur.

Voici les étapes à suivre :

    1. Ouvrir un terminal en mode superutilisateur
    2. Télécharger et enregistrer le script Bash dans le répertoire souhaité
    3. Donner les droits d'exécution au script Bash à l'aide de la commande `chmod +x nom_du_script.sh`
    4. Exécuter le script Bash avec la commande `./nom_du_script.sh`
Le script demandera le nom d'utilisateur FTP à créer et affichera les informations nécessaires pour accéder à la base de données MySQL et au compte FTP.