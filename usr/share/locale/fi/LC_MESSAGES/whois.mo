��            )         �     �  <   �  >   
  �  I     �            S   1     �     �     �     �     �  "   �  1   !  
   S     ^  F   s     �     �  &   �  =     T   F  �  �     �      �  3   �  r     \   u  "   �  q  �     g  8   �  =   �  �  �       #   �     �  G   �     &     ?  "   ]     �     �  #   �  2   �  
          F     (   f     �  8   �  =   �  X     �  m     3  3   P  <   �  �   �  j   B   /   �                               	              
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
 standard 56 bit DES-based crypt(3) Project-Id-Version: whois 5.0.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2013-04-10 04:23+0200
PO-Revision-Date: 2014-06-09 15:27-0000
Last-Translator: Sami Kerola <kerolasa@iki.fi>
Language-Team: 
Language: fi
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Poedit 1.6.4
 

Löytyi viittaus %s.

 
Kysytään IPv4 ulostuloa %s IPv6:n IPv4 avaruudesta.

 
Kysytään IPv4 ulostuloa %s Teredo IPv6 tunneliosoitetta.

       -m, --method=TYPE     valitse toiminto TYPE
      -5                    sama kuin --method=md5
      -S, --salt=SUOLA      suolan valinta
      -R, --rounds=NUMERO   pyöristä numeroon
      -P, --password-fd=NUM lue salasana avoimesta tiedostosta NUM
                            äläkä terminaalista /dev/tty
      -s, --stdin           sama kuin --password-fd=0
      -h, --help            tulosta tämä ruutu
      -V, --version         tulosta versio

Ellei salasanaa määritetä se kysytään.
Ellei suolaa määritetä käytetään satunnaista.
Jos tyyppi on 'help', tulostetaan toiminnot.

Lähetä bugiraportit osoitteeseen %s.
 %s/tcp: tuntematon palvelu Käytettävissä olevat toiminnot:
 Ohjelma ei ymmärrä riviä: %s Katastrofaalinen virhe: lisenssiteksti on muuttunut.
Päivita ohjelma.
 Palvelinta %s ei löydy. Laiton merkki suolassa '%c'.
 Ohjelma keskeytyi signaaliin %d... Kelvoton metodi '%s'.
 Kelvoton numero '%s'.
 Functio crypt(3) ei tue toimintoa.
 Mikään whois palvelu ei tiedä kysyttyä tietoa. Salasana:  Kysely: "%s"

 Tälla TLD:llä ei ole whois palvelinta, voit hakea tiedot osoitteesta Tälla TLD:llä ei ole whois palvelinta. Aikakatkaisu. Käytä valitsinta '%s --help' lisätietojen saamiseen.
 Tuntematon AS-numero tai IP-verkko. Päivitä tämä ohjelma. Käyttö: mkpasswd [OPTIO] ... [SALASANA] [SUOLA]]
Salaa SALASANA crypt(3) funktiolla.

 Käyttö: whois [VALITSIN]... OBJEKTI...

-h PALVELIN, --host PALVELIN  ota yhteys PALVELIMEEN
-p PORTTI, --port PORTTI      käytä PORTTIA
-H                            piilota ilmoitukset
      --verbose               näytä mitä on tekeillä
      --help                  näytä tämä teksti
      --version               näytä versio

Seuraavat optiot ovat tuettuja whois.ripe.net palvelimella:
-l                     etsi välittömiä tietueita
-L                     etsi kaikkia vastaavia tietueita
-m                     etsi kaikki samantasoiset tai erityisemmät tietueet
-M                     etsi kaikkien tasojen erityiset tietueet
-c                     etsi vähin osuma joka liittyy mnt-irt atribuuttiin
-x                     täysosuma
-b                     palauta lyhyt osoiteavaruus ja abuse-tietue
-B                     poista objektifiltteröinti (näytä sähköpostiosoitteet)
-G                     poista objektien ryhmittely
-d                     näytä DNS delekointiobjektit
-i ATTR[,ATTR]...      tee käänteishaku käyttäen ATTRbuutteja
-T TYYP[,TYYP]...      hae ainoastaan tietyn TYYPisiä objekteja
-K                     palauta ainoastaan pääavain
-r                     älä käytä rekursiota kontaktitiedoille
-R                     pakota näyttämään paikallinen objekti vaikka se
                       sisältäisi viitteen
-a                     etsi myös tietokantakopioista
-s KOP[,KOP]...        käytä KOPioita
-g KOP:EKA-VIKA        hae päivityksiä KOPioista sarjoista EKAsta VIKAaan.
-t TYYPPI              hae mallinne objektille TYYPPI
-v TYYPPI              hae pitkämallinne objektille TYYPPI
.q [versio|lähde|tyyppi]   hae erityisiä palvelin tietoja
 Käytetään palvelinta %s.
 Versio %s.

Lähetä bugiraportit osoitteeseen %s.
 Varoitus: käytät RIPE valitsimia perinteiseen palvelimeen. Väärä suolan pituus: %d tavu, kun %d <= n <= %d odotettiin.
 Väärä suolan pituus: %d tavua, kun %d <= n <= %d odotettiin.
 Väärä suolan pituus: %d tavu, kun %d odotettiin.
 Väärä suolan pituus: %d tavua, kun %d odotettiin.
 Standardi 56-bittinen DES-salaus katso crypt(3) 