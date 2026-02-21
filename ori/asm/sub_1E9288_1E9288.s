PUSH            {R4,LR}
MOV             R4, R1
LDR             R1, [R0]
LDR             R1, [R1,#0x110]
BLX             R1
LDR             R0, [R0,#4]
ADD             R0, R0, R4,LSL#6
POP             {R4,PC}
