# Complicado manipular as strings dos campos, e variaveis apenas com awk.

{
	A[ $1 ] = 1
	B[ $3 ] = 1
}

END {

	while ( x in A ){
		print x
		}
}


