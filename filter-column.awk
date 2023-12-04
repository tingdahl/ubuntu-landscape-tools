# ------------------------------------------------------------------
# Copyright (C): 2023 Kristofer Tingdahl
# Licensed throught the MIT license
# ------------------------------------------------------------------

BEGIN {
	FS=","
	FPAT = "([^,]+)|(\"[^\"]+\")"
	OFS=","
}
NR==1 {
    for (i=1; i<=NF; i++) {
	if ( $i ~ colname ) {
	    col=i
        }
    }
    print $1, $col
}
NR>1 {
    print $1, $col
}
