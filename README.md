# ft_printf

ft_printf est une implémentation personnalisée de la fonction standard `printf` en C. Cette version permet d'afficher du texte formaté avec un ensemble limité de spécificateurs.

## Installation

Pour compiler `ft_printf.c` et ses fichiers associés, utilisez la commande suivante :

```sh
gcc -Wall -Wextra -Werror ft_printf.c -o ft_printf
```

## Utilisation

Dans votre projet, incluez le fichier d'en-tête de la bibliothèque :

```c
#include "ft_printf.h"
```

Exemple d'utilisation de `ft_printf` :

```c
#include "ft_printf.h"

int main(void)
{
    int len;
    
    len = ft_printf("Hello, %s! You are %d years old.\n", "Alice", 25);
    ft_printf("Nombre de caractères imprimés : %d\n", len);
    return (0);
}
```

## Fonctionnalités

- Gestion des spécificateurs de format :
  - `%c` : Affiche un caractère
  - `%s` : Affiche une chaîne de caractères
  - `%p` : Affiche un pointeur en notation hexadécimale
  - `%d` / `%i` : Affiche un entier signé
  - `%u` : Affiche un entier non signé
  - `%x` / `%X` : Affiche un entier en hexadécimal (minuscule/majuscule)
  - `%%` : Affiche le caractère `%`

## Fonctions implémentées

- `ft_printf` : Fonction principale traitant les spécificateurs de format
- `ft_putchar_count` : Affiche un caractère
- `ft_putstr_count` : Affiche une chaîne de caractères
- `ft_putnbr_count` : Affiche un nombre entier
- `ft_put_hexa_count` : Affiche un nombre en hexadécimal
- `ft_putptr_count` : Affiche l'adresse mémoire d'un pointeur
