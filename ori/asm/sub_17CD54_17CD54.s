PUSH            {R3-R7,LR}
ADD             R4, R0, #0x390
LDR             R5, =0x13C70
LDR             R12, [R0,#4]
ADD             R5, R5, R2,LSL#2
LDR             R12, [R12,R5]
LDR             R5, [R12,#0x14]
STR             R4, [SP,#0x18+var_18]
LDR             R6, [R0]
LDR             R4, [R12,R5]!
ADD             R5, R12, R4,LSL#2
ADD             R1, R5, R1,LSL#2
LDR             R4, [R6,#0x40]
LDR             R1, [R1,#4]
ADD             R1, R1, R12
BLX             R4
POP             {R3-R7,PC}
