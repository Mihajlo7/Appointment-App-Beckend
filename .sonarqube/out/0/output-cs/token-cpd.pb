¨

çC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\DTOs\WriteAppointments\UpdateAppointmentDTO.cs
	namespace 	
DTOs
 
. 
WriteAppointments  
{ 
public		 

class		  
UpdateAppointmentDTO		 %
{

 
public 
string 
Jmbg 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
AppointmentId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
DoctorFirstName %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
DoctorLastName $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
DateTime 
DateAppointment '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
TimeAppointment %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} ã	
çC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\DTOs\WriteAppointments\InsertAppointmentDTO.cs
	namespace 	
DTOs
 
. 
WriteAppointments  
{ 
public		 

class		  
InsertAppointmentDTO		 %
{

 
public 
string 
Jmbg 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
DoctorFirstName %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
DoctorLastName $
{% &
get' *
;* +
set, /
;/ 0
}0 1
public 
DateTime 
DateAppointment '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
TimeAppointment %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} ü
çC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\DTOs\WriteAppointments\DeleteAppointmentDTO.cs
	namespace 	
DTOs
 
. 
WriteAppointments  
{ 
public		 

class		  
DeleteAppointmentDTO		 %
{

 
public 
string 
Jmbg 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
AppointmentId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} à
ÑC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\DTOs\Response\ActionAppointmentDTO.cs
	namespace 	
DTOs
 
. 
Response 
{ 
public		 

class		  
ActionAppointmentDTO		 %
{

 
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Message 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} û
éC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\DTOs\GetOverweightPeople\OverweightPeopleDTO.cs
	namespace 	
DTOs
 
. 
GetOverweightPeople "
{ 
public		 

class		 
OverweightPeopleDTO		 $
{

 
public 
Guid 
PersonId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Jmbg 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
	FirstName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
LastName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
double 
Height 
{ 
get "
;" #
set$ '
;' (
}) *
public 
double 
Weight 
{ 
get "
;" #
set$ '
;' (
}) *
public 
double 
Bmi 
{ 
get 
;  
set! $
;$ %
}& '
} 
} Ô
ÉC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\DTOs\GetMaxHeight\GetMaxHeightDTO.cs
	namespace 	
DTOs
 
. 
GetMaxHeight 
{ 
public		 

class		 
GetMaxHeightDTO		  
{

 
public 
double 
	MaxHeight 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} ¶
ìC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\DTOs\GetAppointments\GetPersonWithAppointmentsDTO.cs
	namespace 	
DTOs
 
. 
GetAppointments 
{ 
public		 

class		 (
GetPersonWithAppointmentsDTO		 -
{

 
public 
Guid 
PersonId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Jmbg 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
	FirstName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
LastName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
double 
Height 
{ 
get "
;" #
set$ '
;' (
}) *
public 
double 
Weight 
{ 
get "
;" #
set$ '
;' (
}) *
public 
double 
Bmi 
{ 
get 
;  
set! $
;$ %
}& '
public 
ICollection 
< 
GetAppointmentDTO ,
>, -
Appointments. :
{; <
get= @
;@ A
setB E
;E F
}G H
=I J
newK N
ListO S
<S T
GetAppointmentDTOT e
>e f
(f g
)g h
;h i
} 
} ä	
àC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\DTOs\GetAppointments\GetAppointmentDTO.cs
	namespace 	
DTOs
 
. 
GetAppointments 
{ 
public		 

class		 
GetAppointmentDTO		 "
{

 
public 
Guid 
AppointmentId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
DoctorFirstName %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
DoctorLastName $
{% &
get' *
;* +
set, /
;/ 0
}0 1
public 
DateTime 
AppointmentDate '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
TimeSpan 
AppointmentTime '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} 