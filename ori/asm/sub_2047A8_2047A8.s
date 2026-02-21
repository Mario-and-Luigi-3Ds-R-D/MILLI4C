LDR             R1, [R2,#8]
LDR             R2, [R2,#0x6C]
AND             R1, R1, #0xFF
ADD             R0, R0, R1,LSL#2
STR             R2, [R0,#0x190]
MOV             R0, #0
BX              LR
