��            )         �     �  <   �  >   
  �  I     �            S   1     �     �     �     �     �  "   �  1   !  
   S     ^  F   s     �     �  &   �  =     T   F  �  �     �      �  3   �  r     \   u  "   �  �  �  :   �  b   !  b   �  �  �  +   �  !   �  8   �  �   /     �  <   �  *   :  "   e  "   �  D   �  L   �     =  #   L  {   p  6   �     #  X   5  s   �  �     9  �  *   �)  Y   �)  t   T*    �*  �   �+  S   �,                              	              
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
PO-Revision-Date: 2013-04-10 21:24+0400
Last-Translator: Yuri Kozlov <yuray@komyakino.ru>
Language-Team: Russian <debian-l10n-russian@lists.debian.org>
Language: ru
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.4
Plural-Forms:  nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
 

Найдено перенаправление на %s.

 
Запрашивается конечная IPv4-точка %s для IPv6-адреса 6-в-4.

 
Запрашивается конечная IPv4-точка %s для IPv6-адреса Teredo.

       -m, --method=ТИП        использовать метод ТИП
      -5                      аналогично --method=md5
      -S, --salt=СОЛЬ         использовать указанную СОЛЬ
      -R, --rounds=ЧИСЛО      использовать указанное ЧИСЛО округлений
      -P, --password-fd=НОМЕР прочитать пароль из дескриптора файла
                              с НОМЕРом вместо /dev/tty
      -s, --stdin             аналогично --password-fd=0
      -h, --help              показать эту справку и закончить работу
      -V, --version           показать версию и закончить работу

Если ПАРОЛЬ не задан, то он будет затребован интерактивно.
Если не указана СОЛЬ, то будет сгенерировано произвольное значение.
Если значение ТИП равно 'help', то будет показан список доступных методов.

Сообщения об ошибках отправляйте на %s.
 %s/tcp: неизвестный сервис Доступные методы:
 Невозможно разобрать строку: %s Катастрофическая ошибка: текст правовой оговорки был изменён.
Пожалуйста, обновите программу.
 Узел %s не найден. Недопустимый для соли символ '%c'.
 Прервано по сигналу %d... Неверный метод '%s'.
 Неверный номер '%s'.
 Данный метод не поддерживается crypt(3).
 Нет whois-сервера для объектов данного вида. Пароль:  Строка запроса: "%s"

 Данный TLD не имеет whois-сервера, но можно получить доступ к базе whois на Данный TLD не имеет whois-сервера. Задержка. Доп. информацию можно получить, запустив '%s --help'.
 Неизвестный номер AS или IP-сеть. Пожалуйста, обновите программу. Использование: mkpasswd [ПАРАМЕТРЫ]... [ПАРОЛЬ [СОЛЬ]]
Шифрует ПАРОЛЬ, используя crypt(3).

 Использование: whois [ПАРАМЕТР]… ОБЪЕКТ…

-h УЗЕЛ, --host УЗЕЛ   подключиться к УЗЛУ
-p ПОРТ, --port ПОРТ   подключиться к ПОРТУ
-H                     скрыть уведомление о правах
      --verbose        разъяснять, что происходит
      --help           показать эту справку и закончить работу
      --version        показать информацию о версии и закончить работу

Эти флаги поддерживаются whois.ripe.net и некоторыми RIPE-подобными серверами:
-l                     одноуровневый минимальный поиск
-L                     найти всё при минимуме указанных совпадений
-m                     найти первый уровень при максимуме указанных совпадений
-M                     найти всё при максимуме указанных совпадений
-c                     найти наименьшее совпадение, содержащее атрибут mnt-irt
-x                     точное совпадение
-b                     вернуть краткий диапазон IP-адресов
                       с контактом для жалоб
-B                     выключить объектную фильтрацию (показ адресов эл. почты)
-G                     выключить группировку связанных объектов
-d                     возвращать также реверсные делегированные объекты DNS
-i АТР[,АТР]…          выполнить инверсный поиск для указанных АТРибутов
-T ТИП[,ТИП]…          поиск только объектов с типом ТИП
-K                     возвращать только основные ключи
-r                     выключить рекурсивный поиск контактной информации
-R                     всегда показывать локальную копию объекта домена даже
                       если она содержит перенаправление
-a                     искать на всех зеркалах базы
-s ИСТОЧНИК[,ИСТ]…     искать в базе-зеркале ИСТОЧНИКА
-g ИСТОЧНИК:ПЕРВЫЙ-ПОСЛЕДНИЙ
                       найти обновления ИСТОЧНИКА от ПЕРВОГО до ПОСЛЕДНЕГО
-t ТИП                 запросить шаблон для объекта с типом ТИП
-v ТИП                 запросить расширенный шаблон для объекта с типом ТИП
-q [version|sources|types]
                       запросить указанную информацию о сервере
 Используется сервер %s.
 Версия %s.

Сообщения об ошибках отправляйте на %s.
 Предупреждение: флаги RIPE используются с традиционным сервером. Неверная длина соли: %d байт при ожидаемой %d <= n <= %d.
 Неверная длина соли: %d байта при ожидаемой %d <= n <= %d.
 Неверная длина соли: %d байт при ожидаемой %d <= n <= %d.
 Неверная длина соли: %d байт при ожидаемой %d.
 Неверная длина соли: %d байта при ожидаемой %d.
 Неверная длина соли: %d байт при ожидаемой %d.
 стандартный 56-битный, базирующийся на DES, crypt(3) 