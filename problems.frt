: isodd
 2 % 
;
: isprime
 dup 1 - if dup dup 2 / 1 + 2 do dup r@ % not if 1 + then loop = else 0 *   then
;
: alloc
 8 allot dup rot swap ! 
;

: stringcopying
dup count
>r dec r>
inc 0
do
inc
>r dup r@
c@ swap r> r@ rot + swap >r c! r>
loop
heap-free ;

: concat
swap dup count
>r
swap dup count
r@ + inc
heap-alloc
rot stringcopying
dup r> + rot
stringcopying
drop ;


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
