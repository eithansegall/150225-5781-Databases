
[General]
Version=1

[Preferences]
Username=
Password=2728
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=EITHAN
Name=THREAT
Count=20000

[Record]
Name=T_ID
Type=NUMBER
Size=
Data=Sequence(1)
Master=

[Record]
Name=SEVERITY
Type=NUMBER
Size=
Data=Random(1, 5)
Master=

[Record]
Name=IMMEDIACY
Type=NUMBER
Size=
Data=Random(1, 5)
Master=

[Record]
Name=ENEMY
Type=VARCHAR2
Size=20
Data=List('hamas', 'hizbala', 'iran','terror','bombs')
Master=

