Ö
ãC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\MediatorCqrs\Queries\GetPersonByJmbgQuery.cs
	namespace		 	
MediatorCqrs		
 
.		 
Queries		 
{

 
public 

record  
GetPersonByJmbgQuery &
(& '
string' -
jmbg. 2
)2 3
:3 4
IRequest4 <
<< =(
GetPersonWithAppointmentsDTO= Y
>Y Z
;Z [
} â
âC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\MediatorCqrs\Queries\GetOverweightQuery.cs
	namespace		 	
MediatorCqrs		
 
.		 
Queries		 
{

 
public 

record 
GetOverweightQuery $
($ %
)% &
:' (
IRequest) 1
<1 2
IEnumerable2 =
<= >
OverweightPeopleDTO> Q
>Q R
>R S
;S T
} Ã
àC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\MediatorCqrs\Queries\GetMaxHeightQuery.cs
	namespace		 	
MediatorCqrs		
 
.		 
Queries		 
{

 
public 

record 
GetMaxHeightQuery #
(# $
)$ %
:& '
IRequest( 0
<0 1
GetMaxHeightDTO1 @
>@ A
;A B
} ˛

êC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\MediatorCqrs\Handlers\UpdateAppointmentHandler.cs
	namespace 	
MediatorCqrs
 
. 
Handlers 
{ 
public 

class $
UpdateAppointmentHandler )
:* +
IRequestHandler, ;
<; <$
UpdateAppointmentCommand< T
,T U 
ActionAppointmentDTOV j
>j k
{ 
private 
readonly 
IRepoH 
_repo  %
;% &
public $
UpdateAppointmentHandler '
(' (
IRepoH( .
repo/ 3
)3 4
{ 	
_repo 
= 
repo 
; 
} 	
public 
async 
Task 
<  
ActionAppointmentDTO .
>. /
Handle0 6
(6 7$
UpdateAppointmentCommand7 O
requestP W
,W X
CancellationTokenY j
cancellationTokenk |
)| }
{ 	
return 
await 
_repo 
. "
UpdateAppointmentAsync 5
(5 6
request6 =
.= > 
UpdateAppointmentDTO> R
)R S
;S T
} 	
} 
} ˛

êC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\MediatorCqrs\Handlers\InsertAppointmentHandler.cs
	namespace 	
MediatorCqrs
 
. 
Handlers 
{ 
public 

class $
InsertAppointmentHandler )
:* +
IRequestHandler, ;
<; <$
InsertAppointmentCommand< T
,T U 
ActionAppointmentDTOV j
>j k
{ 
private 
readonly 
IRepoH 
_repo  %
;% &
public $
InsertAppointmentHandler '
(' (
IRepoH( .
repo/ 3
)3 4
{ 	
_repo 
= 
repo 
; 
} 	
public 
async 
Task 
<  
ActionAppointmentDTO .
>. /
Handle0 6
(6 7$
InsertAppointmentCommand7 O
requestP W
,W X
CancellationTokenY j
cancellationTokenk |
)| }
{ 	
return 
await 
_repo 
. "
InsertAppointmentAsync 5
(5 6
request6 =
.= > 
InsertAppointmentDTO> R
)R S
;S T
} 	
} 
} ∏
éC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\MediatorCqrs\Handlers\GetPersonByJmbgHandler.cs
	namespace 	
MediatorCqrs
 
. 
Handlers 
{ 
public 

class "
GetPersonByJmbgHandler '
:( )
IRequestHandler* 9
<9 : 
GetPersonByJmbgQuery: N
,N O(
GetPersonWithAppointmentsDTOP l
>l m
{ 
private 
readonly 
IPersonService '
_personService( 6
;6 7
public "
GetPersonByJmbgHandler %
(% &
IPersonService& 4
personService5 B
)B C
{ 	
_personService 
= 
personService *
;* +
} 	
public 
async 
Task 
< (
GetPersonWithAppointmentsDTO 6
>6 7
Handle8 >
(> ? 
GetPersonByJmbgQuery? S
requestT [
,[ \
CancellationToken] n
cancellationToken	o Ä
)
Ä Å
{ 	
return 
await 
_personService '
.' (*
GetPersonWithAppointmentsAsync( F
(F G
requestG N
.N O
jmbgO S
)S T
;T U
} 	
} 
} ‡
íC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\MediatorCqrs\Handlers\GetOverweightPeopleHandler.cs
	namespace 	
MediatorCqrs
 
. 
Handlers 
{ 
public 

class &
GetOverweightPeopleHandler +
:, -
IRequestHandler. =
<= >
GetOverweightQuery> P
,P Q
IEnumerableR ]
<] ^
OverweightPeopleDTO^ q
>q r
>r s
{ 
private 
readonly 
IPersonService '
_personService( 6
;6 7
public &
GetOverweightPeopleHandler )
() *
IPersonService* 8
personService9 F
)F G
{ 	
_personService 
= 
personService *
;* +
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
OverweightPeopleDTO& 9
>9 :
>: ;
Handle< B
(B C
GetOverweightQueryC U
requestV ]
,] ^
CancellationToken_ p
cancellationToken	q Ç
)
Ç É
{ 	
return 
await 
_personService '
.' ($
GetOverweightPeopleAsync( @
(@ A
)A B
;B C
} 	
} 
} …

ãC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\MediatorCqrs\Handlers\GetMaxHeightHandler.cs
	namespace 	
MediatorCqrs
 
. 
Handlers 
{ 
public 

class 
GetMaxHeightHandler $
:% &
IRequestHandler' 6
<6 7
GetMaxHeightQuery7 H
,H I
GetMaxHeightDTOJ Y
>Y Z
{ 
private 
readonly 
IPersonService '
_personService( 6
;6 7
public 
GetMaxHeightHandler "
(" #
IPersonService# 1
personService2 ?
)? @
{ 	
_personService 
= 
personService *
;* +
} 	
public 
async 
Task 
< 
GetMaxHeightDTO )
>) *
Handle+ 1
(1 2
GetMaxHeightQuery2 C
requestD K
,K L
CancellationTokenM ^
cancellationToken_ p
)p q
{ 	
return 
await 
_personService '
.' (
GetMaxHeightAsync( 9
(9 :
): ;
;; <
} 	
} 
} ˛

êC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\MediatorCqrs\Handlers\DeleteAppointmentHandler.cs
	namespace 	
MediatorCqrs
 
. 
Handlers 
{ 
public 

class $
DeleteAppointmentHandler )
:* +
IRequestHandler, ;
<; <$
DeleteAppointmentCommand< T
,T U 
ActionAppointmentDTOV j
>j k
{ 
private 
readonly 
IRepoH 
_repo  %
;% &
public $
DeleteAppointmentHandler '
(' (
IRepoH( .
repo/ 3
)3 4
{ 	
_repo 
= 
repo 
; 
} 	
public 
async 
Task 
<  
ActionAppointmentDTO .
>. /
Handle0 6
(6 7$
DeleteAppointmentCommand7 O
requestP W
,W X
CancellationTokenY j
cancellationTokenk |
)| }
{ 	
return 
await 
_repo 
. "
DeleteAppointmentAsync 5
(5 6
request6 =
.= > 
deleteAppointmentDTO> R
)R S
;S T
} 	
} 
} •
êC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\MediatorCqrs\Commands\UpdateAppointmentCommand.cs
	namespace

 	
MediatorCqrs


 
.

 
Commands

 
{ 
public 

record $
UpdateAppointmentCommand *
(* + 
UpdateAppointmentDTO+ ? 
UpdateAppointmentDTO@ T
)T U
: 	
IRequest
 
<  
ActionAppointmentDTO '
>' (
;( )
} •
êC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\MediatorCqrs\Commands\InsertAppointmentCommand.cs
	namespace

 	
MediatorCqrs


 
.

 
Commands

 
{ 
public 

record $
InsertAppointmentCommand *
(* + 
InsertAppointmentDTO+ ? 
InsertAppointmentDTO@ T
)T U
: 	
IRequest
 
<  
ActionAppointmentDTO '
>' (
;( )
} •
êC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\MediatorCqrs\Commands\DeleteAppointmentCommand.cs
	namespace

 	
MediatorCqrs


 
.

 
Commands

 
{ 
public 

record $
DeleteAppointmentCommand *
(* + 
DeleteAppointmentDTO+ ? 
deleteAppointmentDTO@ T
)T U
:U V
IRequestW _
<_ ` 
ActionAppointmentDTO` t
>t u
;u v
} 