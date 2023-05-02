!/bin/bash

# Demande le nom d'utilisateur à créer
read -p "Entrez le nom d'utilisateur FTP : " username

# Génère un mot de passe aléatoire
password=$(openssl rand -base64 12)

# Crée l'utilisateur FTP
useradd -m -d /var/www/$username -s /bin/false $username

# Définit le mot de passe pour l'utilisateur FTP
echo "$username:$password" | chpasswd

# Génère un mot de passe aléatoire pour le compte MySQL
mysql_password=$(openssl rand -base64 12)

# Génère un mot de passe aléatoire pour le compte FTP
ftp_password=$(openssl rand -base64 12)

# Crée la base de données MySQL et l'utilisateur associé
mysql -u root -p -e "CREATE DATABASE BDD-$username; CREATE USER '$username'@'localhost' IDENTIFIED BY '$mysql_password'; GRANT ALL PRIVILEGES ON BBD-$username.* TO '$username'@'localhost';"

# Affiche le nom d'utilisateur et le mot de passe
echo "Nom d'utilisateur FTP : $username"
echo "Mot de passe FTP : $ftp_password"
echo "Nom de la base de données MySQL : $username"
echo "Nom d'utilisateur MySQL : $username"
echo "Mot de passe MySQL : $mysql_password"