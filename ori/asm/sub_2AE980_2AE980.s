PUSH            {R4,LR}
MOV             R4, R0
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0xFC
ADD             R1, R1, R1,LSL#2
LDR             R0, [R0]
LDR             R2, [R0,#0x20]
ADD             R0, R0, R2
ADD             R1, R0, R1,LSL#2
LDR             R0, [R4]
LDR             R2, [R0,#0x1D4]
MOV             R0, R4
BLX             R2
LDR             R2, [R4]
MOV             R1, R0
MOV             R0, R4
LDR             R2, [R2,#0x1DC]
BLX             R2
LDR             R0, [R4]
LDR             R1, [R0,#0x1D8]
MOV             R0, R4
POP             {R4,LR}
BX              R1
