
Si nombre_argument = 0
Alors 
	Afficher "Il manque les noms d'utilisateurs en argument - Fin du script"
Exit

Pour chaque username dans liste_argument
Fait
	Si username est présent dans /etc/passwd
		Affiche "L'utilisateur username existe déjà"
Sinon
	Creation utilisateur username
	Si username est présent dans /etc/passwd
		Affiche "L'utilisateur username a été crée"
	Sinon
		Affiche "Erreur à la création de l'utilisateur username "
Fait 
