��            )   �      �     �  �  �  !   v  !   �  /   �  =   �  2   (  $   [     �  %   �  .   �  +   �  *     .   E     t     �     �     �     �  &   �          -  @   ;  3   |  R  �     	     	     7	     S	  �  m	       �    (   �  ,     B   H  R   �  =   �  4        Q  @   q  :   �  ?   �  <   -  H   j  (   �     �  )   �  '         H  9   Y     �     �  [   �  G     �  d      @     a  %     "   �                                                  
                                                                          	                    %s %s
   -n, --name=name         set the value of the named extended attribute
  -x, --remove=name       remove the named extended attribute
  -v, --value=value       use value as the attribute value
  -h, --no-dereference    do not dereference symbolic links
      --restore=file      restore extended attributes
      --raw               attribute value is not encoded
      --version           print version and exit
      --help              this help text
 %s %s -- get extended attributes
 %s %s -- set extended attributes
 %s: %s: No filename found in line %d, aborting
 %s: No filename found in line %d of standard input, aborting
 %s: Removing leading '/' from absolute path names
 %s: invalid regular expression "%s"
 -V only allowed with -s
 A filename to operate on is required
 At least one of -s, -g, -r, or -l is required
 Attribute "%s" had a %d byte value for %s:
 Attribute "%s" has a %d byte value for %s
 Attribute "%s" set to a %d byte value for %s:
 Could not get "%s" for %s
 Could not list %s
 Could not remove "%s" for %s
 Could not set "%s" for %s
 No such attribute Only one of -s, -g, -r, or -l allowed
 Unrecognized option: %c
 Usage: %s %s
 Usage: %s %s
       %s %s
Try `%s --help' for more information.
 Usage: %s %s
Try `%s --help' for more information.
 Usage: %s [-LRSq] -s attrname [-V attrvalue] pathname  # set value
       %s [-LRSq] -g attrname pathname                 # get value
       %s [-LRSq] -r attrname pathname                 # remove attr
       %s [-LRq]  -l pathname                          # list attrs 
      -s reads a value from stdin and -g writes a value to stdout
 getting attribute %s of %s listing attributes of %s setting attribute %s for %s setting attributes for %s Project-Id-Version: attr
Report-Msgid-Bugs-To: acl-devel@nongnu.org
PO-Revision-Date: 2022-12-03 12:43+0100
Last-Translator: Jean-Pierre Giraud <jean-pierregiraud@neuf.fr>
Language-Team: French <debian-l10n-french@lists.debian.org>
Language: fr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
X-Generator: Lokalize 2.0
        %s %s
   -n, --name=nom          affecter la valeur à l'attribut étendu nom
  -x, --remove=nom        supprimer l'attribut étendu nom
  -v, --value=val         donner à l'attribut la valeur val
  -h, --no-dereference    ne pas déréférencer les liens symboliques
      --restore=fichier   rétablir les attributs étendus
      --raw               valeur de l'attribut non typée
      --version           afficher la version et quitter
      --help              afficher cette aide
 %s %s -- obtenir les attributs étendus
 %s %s -- positionner les attributs étendus
 %s : %s : la ligne %d ne contient aucun nom de fichier, abandon
 %s : la ligne %d de l'entrée standard ne contient aucun nom de fichier, abandon
 %s : Suppression des « / » en tête des chemins absolus
 %s : expression rationnelle non valable « %s »
 -V n'est compatible qu'avec -s
 Le nom du fichier auquel s'applique la commande est nécessaire
 Au moins un des commutateurs -s, -g, -r ou -l est requis.
 L'attribut « %s » avait une valeur de %d octets pour %s :
 L'attribut « %s » avait une valeur de %d octets pour %s
 L'attribut « %s » positionné à une valeur de %d octets pour %s :
 Impossible d'obtenir « %s » pour %s
 Impossible d'afficher %s
 Impossible de supprimer « %s » de %s
 Impossible d'affecter « %s » à %s
 Attribut inconnu Un seul des commutateurs -s, -g, -r ou -l est autorisé.
 Option inconnue : %c
 Utilisation : %s %s
 Utilisation : %s %s
              %s %s
Taper « %s --help » pour plus d'informations.
 Utilisation : %s %s
Taper « %s --help » pour plus d'informations.
 Utilisation :
       %s [-LRSq] -s nom_attr [-V val_attr] chemin   # affecter la valeur.
       %s [-LRSq] -g nom_attr chemin                 # obtenir la valeur.
       %s [-LRSq] -r nom_attr chemin                 # supprimer
                     l'attribut.
       %s [-LRq]  -l chemin                          # afficher les
                     attributs 
       -s lire la valeur à affecter sur l'entrée standard.
       -g envoyer la valeur sur la sortie standard.
 obtention de l'attribut %s de %s affichage des attributs de %s positionnement de l'attribut %s de %s positionnement des attributs de %s 