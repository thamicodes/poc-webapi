�!
SC:\Users\thamires.silva\Desktop\poc-webapi\Controllers\WeatherForecastController.cs
	namespace 	
novo
 
. 
Controllers 
; 
[ 

] 
[ 
Route 
( 
$str 
) 
] 
public 
class %
WeatherForecastController
:' (
ControllerBase) 7
{ 
private		 
static		 
readonly		 
string		 "
[		" #
]		# $
	Summaries		% .
=		/ 0
new		1 4
[		4 5
]		5 6
{

 
$str 
, 
$str 
, 
$str '
,' (
$str) /
,/ 0
$str1 7
,7 8
$str9 ?
,? @
$strA H
,H I
$strJ O
,O P
$strQ ]
,] ^
$str_ j
} 
; 
private 
readonly 
ILogger 
< %
WeatherForecastController 6
>6 7
_logger8 ?
;? @
public 
%
WeatherForecastController $
($ %
ILogger% ,
<, -%
WeatherForecastController- F
>F G
loggerH N
)N O
{ 
_logger 
= 
logger 
; 
} 
[ 
HttpGet 
( 
Name
= 
$str (
)( )
]) *
public 

IEnumerable 
< 
WeatherForecast &
>& '
Get( +
(+ ,
), -
{ 
return 

Enumerable 
. 
Range 
(  
$num  !
,! "
$num# $
)$ %
.% &
Select& ,
(, -
index- 2
=>3 5
new6 9
WeatherForecast: I
{ 	
Date 
= 
DateTime 
. 
Now 
.  
AddDays  '
(' (
index( -
)- .
,. /
TemperatureC 
= 
Random !
.! "
Shared" (
.( )
Next) -
(- .
-. /
$num/ 1
,1 2
$num3 5
)5 6
,6 7
Summary 
= 
	Summaries 
[  
Random  &
.& '
Shared' -
.- .
Next. 2
(2 3
	Summaries3 <
.< =
Length= C
)C D
]D E
} 	
)	 

. 	
ToArray	 
( 
) 
; 
} 
[   
HttpGet   
(  
Name   
=   
$str    
)    !
]  ! "
public!! 

IEnumerable!! 
<!! 
WeatherForecast!! &
>!!& '
	CodeSmell!!( 1
(!!1 2
)!!2 3
{"" 
return## 

Enumerable## 
.## 
Range## 
(##  
$num##  !
,##! "
$num### $
)##$ %
.##% &
Select##& ,
(##, -
index##- 2
=>##3 5
new##6 9
WeatherForecast##: I
{$$ 	
Date%% 
=%% 
DateTime%% 
.%% 
Now%% 
.%%  
AddDays%%  '
(%%' (
index%%( -
)%%- .
,%%. /
TemperatureC&& 
=&& 
Random&& !
.&&! "
Shared&&" (
.&&( )
Next&&) -
(&&- .
-&&. /
$num&&/ 1
,&&1 2
$num&&3 5
)&&5 6
,&&6 7
Summary'' 
='' 
	Summaries'' 
[''  
Random''  &
.''& '
Shared''' -
.''- .
Next''. 2
(''2 3
	Summaries''3 <
.''< =
Length''= C
)''C D
]''D E
}(( 	
)((	 

.)) 	
ToArray))	 
()) 
))) 
;)) 
}** 
}++ �
5C:\Users\thamires.silva\Desktop\poc-webapi\Program.cs
var 
builder 
= 
WebApplication 
. 

(* +
args+ /
)/ 0
;0 1
builder 
. 
Services 
. 
AddControllers 
(  
)  !
;! "
builder 
. 
Services 
. #
AddEndpointsApiExplorer (
(( )
)) *
;* +
builder 
. 
Services 
. 

( 
)  
;  !
var

 
app

 
=

 	
builder


 
.

 
Build

 
(

 
)

 
;

 
if
(
app
.
Environment
.

(
)
)
{ 
app 
. 

UseSwagger 
( 
) 
; 
app 
. 
UseSwaggerUI 
( 
) 
; 
} 
app 
. 
UseHttpsRedirection 
( 
) 
; 
app 
. 
UseAuthorization 
( 
) 
; 
app 
. 
MapControllers 
( 
) 
; 
app 
. 
Run 
( 
) 	
;	 
�
=C:\Users\thamires.silva\Desktop\poc-webapi\WeatherForecast.cs
	namespace 	
novo
 
; 
public 
class 
WeatherForecast
{ 
public 

DateTime 
Date 
{ 
get 
; 
set  #
;# $
}% &
public 

int 
TemperatureC 
{ 
get !
;! "
set# &
;& '
}( )
public		 

int		 
TemperatureF		 
=>		 
$num		 !
+		" #
(		$ %
int		% (
)		( )
(		) *
TemperatureC		* 6
/		7 8
$num		9 ?
)		? @
;		@ A
public 

string 
? 
Summary 
{ 
get  
;  !
set" %
;% &
}' (
} 