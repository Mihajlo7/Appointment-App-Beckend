ë
yC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\Services\IPersonService.cs
	namespace

 	
Services


 
{ 
public 

	interface 
IPersonService #
{ 
Task 
< 
List 
< 
OverweightPeopleDTO %
>% &
>& '$
GetOverweightPeopleAsync( @
(@ A
)A B
;B C
Task 
< 
GetMaxHeightDTO 
> 
GetMaxHeightAsync /
(/ 0
)0 1
;1 2
Task 
< (
GetPersonWithAppointmentsDTO )
>) **
GetPersonWithAppointmentsAsync+ I
(I J
stringJ P
jmbgQ U
)U V
;V W
} 
} ù
}C:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\Services\impl\PersonService.cs
	namespace 	
Services
 
. 
impl 
{ 
public 

class 
PersonService 
:  
IPersonService! /
{ 
private 
readonly 
IRepository $
_repository% 0
;0 1
public 
PersonService 
( 
IRepository (

repository) 3
)3 4
{ 	
_repository 
= 

repository $
;$ %
} 	
public 
async 
Task 
< 
GetMaxHeightDTO )
>) *
GetMaxHeightAsync+ <
(< =
)= >
{ 	
string 
query 
= 
$str E
;E F
return 
await 
_repository $
.$ %
GetAsync% -
<- .
GetMaxHeightDTO. =
>= >
(> ?
query? D
,D E
nullE I
)I J
;J K
} 	
public 
async 
Task 
< 
List 
< 
OverweightPeopleDTO 2
>2 3
>3 4$
GetOverweightPeopleAsync5 M
(M N
)N O
{ 	
string 
query 
= 
$str D
;D E
return 
await 
_repository $
.$ %
GetAllAsync% 0
<0 1
OverweightPeopleDTO1 D
>D E
(E F
queryF K
)K L
;L M
}   	
public"" 
async"" 
Task"" 
<"" (
GetPersonWithAppointmentsDTO"" 6
>""6 7*
GetPersonWithAppointmentsAsync""8 V
(""V W
string""W ]
jmbg""^ b
)""b c
{## 	
string$$ 
query$$ 
=$$ 
$str$$ R
;$$R S
return%% 
await%% 
_repository%% $
.%%$ %+
GetPersonWithAppointmentsByJmbg%%% D
(%%D E
query%%E J
,%%J K
jmbg%%K O
)%%O P
;%%P Q
}&& 	
}'' 
}(( 