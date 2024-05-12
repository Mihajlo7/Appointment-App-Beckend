—#
öC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\GlobalExceptionHandling\GlobalExceptionHandlerMiddleware.cs
	namespace 	#
GlobalExceptionHandling
 !
{ 
public 

class ,
 GlobalExceptionHandlerMiddleware 2
{ 
private 
readonly 
RequestDelegate (
_next) .
;. /
public ,
 GlobalExceptionHandlerMiddleware /
(/ 0
RequestDelegate0 ?
next@ D
)D E
{ 	
_next 
= 
next 
; 
} 	
public 
async 
Task 
InvokeAsync %
(% &
HttpContext& 1
context2 9
)9 :
{ 	
try 
{ 
await 
_next 
( 
context #
)# $
;$ %
} 
catch 
( 
	Exception 
ex  
)  !
{   
await!!  
HandleExceptionAsync!! *
(!!* +
context!!+ 2
,!!2 3
ex!!4 6
)!!6 7
;!!7 8
}"" 
}## 	
public%% 
async%% 
Task%%  
HandleExceptionAsync%% .
(%%. /
HttpContext%%/ :
context%%; B
,%%B C
	Exception%%C L
	exception%%M V
)%%V W
{&& 	
context'' 
.'' 
Response'' 
.'' 
ContentType'' (
='') *
$str''+ =
;''= >
var(( 
response(( 
=(( 
context((  
.((  !
Response((! )
;(() *
ErrorResponse** 
errorResponse** '
=**( )
new*** -
ErrorResponse**. ;
(**; <
)**< =
;**= >
switch,, 
(,, 
	exception,, 
),, 
{-- 
case..  
ApplicationException.. )
_..* +
:..+ ,
errorResponse// !
.//! "
Title//" '
=//( )
$str//* =
;//= >
response00 
.00 

StatusCode00 '
=00( )
StatusCodes00* 5
.005 6
Status409Conflict006 G
;00G H
errorResponse11 !
.11! "

StatusCode11" ,
=11- .
StatusCodes11/ :
.11: ;
Status409Conflict11; L
;11L M
errorResponse22 !
.22! "
Message22" )
=22* +
	exception22, 5
.225 6
Message226 =
;22= >
break33 
;33 
case44 
DbException44  
_44! "
:44" #
errorResponse55 !
.55! "
Title55" '
=55( )
$str55* :
;55: ;
response66 
.66 

StatusCode66 '
=66( )
StatusCodes66* 5
.665 6
Status409Conflict666 G
;66G H
errorResponse77 !
.77! "

StatusCode77" ,
=77- .
StatusCodes77/ :
.77: ;
Status409Conflict77; L
;77L M
errorResponse88 !
.88! "
Message88" )
=88* +
	exception88, 5
.885 6
Message886 =
;88= >
break99 
;99 
default:: 
::: 
errorResponse;; !
.;;! "
Title;;" '
=;;( )
$str;;* 8
;;;8 9
response<< 
.<< 

StatusCode<< '
=<<( )
StatusCodes<<* 5
.<<5 6(
Status500InternalServerError<<6 R
;<<R S
errorResponse== !
.==! "

StatusCode==" ,
===, -
StatusCodes==. 9
.==9 :(
Status500InternalServerError==: V
;==V W
errorResponse>> !
.>>! "
Message>>" )
=>>* +
	exception>>, 5
.>>5 6
Message>>6 =
;>>= >
break?? 
;?? 
}@@ 
varBB 
exResultBB 
=BB 
JsonSerializerBB )
.BB) *
	SerializeBB* 3
(BB3 4
errorResponseBB4 A
)BBA B
;BBB C
awaitCC 
contextCC 
.CC 
ResponseCC "
.CC" #

WriteAsyncCC# -
(CC- .
exResultCC. 6
)CC6 7
;CC7 8
}DD 	
}EE 
}FF è
áC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\GlobalExceptionHandling\ErrorResponse.cs
	namespace 	#
GlobalExceptionHandling
 !
{ 
internal		 
class		 
ErrorResponse		  
{

 
public 
string 
Title 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 

StatusCode 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Message 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} æ
ïC:\Users\Mihajlo.DESKTOP-T538ONP\Desktop\AppointmentApp\Appointment-App\AppointmentsAplication\GlobalExceptionHandling\ExceptionModels\DbException.cs
	namespace 	#
GlobalExceptionHandling
 !
.! "
ExceptionModels" 1
{ 
public		 

class		 
DbException		 
:		 
	Exception		 (
{

 
public 
DbException 
( 
) 
{ 
}  
public 
DbException 
( 
string !
message" )
)) *
:+ ,
base- 1
(1 2
message2 9
)9 :
{; <
}= >
public 
DbException 
( 
string !
message" )
,) *
	Exception+ 4
innerException5 C
)C D
:E F
baseG K
(K L
messageL S
,S T
innerExceptionU c
)c d
{e f
}g h
} 
} 