
[General]
Version=1

[Preferences]
=
Username=
Password=2428
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=EITHAN
Name=OPERATION
Count=20000

[Record]
Name=OP_ID
Type=NUMBER
Size=
Data=Sequence(1)
Master=

[Record]
Name=EXE_UNIT
Type=VARCHAR2
Size=35
Data=List('maglan', 'shaldag', 'matcal','duvdevan','golani','givati') +List('  reg ')  + Random(1, 10)
Master=

[Record]
Name=OP_NAME
Type=VARCHAR2
Size=35
Data=List('gezer', 'hazav', 'bareket','dishon','tzuk','nazelet')+List(' num ')+  Random(0, 7)
Master=

[Record]
Name=BUDJET
Type=NUMBER
Size=
Data=Random(10000, 1000000)
Master=

[Record]
Name=T_ID
Type=NUMBER
Size=
Data=Sequence(1)
Master=

