��            )         �     �  <   �  >   
  �  I     �            S   1     �     �     �     �     �  "   �  1   !  
   S     ^  F   s     �     �  &   �  =     T   F  �  �     �      �  3   �  r     \   u  "   �  �  �  !   �  7   �  4     �  T     0     H  &   Z  P   �      �     �          '     C  '   _  ;   �     �     �  K   �  &   )     P  $   e  =   �  \   �  �  %     �   /   !  ,   7!  �   d!  �   *"  4   �"                              	              
                                                                                            

Found a referral to %s.

 
Querying for the IPv4 endpoint %s of a 6to4 IPv6 address.

 
Querying for the IPv4 endpoint %s of a Teredo IPv6 address.

       -m, --method=TYPE     select method TYPE
      -5                    like --method=md5
      -S, --salt=SALT       use the specified SALT
      -R, --rounds=NUMBER   use the specified NUMBER of rounds
      -P, --password-fd=NUM read the password from file descriptor NUM
                            instead of /dev/tty
      -s, --stdin           like --password-fd=0
      -h, --help            display this help and exit
      -V, --version         output version information and exit

If PASSWORD is missing then it is asked interactively.
If no SALT is specified, a random one is generated.
If TYPE is 'help', available methods are printed.

Report bugs to %s.
 %s/tcp: unknown service Available methods:
 Cannot parse this line: %s Catastrophic error: disclaimer text has been changed.
Please upgrade this program.
 Host %s not found. Illegal salt character '%c'.
 Interrupted by signal %d... Invalid method '%s'.
 Invalid number '%s'.
 Method not supported by crypt(3).
 No whois server is known for this kind of object. Password:  Query string: "%s"

 This TLD has no whois server, but you can access the whois database at This TLD has no whois server. Timeout. Try '%s --help' for more information.
 Unknown AS number or IP network. Please upgrade this program. Usage: mkpasswd [OPTIONS]... [PASSWORD [SALT]]
Crypts the PASSWORD using crypt(3).

 Usage: whois [OPTION]... OBJECT...

-h HOST, --host HOST   connect to server HOST
-p PORT, --port PORT   connect to PORT
-H                     hide legal disclaimers
      --verbose        explain what is being done
      --help           display this help and exit
      --version        output version information and exit

These flags are supported by whois.ripe.net and some RIPE-like servers:
-l                     find the one level less specific match
-L                     find all levels less specific matches
-m                     find all one level more specific matches
-M                     find all levels of more specific matches
-c                     find the smallest match containing a mnt-irt attribute
-x                     exact match
-b                     return brief IP address ranges with abuse contact
-B                     turn off object filtering (show email addresses)
-G                     turn off grouping of associated objects
-d                     return DNS reverse delegation objects too
-i ATTR[,ATTR]...      do an inverse look-up for specified ATTRibutes
-T TYPE[,TYPE]...      only look for objects of TYPE
-K                     only primary keys are returned
-r                     turn off recursive look-ups for contact information
-R                     force to show local copy of the domain object even
                       if it contains referral
-a                     also search all the mirrored databases
-s SOURCE[,SOURCE]...  search the database mirrored from SOURCE
-g SOURCE:FIRST-LAST   find updates from SOURCE from serial FIRST to LAST
-t TYPE                request template for object of TYPE
-v TYPE                request verbose template for object of TYPE
-q [version|sources|types]  query specified server info
 Using server %s.
 Version %s.

Report bugs to %s.
 Warning: RIPE flags used with a traditional server. Wrong salt length: %d byte when %d <= n <= %d expected.
 Wrong salt length: %d bytes when %d <= n <= %d expected.
 Wrong salt length: %d byte when %d expected.
 Wrong salt length: %d bytes when %d expected.
 standard 56 bit DES-based crypt(3) Project-Id-Version: whois 5.0.24
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2013-04-10 04:23+0200
PO-Revision-Date: 2013-04-11 17:48+0200
Last-Translator: Jakub Bogusz <qboosh@pld-linux.org>
Language-Team: Polish <translation-team-pl@lists.sourceforge.net>
Language: pl
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-2
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=n==1 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
 

Znaleziono odniesienie do %s.

 
Pytanie o zako�czenie IPv4 %s adresu IPv6 typu 6to4.

 
Pytanie o zako�czenie IPv4 %s adresu IPv6 Teredo.

       -m, --method=TYP      wyb�r metody TYP
      -5                    to samo, co --method=md5
      -S, --salt=ZARODEK    u�ycie podanego ZARODKA
      -R, --rounds=LICZBA   u�ycie podanej LICZBY cykli
      -P, --password-fd=NUM odczyt has�a z deskryptora pliku NUM zamiast
                            z /dev/tty
      -s, --stdin           to samo co --password-fd=0
      -h, --help            wy�wietlenie tego opisu i zako�czenie dzia�ania
      -V, --version         wy�wietlenie informacji o wersji i zako�czenie dzia�ania

Je�li nie podano HAS�A, pobierane jest interaktywnie.
Je�li nie podano ZARODKA, generowany jest losowy.
Je�li podano TYP 'help', wypisywane s� dost�pne metody.

B��dy prosz� zg�asza� na adres %s.
 %s/tcp: us�uga nieznana Dost�pne metody:
 Nie mo�na przeanalizowa� tej linii: %s Katastrofa! Tekst o�wiadczenia zosta� zmieniony.
Prosz� uaktualni� ten program.
 Serwer %s nie zosta� znaleziony. B��dny znak zarodka '%c'.
 Przerwano sygna�em %d... Nieprawid�owa metoda '%s'.
 Nieprawid�owa liczba '%s'.
 Metoda nie obs�ugiwana przez crypt(3).
 Dla tego rodzaju obiektu nie jest znany �aden serwer whois. Has�o:  Zapytanie: "%s"

 Ta g��wna domena nie ma serwera whois, ale mo�na u�y� bazy danych whois pod Ta g��wna domena nie ma serwera whois. Up�yn�� limit czasu. '%s --help' poda wi�cej informacji.
 Nieznany numer AS lub sie� IP. Prosz� uaktualni� ten program. Sk�adnia: mkpasswd [OPCJE]... [HAS�O [ZARODEK]]
Koduje HAS�O przy u�yciu funkcji crypt(3).

 Sk�adnia: whois [OPCJA]... OBIEKT...

-h HOST, --host HOST   ��czenie z serwerem HOST
-p PORT, --port PORT   ��czenie z portem PORT
-H                     ukrycie o�wiadcze� prawnych
      --verbose        wyja�nianie, co si� dzieje
      --help           wy�wietlenie tego opisu i zako�czenie dzia�ania
      --version        wy�wietlenie informacji o wersji i zako�czenie dzia�ania

Nast�puj�ce flagi s� obs�ugiwane przez serwery whois.ripe.net i podobne:
-l                     zapytanie o jeden poziom mniej szczeg�owe
-L                     wyszukanie wszystkich mniej szczeg�owych dopasowa�
-m                     wyszukanie pierwszego bardziej szczeg�owego dopasowania
-M                     wyszukanie wszystkich bardziej szczeg�owych dopasowa�
-c                     wyszukanie najmniejszego dopasowania z atrybutem mnt-irt
-x                     dok�adne dopasowanie
-b                     wypisanie zwi�le przedzia��w adres�w IP i kontaktu abuse
-B                     bez filtrowania abiekt�w (wy�wietlanie adres�w e-mail)
-G                     bez grupowania powi�zanych obiekt�w
-d                     tak�e obiekty odwrotnej delegacji DNS
-i ATR[,ATR]...        wykonanie odwrotnego wyszukiwania ATRybut�w
-T TYP[,TYP]...        szukanie tylko obiekt�w podanego TYPU
-K                     zwr�cenie tylko podstawowych kluczy
-r                     bez rekursywnego poszukiwania informacji kontaktowych
-R                     wymuszenie pokazania lokalnej kopii obiektu domeny nawet
                       je�li zawiera odwo�anie
-a                     przeszukanie wszystkich baz danych z kopii lustrzanej
-s �R�D�O[,�R�D�O]...  przeszukanie odbicia lustrzanego bazy danych ze �R�D�A
-g �R�D�O:PIERW.-OST.  szukanie uaktualnie� ze �R�D�A od numeru PIERW. do OST.
-t TYP                 ��danie szablonu dla obiektu podanego TYPU
-v TYP                 ��danie szczeg�owego szablonu dla obiektu podanego TYPU
-q [version|sources|types]  zapytanie serwera o podane informacje
 U�ycie serwera %s.
 Wersja %s.

B��dy prosz� zg�asza� na adres %s.
 Uwaga: u�yto flag RIPE ze starszym serwerem. B��dna d�ugo�� zarodka: %d bajt kiedy oczekiwano %d <= n <= %d.
 B��dna d�ugo�� zarodka: %d bajty kiedy oczekiwano %d <= n <= %d.
 B��dna d�ugo�� zarodka: %d bajt�w kiedy oczekiwano %d <= n <= %d.
 B��dna d�ugo�� zarodka: %d bajt kiedy oczekiwano %d.
 B��dna d�ugo�� zarodka: %d bajty kiedy oczekiwano %d.
 B��dna d�ugo�� zarodka: %d bajt�w kiedy oczekiwano %d.
 standardowa 56-bitowa, oparta o DES funkcja crypt(3) 