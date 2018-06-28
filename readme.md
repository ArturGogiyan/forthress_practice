Here is some information about written words. 

	isodd ( num -- bool )
return 0 if the value is even, else 1.

	isprime ( num -- addr )
return address of a cell which concains 1 if the pushed number is prime,0 otherwise.
	
	alloc( value -- addr )
allocate 8-bit memory location and write value into that.
	
	concat( addr addr -- addr )
return a conсatenation of 2 null terminated strings. String which address are in a top of stack will be first in the returned string.
	
	isprimary( num -- addr )
return 1 if the pushed number is primary, else 0.


