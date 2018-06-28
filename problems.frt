: isodd
 2 % 
;


: isprime
dup 2 < if drop 1 allot dup 0 swap ! else
dup 4 < if drop 1 allot dup 1 swap !
else
dup >r 2 swap 2 / swap r>
repeat
over over swap %
if
over >r rot dup r> >
if
rot 1 + rot 0
else 0 1 then
else 1 1 then
until
>r drop drop drop r>
if 1 allot dup 0 swap ! else 1 allot dup 1 swap ! then
then
then ;

: alloc
 8 allot dup rot swap ! 
;

: stringcopying
repeat dup c@ rot dup rot dup rot c! rot 1 + rot 1 + swap rot not until swap 
;

: concat
dup count
rot dup count
rot + 1 + heap-alloc dup >r -rot r> rot 
stringcopying 1 - rot 
stringcopying 0 swap c! * 0 * + 
;

: isprimary
 dup isprime 
if 0 * 1 + 
else dup 2 / 1 + 2 
do 
dup r@ % not 
if r@ / then 
loop 
1 = then 
;

