��            )         �     �  <   �  >   
  �  I     �            S   1     �     �     �     �     �  "   �  1   !  
   S     ^  F   s     �     �  &   �  =     T   F  �  �     �      �  3   �  r     \   u  "   �  p  �      f  6   �  8   �  �  �     �     �  (     T   ;     �  ,   �     �     �           -  :   N  
   �     �  J   �  *   �       ,   +  M   X  Q   �  m  �     f   $   y   F   �      �   i   e!  (   �!                              	              
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
PO-Revision-Date: 2013-04-10 04:19+0200
Last-Translator: Marco d'Itri <md@linux.it>
Language-Team: Italian <tp@lists.linux.it>
Language: it
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
 

Trovato un riferimento a %s.

 
Cerco l'endpoint IPv4 %s di un indirizzo IPv6 6to4.

 
Cerco l'endpoint IPv4 %s di un indirizzo IPv6 Teredo.

       -m, --method=TIPO     seleziona il TIPO di metodo
      -5                    come --method=md5
      -S, --salt=SALE       usa il SALE specificato
      -R, --rounds=NUMBER   usa il NUMERO indicato di iterazioni
      -P, --password-fd=NUM legge la password dal file descriptor NUM
                            invece che da /dev/tty
      -s, --stdin           come --password-fd=0
      -h, --help            mostra questo aiuto ed esce
      -v, --version         mostra le informazioni sulla versione ed esce

Se la PASSWORD non è specificata viene chiesta interattivamente.
Se il SALE non è specificato ne viene generato uno casuale.
Se il TIPO è 'help' viene stampata la lista degli algoritmi disponibili.

Segnalare i bug a %s.
 %s/tcp: servizio sconosciuto Metodi disponibili:
 Impossibile interpretare questa riga: %s Errore catastrofico: il testo di avvertenze è cambiato.
Aggiorna questo programma.
 Host %s non trovato. Il carattere '%c' non è valido in un sale.
 Interrotto dal segnale %d... Il metodo '%s' non è valido.
 Il numero '%s' non è valido.
 Metodo non gestito da crypt(3).
 Non è noto alcun server whois per questo tipo di oggetto. Password:  Richiesta: "%s"

 Questo TLD non ha un server whois, ma si può accedere al database tramite Non esiste un server whois per questo TLD. Tempo scaduto. Per maggior informazioni prova '%s --help'.
 Numero dell'AS o della rete IP sconosciuto. Per favore aggiorna il programma. Uso: mkpasswd [OPZIONI]... [PASSWORD [SALE]]
Cifra la PASSWORD usando crypt(3).

 Uso: whois [OPZIONE]... OGGETTO...

-h HOST, --host HOST    si connette al server HOST
-p PORTA, --port PORTA  si connette alla PORTA
-H                 nasconde le avvertenze legali
      --verbose    spiega cosa sta facendo
      --help       mostra questo aiuto ed esce
      --version    stampa le informazioni sulla versione ed esce

Le seguenti opzioni sono gestite da whois.ripe.net e alcuni server simili:
-l                 trova la corrispondenza un livello meno specifica
-L                 trova le corrispondenze meno specifiche a tutti i livelli
-m                 trova le corrispondenze di primo livello più specifiche
-M                 trova le corrispondenze più specifiche a tutti i livelli
-c                 trova la corrispondenza più specifica contenente un
                   attributo mnt-irt
-x                 trova solo la corrispondenza esatta
-b                 mostra solo la rete IP con il contatto per gli abusi
-B                 non filtra gli oggetti (mostra gli indirizzi di e-mail)
-B                 non raggruppa gli oggetti associati
-d                 restituisce anche gli oggetti della delega del DNS
-i ATTR[,ATTR]...  fa una ricerca inversa per l'ATTRibuto specificato
-T TIPO[,TIPO]...  cerca solo oggetti del TIPO
-K                 restituisce solo le chiavi primarie
-r                 disabilita le ricerche ricorsive per i contatti
-R                 mostra la copia locale dell'oggetto domain anche se
                   contiene un riferimento
-a                 cerca anche in tutti i database replicati
-s SOURCE[,SOURCE]...  cerca il database replicato da SOURCE
-g SOURCE:FIRST-LAST  trova gli aggiornamenti di SOURCE dal seriale F a L
-t TIPO            chiede il template per un oggetto del TIPO
-v TIPO            chiede il template prolisso per un oggetto del TIPO
-q [version|sources|types]  chiede al server le informazioni indicate
 Uso il server %s.
 Versione %s.

Segnalare i bug a %s.
 Attenzione: sono stati usati dei flag RIPE con un server tradizionale. Lunghezza del sale sbagliata: %d byte invece di %d <= n <= %d.
 Lunghezza del sale sbagliata: %d byte invece di %d <= n <= %d.
 Lunghezza del sale sbagliata: %d byte invece di %d.
 Lunghezza del sale sbagliata: %d byte invece di %d.
 crypt(3) standard a 56 bit basata su DES 