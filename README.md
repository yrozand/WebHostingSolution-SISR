# Solution d'hébergement de site Web
Ce document présente une solution d'hébergement de site Web pour le projet SISR. L'objectif est de mutualiser l'hébergement des sites sur un même serveur tout en garantissant la sécurité des accès offerts à chacune des structures.

## Contexte et objectifs
Dans cette situation, nous devons proposer une solution d'hébergement de site Web similaire à OVH. Nous devons travailler en équipe pour finir le projet dans les temps et avec toute la documentation nécessaire.

L'architecture générale du fonctionnement est la suivante : nous disposons d'un serveur Web et d'une ou plusieurs bases de données pour héberger plusieurs sites ainsi que les données. Chaque site porte un nom de domaine choisi par les groupes SLAM.

Le serveur FTP permet aux développeurs de déposer leur production. Ils ont besoin pour cela d'un compte fourni par le groupe SISR. L'accès doit être sécurisé. L'accès à l'hébergeur par les développeurs doit se faire par l'intermédiaire d'une machine servant de routeur pare-feu. De même pour la consultation des sites par un internaute.

L'accès au site se fait par le nom du site (par ex www.siteGroupeSlam.fr) ce qui suppose une solution de résolution de nom (DNS). Une importance toute particulière est apportée à la sécurité : serveurs Web sécurisés, bases de données et FTP.

En option : réaliser un script permettant d'automatiser l'hébergement d'un nouveau site et tous ce que cela implique.

## Phase préparatoire
Avant de mettre en place l'infrastructure, il est important de se poser certaines questions, telles que :

Quel environnement choisir (easy php, wamp, xamp, apache et mysql séparés ?)
Comment se fait le multi-hébergement sur un serveur Apache ?
Comment sécuriser un serveur Web, FTP et une base de données ?
## Phase de réalisation
Pour mettre en place l'infrastructure, nous allons :

Choisir l'environnement adéquat (easy php, wamp, xamp, apache et mysql séparés)
Configurer le serveur Apache pour le multi-hébergement
Sécuriser le serveur Web, FTP et la base de données
## Phase de test
Nous devons préparer un ensemble de tests, y compris des tests de sécurité, pour vérifier que le résultat est conforme.
## Authors

- [@yrozand](https://github.com/yrozand)
- [@alexou273](https://github.com/alexou273)
- Pierre
