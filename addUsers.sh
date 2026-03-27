#!/bin/bash

# Verification de la présence d'au moins un argument 
if [ $# = 0 ]
then
        echo "Il manque les noms d'utilisateurs en argument - Fin du Script"
        # Sortie indiquant une erreur
        exit 1
fi

# Blouce de création d'utilisateur peu importe le nombre 
for username in $@
do

#Vérification existence de l'utilisateur
if cat /etc/passwd | grep $username > /dev/null
        then
                echo "L'utilisateur $username existe déjà"
        else
                #Creation de l'utilisateur sans interraction et de son repertoire
                useradd -m $username
                #Verification de la creation
                if cat /etc/passwd | grep $username > /dev/null 
                        then
                                echo "L'utilisateur $username a été crée"
                else
                                echo "Erreur à la création de l'utilisateur $username"
                fi
fi
done 
