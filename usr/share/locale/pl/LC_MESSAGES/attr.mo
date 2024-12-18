��            )         �     �    �  �  �  !   �  !   �  /   �  =     2   I  $   |     �  %   �  .   �  +   	  *   ;	  .   f	     �	     �	     �	     �	     �	  &   
     5
     N
  @   \
  3   �
  R  �
     $     ?     X     t  P  �     �  �  �  �  �  )   �  -     @   =  S   ~  :   �  '        5  *   N  4   y  7   �  3   �  >     !   Y     {      �      �     �  /   �     #     <  L   N  <   �  �  �     u     �     �     �                                                                                    	                                       
                    %s %s
   -n, --name=name         get the named extended attribute value
  -d, --dump              get all extended attribute values
  -e, --encoding=...      encode values (as 'text', 'hex' or 'base64')
      --match=pattern     only get attributes with names matching pattern
      --only-values       print the bare values only
  -h, --no-dereference    do not dereference symbolic links
      --one-file-system   skip files on different filesystems
      --absolute-names    don't strip leading '/' in pathnames
  -R, --recursive         recurse into subdirectories
  -L, --logical           logical walk, follow symbolic links
  -P  --physical          physical walk, do not follow symbolic links
      --version           print version and exit
      --help              this help text
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
 getting attribute %s of %s listing attributes of %s setting attribute %s for %s setting attributes for %s Project-Id-Version: attr-2.5.1
Report-Msgid-Bugs-To: acl-devel@nongnu.org
PO-Revision-Date: 2021-05-20 21:45+0200
Last-Translator: Jakub Bogusz <qboosh@pld-linux.org>
Language-Team: Polish <translation-team-pl@lists.sourceforge.net>
Language: pl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
        %s %s
   -n, --name=nazwa        odczyt wartości rozszerzonego atrybutu po nazwie
  -d, --dump              odczyt wartości wszystkich rozszerzonych atrybutów
  -e, --encoding=...      kodowanie wartości (jako 'text', 'hex' lub 'base64')
      --match=wzorzec     odczyt tylko wartości atrybutów pasujących do wzorca
      --only-values       wypisywanie tylko samych wartości
  -h, --no-dereference    niepodążanie za dowiązaniami symbolicznymi
      --one-file-system   pomijanie plików na innych systemach plików
      --absolute-names    niepomijanie wiodących '/' ze ścieżek
  -R, --recursive         rekurencyjne wchodzenie do katalogów
  -L, --logical           przechodzenie logiczne, podążanie za dowiązaniami
                            symbolicznymi
  -P, --physical          przechodzenie fizyczne, niepodążanie za dowiązaniami
                            symbolicznymi
      --version           wyświetlenie informacji o wersji i zakończenie
      --help              ten tekst pomocy
   -n, --name=nazwa        ustawienie wartości atrybutu po nazwie
  -x, --remove=nazwa      usunięcie atrybutu po nazwie
  -v, --value=wartości    użycie wartości jako wartości atrybutu
  -h, --no-dereference    niepodążanie za dowiązaniami symbolicznymi
      --restore=plik      odtworzenie rozszerzonych atrybutów
      --raw               wartość atrybutu nie jest zakodowania
      --version           wyświetlenie informacji o wersji i zakończenie
      --help              ten tekst pomocy
 %s %s -- odczyt rozszerzonych atrybutów
 %s %s -- ustawianie rozszerzonych atrybutów
 %s: %s: Nie znaleziono nazwy pliku w linii %d, przerwanie pracy
 %s: Nie znaleziono nazwy pliku w linii %d standardowego wejścia, przerwanie pracy
 %s: Usunięcie wiodącego '/' ze ścieżek bezwzględnych
 %s: błędne wyrażenie regularne "%s"
 -V dozwolone tylko z -s
 Nazwa pliku do operacji jest obowiązkowa
 Wymagane jest co najmniej jedno z -s, -g, -r lub -l
 Atrybut "%1$s" dla %3$s miał wartość %2$d-bajtową:
 Atrybut "%1$s" dla %3$s ma wartość %2$d-bajtową
 Atrybut "%1$s" dla %3$s ustawiono na wartość %2$d-bajtową:
 Nie można odczytać "%s" dla %s
 Nie można wypisać listy %s
 Nie można usunąć "%s" dla %s
 Nie można ustawić "%s" dla %s
 Nie ma takiego atrybutu Dozwolone jest tylko jedno z -s, -g, -r lub -l
 Nierozpoznana opcja: %c
 Składnia: %s %s
 Składnia: %s %s
          %s %s
`%s --help' wyświetli więcej informacji.
 Składnia: %s %s
`%s --help' wyświetli więcej informacji.
 Składnia: %s [-LRSq] -s atrybut [-V wartość] ścieżka  # ustawienie wartości
          %s [-LRSq] -g atrybut ścieżka               # odczytanie wartości
          %s [-LRSq] -r atrybut ścieżka               # usunięcie atrybutu
          %s [-LRq]  -l ścieżka                       # lista atrybutów
      -s odczytuje wartość ze standardowego wejścia,
      -g zapisuje na standardowe wyjście
 odczyt atrybutu %s dla %s wypisywanie atrybutów %s ustawianie atrybutu %s dla %s ustawianie atrybutów dla %s 