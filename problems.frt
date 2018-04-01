: isodd
 2 % 
;
: isprime
 dup dup 2 / 1 + 2 do dup r@ % not if 1 + then loop = 
;
: alloc
 8 allot dup rot swap ! 
;

: stringcopying
 repeat dup c@ rot dup rot dup rot c! rot 1 + rot 1 + swap rot not until swap 
;
: concat
 dup count
 rot dup count
 rot + 2 + heap-alloc dup >r -rot r> rot 
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
