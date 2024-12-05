#!/bin/bash

# Fonction principale pour deviner le nombre de fichiers
function guess_files {
    local correct_count=$(ls -1 | wc -l)  # Compte les fichiers dans le répertoire actuel
    local user_guess=0

    echo "Bienvenue dans le jeu de devinettes !"
    echo "Pouvez-vous deviner combien de fichiers se trouvent dans le répertoire actuel ?"

    while [[ $user_guess -ne $correct_count ]]; do
        read -p "Votre estimation : " user_guess

        if [[ $user_guess -lt $correct_count ]]; then
            echo "Trop bas ! Essayez encore."
        elif [[ $user_guess -gt $correct_count ]]; then
            echo "Trop haut ! Essayez encore."
        fi
    done

    echo "Bravo ! Vous avez deviné correctement : $correct_count fichiers."
}

# Appel de la fonction principale
guess_files
README.md: guessinggame.sh
	echo "# Projet : Jeu de devinettes" > README.md
	echo "" >> README.md
	echo "## Date et heure d'exécution" >> README.md
	date +"%Y-%m-%d %H:%M:%S" >> README.md
	echo "" >> README.md
	echo "## Nombre de lignes de code dans guessinggame.sh" >> README.md
	wc -l < guessinggame.sh | awk '{print $$1 " lignes"}' >> README.md
