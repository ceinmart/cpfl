��            )         �     �  <   �  >   
  �  I     �            S   1     �     �     �     �     �  "   �  1   !  
   S     ^  F   s     �     �  &   �  =     T   F  �  �     �      �  3   �  r     \   u  "   �  �  �     �  9   �  ;   �  �  )     (     C  -   Z  u   �     �           6     W     r  -   �  :   �  
   �     �  U     "   r     �  C   �  h   �  b   V  �  �     m"  6   �"  I   �"  �   #  o   �#  &   �#                              	              
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
Report-Msgid-Bugs-To: whois@packages.debian.org
POT-Creation-Date: 2013-04-10 04:23+0200
PO-Revision-Date: 2013-04-27 21:32+0200
Last-Translator: Chris Leick <c.leick@vollbio.de>
Language-Team: German <debian-l10n-german@lists.debian.org>
Language: de
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
 

Verweis auf %s gefunden.

 
Abfrage des IPv4-Endpunkts %s einer 6to4-IPv6-Adresse.

 
Abfrage des IPv4-Endpunkts %s einer Teredo-IPv6-Adresse.

       -m, --method=TYP      wählt die Methode TYP aus.
      -5                    wie --method=md5
      -S, --salt=SALT       benutzt angegebenes SALT.
      -R, --rounds=ANZAHL   benutzt angegebene ANZAHL von Runden.
      -P, --password-fd=NUM liest das Passwort vom Dateideskriptor NUM anstatt
                            von /dev/tty
      -s, --stdin           wie --password-fd=0
      -h, --help            zeigt diese Hilfe an und beendet sich.
      -V, --version         zeigt Versionsinformationen an und beendet sich.

Falls das PASSWORT fehlt, wird es interaktiv erfragt.
Falls SALT nicht angegeben wurde, wird ein zufälliges erzeugt.
Wenn der TYP »help« ist, werden die verfügbaren Methoden ausgegeben.

Berichten Sie Fehler auf Englisch an %s.
 %s/tcp: unbekannter Dienst Verfügbare Methoden:
 Diese Zeile kann nicht ausgewertet werden: %s Katastrophaler Fehler: Haftungsausschlusstext wurde geändert.
Bitte führen Sie ein Upgrade dieses Programms durch.
 Host %s nicht gefunden. Illegales Salt-Zeichen »%c«.
 Durch Signal %d unterbrochen … Ungültige Methode »%s«
 Falsche Nummer »%s«.
 Methode nicht von »crypt(3)« unterstützt.
 Für diese Art von Objekten ist kein Whois-Server bekannt. Passwort:  Abfragezeichenkette: »%s«

 Diese TLD hat keinen Whois-Server, kann aber auf eine Whois-Datenbank zugreifen unter Diese TLD hat keinen Whois-Server. Zeitüberschreitung Versuchen Sie »%s --help«, um weitere Informationen zu erhalten.
 Unbekannte AS-Nummer oder unbekanntes IP-Netzwerk. Bitte führen Sie ein Upgrade dieses Programms durch. Aufruf: mkpasswd [OPTIONEN] ... [PASSWORT] [SALT]]
Verschlüsselt das PASSWORT mit »crypt(3)«.

 Aufruf: whois [OPTION] … OBJEKT …

-h HOST, --host HOST   verbindet sich mit Server HOST.
-p PORT, --port PORT   verbindet sich mit PORT.
-H                     versteckt Haftungsausschlussklauseln.
      --verbose        erklärt, was getan wird.
      --help           zeigt diese Hilfe und beendet sich.
      --version        gibt Versionsinformationen aus und beendet sich.

Diese Schalter werden von whois.ripe.net und einigen RIPE ähnlichen Servern
unterstützt:
-l                     sucht den um eine Stufe weniger spezifischen Treffer.
-L                     sucht alle Stufen weniger spezifischer Treffer.
-m                     sucht alle um eine Stufe spezifischeren Treffer.
-M                     sucht alle Stufen der spezifischeren Treffer.
-c                     sucht die kleinste Übereinstimmung eines
                       »mnt-irt«-Attributs.
-x                     exakte Übereinstimmung
-b                     gibt einen kurzen IP-Adressbereich mit Beschwerdekontakt
                       zurück.
-B                     schaltet die Objektfilterung aus (zeigt E-Mail-Adressen)
-G                     schaltet die Gruppierung verbundener Objekte aus.
-d                     gibt auch DNS-Reverse-Delegation-Objekte zurück.
-i ATTR[,ATTR] …       schlägt angegebene ATTRibute in umgekehrter Richtung
                       nach.
-T TYP[,TYP] …         beachtet nur Objekte dieses TYPs.
-K                     gibt nur Primärschlüssel zurück.
-r                     schaltet das rekursive Nachschlagen von
                       Kontaktinformationen aus.
-R                     erzwingt die Anzeige einer lokalen Kopie des
                       Domain-Objekts, selbst wenn es einen Verweis enthält.
-a                     durchsucht auch die gespiegelten Datenbanken.
-s QUELLE[,QUELLE] …   durchsucht die von QUELLE gespiegelte Datenbank.
-g QUELLE:ANFANG-ENDE  sucht Aktualisierungen der QUELLE aufeinanderfolgend von
                       ANFANG bis ENDE
-t TYP                 fragt die Schablone des Objekts des TYPs ab.
-v TYP                 fragt die Schablone des Objekts des TYPs ausführlich ab.
-q [version|sources|types]  fragt die angegebene Server-Information ab.
 Server %s wird benutzt.
 Version %s.

Berichten Sie Fehler auf Englisch an %s.
 Warnung: RIPE-Flags wurden mit einem »traditionellen« Server verwendet. Falsche Salt-Länge: %d Byte, aber %d <= n <= %d wurden erwartet.
 Falsche Salt-Länge: %d Byte, aber %d <= n <= %d wurden erwartet.
 Falsche Salt-Länge: %d Byte, aber %d wurden erwartet.
 Falsche Salt-Länge: %d Byte, aber %d wurden erwartet.
 Standard-56-Bit-DES-basiertes Crypt(3) 