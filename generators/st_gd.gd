
[General]
Version=1

[Preferences]
Username=
Password=2631
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=EITHAN
Name=SPECIAL_TOOL
Count=500

[Record]
Name=ST_ID
Type=NUMBER
Size=
Data=Sequence(1)
Master=

[Record]
Name=PRICE
Type=NUMBER
Size=
Data=Random(1000, 5000000)
Master=

[Record]
Name=TYPE
Type=VARCHAR2
Size=20
Data=List('technological', 'chemical','atomic','intelligence','total global destruction')
Master=

[Record]
Name=ST_NAME
Type=VARCHAR2
Size=20
Data=List('Grizzly', 'crocodile','lion','Wolf','elephant') + Random(100, 999)
Master=

