ˆG
ÖC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\DapperContext\Repository\Repository.cs
	namespace

 	
DapperRepositories


 
.

 

Repository

 '
{ 
public 

class 

Repository 
: 
IRepository )
{ 
private 
readonly 
IDapperContext '
_context( 0
;0 1
public 

Repository 
( 
IDapperContext (
context) 0
)0 1
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
int 
> 
DeleteAsync *
<* +
T+ ,
>, -
(- .
string. 4
command5 <
,< =
object> D
parmsE J
)J K
{ 	
using 
( 
var 

connection  
=! "
_context# +
.+ ,
CreateConnection, <
(< =
)= >
)> ?
{ 
var 
result 
= 
await !

connection" ,
., -
ExecuteAsync- 9
(9 :
command: A
,A B
parmsC H
,H I
commandType 
:  
System! '
.' (
Data( ,
., -
CommandType- 8
.8 9
StoredProcedure9 H
)H I
;I J
_context 
. 
CloseConnection (
(( )

connection) 3
)3 4
;4 5
return 
result 
; 
} 
} 	
public   
async   
Task   
<   
List   
<   
T    
>    !
>  ! "
GetAllAsync  # .
<  . /
T  / 0
>  0 1
(  1 2
string  2 8
query  9 >
,  > ?
object  @ F
parms  G L
)  L M
{!! 	
using"" 
("" 
var"" 

connection"" !
=""" #
_context""$ ,
."", -
CreateConnection""- =
(""= >
)""> ?
)""? @
{## 
var$$ 
result$$ 
=$$ 
await$$ "

connection$$# -
.$$- .

QueryAsync$$. 8
<$$8 9
T$$9 :
>$$: ;
($$; <
query$$< A
,$$A B
parms$$C H
)$$H I
;$$I J
_context%% 
.%% 
CloseConnection%% (
(%%( )

connection%%) 3
)%%3 4
;%%4 5
return&& 
result&& 
.&& 
ToList&& $
(&&$ %
)&&% &
;&&& '
}'' 
}(( 	
public** 
async** 
Task** 
<** 
T** 
>** 
GetAsync** %
<**% &
T**& '
>**' (
(**( )
string**) /
query**0 5
,**5 6
object**7 =
parms**> C
)**C D
{++ 	
using,, 
(,, 
var,, 

connection,, !
=,," #
_context,,$ ,
.,,, -
CreateConnection,,- =
(,,= >
),,> ?
),,? @
{-- 
var.. 
result.. 
=.. 
await.. "

connection..# -
...- .

QueryAsync... 8
<..8 9
T..9 :
>..: ;
(..; <
query..< A
,..A B
parms..C H
)..H I
;..I J
_context// 
.// 
CloseConnection// (
(//( )

connection//) 3
)//3 4
;//4 5
return00 
result00 
.00 
First00 #
(00# $
)00$ %
;00% &
}11 
}22 	
public44 
async44 
Task44 
<44 (
GetPersonWithAppointmentsDTO44 6
>446 7+
GetPersonWithAppointmentsByJmbg448 W
(44W X
string44X ^
query44_ d
,44d e
string44f l
jmbg44m q
)44q r
{55 	
using66 
(66 
var66 

connection66 !
=66" #
_context66$ ,
.66, -
CreateConnection66- =
(66= >
)66> ?
)66? @
{77 
var88 
result88 
=88 
await88 "

connection88# -
.88- .

QueryAsync88. 8
<888 9(
GetPersonWithAppointmentsDTO889 U
,88U V
GetAppointmentDTO88V g
,88g h)
GetPersonWithAppointmentsDTO	88h Ñ
>
88Ñ Ö
(
88Ö Ü
query
88Ü ã
,
88ã å
param99 
:99 
new99 
{99  
jmbg99  $
}99$ %
,99% &
map99& )
:99) *
(99+ ,
person99, 2
,992 3
appointment994 ?
)99? @
=>99A C
{:: 
person;; 
.;; 
Appointments;; +
.;;+ ,
Add;;, /
(;;/ 0
appointment;;0 ;
);;; <
;;;< =
return<< 
person<< %
;<<% &
}== 
,== 
splitOn== 
:== 
$str== -
)>> 
;>> 
_context?? 
.?? 
CloseConnection?? (
(??( )

connection??) 3
)??3 4
;??4 5
var@@ 
person@@ 
=@@ 
result@@ #
.@@# $
GroupBy@@$ +
(@@+ ,
o@@, -
=>@@. 0
o@@1 2
.@@2 3
PersonId@@3 ;
)@@; <
.@@< =
Select@@= C
(@@C D
g@@D E
=>@@F H
{AA 
varBB 
groupBB 
=BB 
gBB  !
.BB! "
FirstBB" '
(BB' (
)BB( )
;BB) *
groupCC 
.CC 
AppointmentsCC &
=CC' (
gCC) *
.CC* +
SelectCC+ 1
(CC1 2
oCC2 3
=>CC4 6
oCC7 8
.CC8 9
AppointmentsCC9 E
.CCE F
SingleCCF L
(CCL M
)CCM N
)CCN O
.CCO P
ToListCCP V
(CCV W
)CCW X
;CCX Y
returnDD 
groupDD  
;DD  !
}EE 
)EE 
;EE 
returnFF 
personFF 
.FF 
FirstFF #
(FF# $
)FF$ %
;FF% &
}GG 
}HH 	
publicJJ 
asyncJJ 
TaskJJ 
<JJ 
intJJ 
>JJ 
InsertAsyncJJ *
<JJ* +
TJJ+ ,
>JJ, -
(JJ- .
stringJJ. 4
commandJJ5 <
,JJ< =
objectJJ> D
parmsJJE J
)JJJ K
{KK 	
usingLL 
(LL 
varLL 

connectionLL !
=LL" #
_contextLL$ ,
.LL, -
CreateConnectionLL- =
(LL= >
)LL> ?
)LL? @
{MM 
varNN 
resultNN 
=NN 
awaitNN "

connectionNN# -
.NN- .
ExecuteAsyncNN. :
(NN: ;
commandNN; B
,NNB C
parmsNND I
,NNI J
commandTypeOO 
:OO  
SystemOO! '
.OO' (
DataOO( ,
.OO, -
CommandTypeOO- 8
.OO8 9
StoredProcedureOO9 H
)OOH I
;OOI J
_contextPP 
.PP 
CloseConnectionPP (
(PP( )

connectionPP) 3
)PP3 4
;PP4 5
returnQQ 
resultQQ 
;QQ 
}RR 
}SS 	
publicUU 
asyncUU 
TaskUU 
<UU 
intUU 
>UU 
UpdateAsyncUU *
<UU* +
TUU+ ,
>UU, -
(UU- .
stringUU. 4
commandUU5 <
,UU< =
objectUU> D
parmsUUE J
)UUJ K
{VV 	
usingWW 
(WW 
varWW 

connectionWW !
=WW" #
_contextWW$ ,
.WW, -
CreateConnectionWW- =
(WW= >
)WW> ?
)WW? @
{XX 
varYY 
resultYY 
=YY 
awaitYY "

connectionYY# -
.YY- .
ExecuteAsyncYY. :
(YY: ;
commandYY; B
,YYB C
parmsYYD I
,YYI J
commandTypeZZ 
:ZZ  
SystemZZ! '
.ZZ' (
DataZZ( ,
.ZZ, -
CommandTypeZZ- 8
.ZZ8 9
StoredProcedureZZ9 H
)ZZH I
;ZZI J
_context[[ 
.[[ 
CloseConnection[[ (
([[( )

connection[[) 3
)[[3 4
;[[4 5
return\\ 
result\\ 
;\\ 
}]] 
}^^ 	
}__ 
}`` ñ
ÜC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\DapperContext\Repository\IRepository.cs
	namespace 	
DapperRepositories
 
. 

Repository '
{		 
public

 

	interface

 
IRepository

  
{ 
Task 
< 
T 
> 
GetAsync 
< 
T 
> 
( 
string "
query# (
,( )
object) /
parms0 5
)5 6
;6 7
Task 
< 
List 
< 
T 
> 
> 
GetAllAsync !
<! "
T" #
># $
($ %
string% +
query, 1
,1 2
object3 9
parms: ?
=? @
null@ D
)D E
;E F
Task 
< 
int 
> 
InsertAsync 
< 
T 
>  
(  !
string! '
command( /
,/ 0
object1 7
parms8 =
)= >
;> ?
Task 
< 
int 
> 
UpdateAsync 
< 
T 
>  
(  !
string! '
command( /
,/ 0
object1 7
parms8 =
)= >
;> ?
Task 
< 
int 
> 
DeleteAsync 
< 
T 
>  
(  !
string! '
command( /
,/ 0
object1 7
parms8 =
)= >
;> ?
Task 
< (
GetPersonWithAppointmentsDTO )
>) *+
GetPersonWithAppointmentsByJmbg+ J
(J K
stringK Q
queryR W
,W X
stringY _
jmbg` d
)d e
;e f
} 
} ¢e
uC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\DapperContext\RepoH.cs
	namespace 	
DapperRepositories
 
{ 
public 

class 
RepoH 
: 
IRepoH 
{ 
private 
readonly 
IDapperContext '
_dapperContext( 6
;6 7
public 
RepoH 
( 
IDapperContext #
dapperContext$ 1
)1 2
{ 	
_dapperContext 
= 
dapperContext *
;* +
} 	
public 
async 
Task 
<  
ActionAppointmentDTO .
>. /"
DeleteAppointmentAsync0 F
(F G 
DeleteAppointmentDTOG [ 
deleteAppointmentDTO\ p
)p q
{ 	
DynamicParameters 

parameters (
=) *
new+ .
DynamicParameters/ @
(@ A
)A B
;B C

parameters 
. 
Add 
( 
$str !
,! " 
deleteAppointmentDTO" 6
.6 7
Jmbg7 ;
); <
;< =

parameters 
. 
Add 
( 
$str *
,* + 
deleteAppointmentDTO, @
.@ A
AppointmentIdA N
)N O
;O P
try!! 
{"" 
using## 
(## 
var## 

connection## $
=##% &
_dapperContext##' 5
.##5 6
CreateConnection##6 F
(##F G
)##G H
)##H I
{$$ 
var%% 
result%% 
=%%  
await%%! &

connection%%' 1
.%%1 2
ExecuteAsync%%2 >
(%%> ?
$str%%? T
,%%T U

parameters%%V `
,%%` a
commandType&& #
:&&# $
System&&% +
.&&+ ,
Data&&, 0
.&&0 1
CommandType&&1 <
.&&< =
StoredProcedure&&= L
)&&L M
;&&M N
_dapperContext'' "
.''" #
CloseConnection''# 2
(''2 3

connection''3 =
)''= >
;''> ?
return(( 
new((  
ActionAppointmentDTO(( 3
{)) 
Title** 
=** 
$str**  )
,**) *
Message++ 
=++  !
$str++" F
},, 
;,, 
}-- 
}.. 
catch.. 
(.. 
	Exception.. 
ex..  
)..  !
{.." #
throw..$ )
new..* -
DbException... 9
(..9 :
ex..: <
...< =
Message..= D
)..D E
;..E F
}..G H
}// 	
public11 
async11 
Task11 
<11 
GetMaxHeightDTO11 )
>11) *
GetMaxHeightAsync11+ <
(11< =
)11= >
{22 	
string33 
query33 
=33 
Scripts33 "
.33" #
fnMaxHeight33# .
;33. /
using55 
(55 
var55 

connection55  
=55  !
_dapperContext55# 1
.551 2
CreateConnection552 B
(55B C
)55C D
)55D E
{66 
var77 
	maxHeight77 
=77 
await77  %

connection77& 0
.770 1

QueryAsync771 ;
<77; <
GetMaxHeightDTO77< K
>77K L
(77L M
query77M R
)77R S
;77S T
return88 
	maxHeight88  
.88  !
First88! &
(88& '
)88' (
;88( )
}99 
}:: 	
public<< 
async<< 
Task<< 
<<< 
IEnumerable<< %
<<<% &
OverweightPeopleDTO<<& 9
><<9 :
><<: ;,
 GetOverweightPeopleFunctionAsync<<< \
(<<\ ]
)<<] ^
{== 	
string>> 
query>> 
=>> 
Scripts>> "
.>>" #
fnOverweightPeople>># 5
;>>5 6
using@@ 
(@@ 
var@@ 

connection@@ !
=@@" #
_dapperContext@@$ 2
.@@2 3
CreateConnection@@3 C
(@@C D
)@@D E
)@@E F
{AA 
varBB 

overweightBB 
=BB  
awaitBB! &

connectionBB' 1
.BB1 2

QueryAsyncBB2 <
<BB< =
OverweightPeopleDTOBB= P
>BBP Q
(BBQ R
queryBBR W
)BBW X
;BBX Y
_dapperContextCC 
.CC 
CloseConnectionCC .
(CC. /

connectionCC/ 9
)CC9 :
;CC: ;
returnDD 

overweightDD !
;DD! "
}EE 
}FF 	
publicHH 
asyncHH 
TaskHH 
<HH 
IEnumerableHH %
<HH% &
OverweightPeopleDTOHH& 9
>HH9 :
>HH: ;(
GetOverweightPeopleViewAsyncHH< X
(HHX Y
)HHY Z
{II 	
stringJJ 
queryJJ 
=JJ 
ScriptsJJ "
.JJ" # 
viewOverweightPeopleJJ# 7
;JJ7 8
usingLL 
(LL 
varLL 

connectionLL  
=LL! "
_dapperContextLL# 1
.LL1 2
CreateConnectionLL2 B
(LLB C
)LLC D
)LLD E
{MM 
varNN 

overweightNN 
=NN 
awaitNN  %

connectionNN& 0
.NN0 1

QueryAsyncNN1 ;
<NN; <
OverweightPeopleDTONN< O
>NNO P
(NNP Q
queryNNQ V
)NNV W
;NNW X
_dapperContextOO 
.OO 
CloseConnectionOO .
(OO. /

connectionOO/ 9
)OO9 :
;OO: ;
returnPP 

overweightPP !
;PP! "
}QQ 
}RR 	
publicTT 
TaskTT 
<TT (
GetPersonWithAppointmentsDTOTT 0
>TT0 15
)GetPersonWithAppointmentsDTOFunctionAsyncTT2 [
(TT[ \
)TT\ ]
{UU 	
throwVV 
newVV #
NotImplementedExceptionVV -
(VV- .
)VV. /
;VV/ 0
}WW 	
publicYY 
TaskYY 
<YY (
GetPersonWithAppointmentsDTOYY 0
>YY0 1.
"GetPersonWithAppointmentsViewAsyncYY2 T
(YYT U
)YYU V
{ZZ 	
throw[[ 
new[[ #
NotImplementedException[[ -
([[- .
)[[. /
;[[/ 0
}\\ 	
public^^ 
async^^ 
Task^^ 
<^^  
ActionAppointmentDTO^^ .
>^^. /"
InsertAppointmentAsync^^0 F
(^^F G 
InsertAppointmentDTO^^G [ 
insertAppointmentDTO^^\ p
)^^p q
{__ 	
DynamicParameters`` 

parameters`` (
=``) *
new``+ .
DynamicParameters``/ @
(``@ A
)``A B
;``B C

parametersaa 
.aa 
Addaa 
(aa 
$straa !
,aa! " 
insertAppointmentDTOaa# 7
.aa7 8
Jmbgaa8 <
)aa< =
;aa= >

parametersbb 
.bb 
Addbb 
(bb 
$strbb ,
,bb, - 
insertAppointmentDTObb. B
.bbB C
DoctorFirstNamebbC R
)bbR S
;bbS T

parameterscc 
.cc 
Addcc 
(cc 
$strcc +
,cc+ , 
insertAppointmentDTOcc- A
.ccA B
DoctorLastNameccB P
)ccP Q
;ccQ R

parametersdd 
.dd 
Adddd 
(dd 
$strdd ,
,dd, - 
insertAppointmentDTOdd. B
.ddB C
DateAppointmentddC R
)ddR S
;ddS T

parametersee 
.ee 
Addee 
(ee 
$stree ,
,ee, - 
insertAppointmentDTOee. B
.eeB C
TimeAppointmenteeC R
)eeR S
;eeS T
tryff 
{gg 
usinghh 
(hh 
varhh 

connectionhh %
=hh& '
_dapperContexthh( 6
.hh6 7
CreateConnectionhh7 G
(hhG H
)hhH I
)hhI J
{ii 
varjj 
resultjj 
=jj  
awaitkk 

connectionkk $
.kk$ %
ExecuteAsynckk% 1
(kk1 2
$strkk2 G
,kkG H

parameterskkI S
,kkS T
commandTypell 
:ll  
Systemll! '
.ll' (
Datall( ,
.ll, -
CommandTypell- 8
.ll8 9
StoredProcedurell9 H
)llH I
;llI J
_dapperContextmm "
.mm" #
CloseConnectionmm# 2
(mm2 3

connectionmm3 =
)mm= >
;mm> ?
returnnn 
newnn  
ActionAppointmentDTOnn 3
{oo 
Titlepp 
=pp 
$strpp  )
,pp) *
Messageqq 
=qq  !
$strqq" F
}rr 
;rr 
}ss 
}tt 
catchtt 
(tt 
	Exceptiontt 
extt !
)tt! "
{uu 
throwvv 
newvv 
DbExceptionvv %
(vv% &
exvv& (
.vv( )
Messagevv) 0
)vv0 1
;vv1 2
}ww 
}yy 	
public{{ 
async{{ 
Task{{ 
<{{  
ActionAppointmentDTO{{ .
>{{. /"
UpdateAppointmentAsync{{0 F
({{F G 
UpdateAppointmentDTO{{G [ 
updateAppointmentDTO{{\ p
){{p q
{|| 	
DynamicParameters}} 

parameters}} (
=}}) *
new}}+ .
DynamicParameters}}/ @
(}}@ A
)}}A B
;}}B C

parameters~~ 
.~~ 
Add~~ 
(~~ 
$str~~ !
,~~! " 
updateAppointmentDTO~~# 7
.~~7 8
Jmbg~~8 <
)~~< =
;~~= >

parameters 
. 
Add 
( 
$str ,
,, - 
updateAppointmentDTO. B
.B C
DoctorFirstNameC R
)R S
;S T

parameters
ÄÄ 
.
ÄÄ 
Add
ÄÄ 
(
ÄÄ 
$str
ÄÄ +
,
ÄÄ+ ,"
updateAppointmentDTO
ÄÄ- A
.
ÄÄA B
DoctorLastName
ÄÄB P
)
ÄÄP Q
;
ÄÄQ R

parameters
ÅÅ 
.
ÅÅ 
Add
ÅÅ 
(
ÅÅ 
$str
ÅÅ ,
,
ÅÅ, -"
updateAppointmentDTO
ÅÅ. B
.
ÅÅB C
DateAppointment
ÅÅC R
)
ÅÅR S
;
ÅÅS T

parameters
ÇÇ 
.
ÇÇ 
Add
ÇÇ 
(
ÇÇ 
$str
ÇÇ ,
,
ÇÇ, -"
updateAppointmentDTO
ÇÇ. B
.
ÇÇB C
TimeAppointment
ÇÇC R
)
ÇÇR S
;
ÇÇS T

parameters
ÉÉ 
.
ÉÉ 
Add
ÉÉ 
(
ÉÉ 
$str
ÉÉ *
,
ÉÉ* +"
updateAppointmentDTO
ÉÉ, @
.
ÉÉ@ A
AppointmentId
ÉÉA N
)
ÉÉN O
;
ÉÉO P
try
ÖÖ 
{
ÜÜ 
using
áá 
(
áá 
var
áá 

connection
áá %
=
áá& '
_dapperContext
áá( 6
.
áá6 7
CreateConnection
áá7 G
(
ááG H
)
ááH I
)
ááI J
{
àà 
var
ââ 
result
ââ 
=
ââ  
await
ââ! &

connection
ââ' 1
.
ââ1 2
ExecuteAsync
ââ2 >
(
ââ> ?
$str
ââ? T
,
ââT U

parameters
ââV `
,
ââ` a
commandType
ää #
:
ää# $
System
ää% +
.
ää+ ,
Data
ää, 0
.
ää0 1
CommandType
ää1 <
.
ää< =
StoredProcedure
ää= L
)
ääL M
;
ääM N
_dapperContext
ãã "
.
ãã" #
CloseConnection
ãã# 2
(
ãã2 3

connection
ãã3 =
)
ãã= >
;
ãã> ?
return
åå 
new
åå "
ActionAppointmentDTO
åå 3
{
çç 
Title
éé 
=
éé 
$str
éé  )
,
éé) *
Message
èè 
=
èè  !
$str
èè" F
}
êê 
;
êê 
}
ëë 
}
íí 
catch
íí 
(
íí 
	Exception
íí 
ex
íí  
)
íí  !
{
íí" #
throw
íí$ )
new
íí* -
DbException
íí. 9
(
íí9 :
ex
íí: <
.
íí< =
Message
íí= D
)
ííD E
;
ííE F
}
ííG H
}
ìì 	
}
îî 
}ïï …
vC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\DapperContext\IRepoH.cs
	namespace 	
DapperRepositories
 
{ 
public 

	interface 
IRepoH 
{ 
public 
Task 
< 
GetMaxHeightDTO #
># $
GetMaxHeightAsync% 6
(6 7
)7 8
;8 9
public 
Task 
< (
GetPersonWithAppointmentsDTO 0
>0 1.
"GetPersonWithAppointmentsViewAsync2 T
(T U
)U V
;V W
public 
Task 
< (
GetPersonWithAppointmentsDTO 0
>0 15
)GetPersonWithAppointmentsDTOFunctionAsync2 [
([ \
)\ ]
;] ^
public 
Task 
< 
IEnumerable 
<  
OverweightPeopleDTO  3
>3 4
>4 5(
GetOverweightPeopleViewAsync6 R
(R S
)S T
;T U
public 
Task 
< 
IEnumerable 
<  
OverweightPeopleDTO  3
>3 4
>4 5,
 GetOverweightPeopleFunctionAsync6 V
(V W
)W X
;X Y
public 
Task 
<  
ActionAppointmentDTO (
>( )"
InsertAppointmentAsync* @
(@ A 
InsertAppointmentDTOA U 
insertAppointmentDTOV j
)j k
;k l
public 
Task 
<  
ActionAppointmentDTO (
>( )"
UpdateAppointmentAsync* @
(@ A 
UpdateAppointmentDTOA U 
updateAppointmentDTOV j
)j k
;k l
public 
Task 
<  
ActionAppointmentDTO (
>( )"
DeleteAppointmentAsync* @
(@ A 
DeleteAppointmentDTOA U 
deleteAppointmentDTOV j
)j k
;k l
} 
} ÷
ÜC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\DapperContext\Context\IDapperContext.cs
	namespace 	
DapperRepositories
 
. 
Context $
{		 
public

 

	interface

 
IDapperContext

 #
{ 
IDbConnection 
CreateConnection &
(& '
)' (
;( )
void 
CloseConnection 
( 
IDbConnection *

connection+ 5
)5 6
;6 7
} 
} è
ÖC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\DapperContext\Context\DapperContext.cs
	namespace

 	
DapperRepositories


 
.

 
Context

 $
{ 
public 

class 
DapperContext 
:  
IDapperContext! /
{ 
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
private 
readonly 
string 
_connectionString  1
;1 2
public 
DapperContext 
( 
IConfiguration +
configuration, 9
)9 :
{ 	
_configuration 
= 
configuration *
;* +
_connectionString 
= 
_configuration  .
.. /
GetConnectionString/ B
(B C
$strC O
)O P
;P Q
} 	
public 
IDbConnection 
CreateConnection -
(- .
). /
=>0 2
new 
SqlConnection 
( 
_connectionString /
)/ 0
;0 1
public 
void 
CloseConnection #
(# $
IDbConnection$ 1

connection2 <
)< =
{ 	
if 
( 

connection 
. 
State  
==! #
ConnectionState$ 3
.3 4
Open4 8
||9 ;

connection< F
.F G
StateG L
==M O
ConnectionStateP _
._ `
Broken` f
)f g
{ 

connection 
. 
Close  
(  !
)! "
;" #
} 
}   	
}!! 
}"" 