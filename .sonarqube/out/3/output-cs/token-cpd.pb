�
}C:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\LoggerService\LoggerManager.cs
	namespace		 	

 
{

 
public 

class 

:  
ILoggerManager! /
{ 
private
static
ILogger
Logger
=

LogManager
.
GetCurrentClassLogger
(
)
;
public 
void 
LogDebug 
( 
string #
message$ +
)+ ,
{ 	
Logger 
. 
Debug 
( 
message  
)  !
;! "
} 	
public 
void 
LogError 
( 
string #
message$ +
)+ ,
{ 	
Logger 
. 
Error 
( 
message  
)  !
;! "
} 	
public 
void 
LogInfo 
( 
string "
message# *
)* +
{ 	
Logger 
. 
Info 
( 
message 
)  
;  !
} 	
public 
void 
LogWarn 
( 
string "
message# *
)* +
{ 	
Logger   
.   
Warn   
(   
message   
)    
;    !
}!! 	
}"" 
}## 