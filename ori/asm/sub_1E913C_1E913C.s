PUSH            {R4,LR}
MOV             R4, R1
LDR             R1, [R0]
LDR             R1, [R1,#0x11C]
BLX             R1
LDR             R0, [R0,#4]
ADD             R1, R4, R4,LSL#1
ADD             R0, R0, R1,LSL#4
POP             {R4,PC}
