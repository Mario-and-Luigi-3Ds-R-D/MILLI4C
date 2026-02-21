MOVS            R2, #0
RSBS            R3, R1, R0,LSR#2
BCC             loc_2FF0D4
RSBS            R3, R1, R0,LSR#5
BCC             loc_2FF0B0
RSBS            R3, R1, R0,LSR#8
BCC             loc_2FF08C
RSBS            R3, R1, R0,LSR#12
BCC             loc_2FF058
RSBS            R3, R1, R0,LSR#16
BCC             loc_2FF028
B               loc_2FF000
