Œ
}C:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\LoggerService\LoggerManager.cs
	namespace		 	
LoggerService		
 
{

 
public 

class 
LoggerManager 
:  
ILoggerManager! /
{ 
private 
static 
ILogger 
Logger %
=& '

LogManager( 2
.2 3!
GetCurrentClassLogger3 H
(H I
)I J
;J K
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