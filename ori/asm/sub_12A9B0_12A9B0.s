PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0x48]
LDR             R1, [R4,#0x44]
SUB             SP, SP, #8
MOV             R0, R0,LSL#9
ADD             R0, R0, R1,LSL#3
REV             R0, R0
STR             R0, [SP,#0x10+var_C]
LDR             R0, [R4,#0x4C]
LDR             R1, [R4,#0x48]
MOV             R0, R0,LSL#9
ADD             R0, R0, R1,LSR#23
LDR             R1, =unk_6E1468
REV             R0, R0
STR             R0, [SP,#0x10+var_10]
LDR             R0, [R4,#0x44]
CMP             R0, #0x38 ; '8'
RSBCC           R2, R0, #0x38 ; '8'
RSBCS           R2, R0, #0x78 ; 'x'
LDR             R0, [R4]
LDR             R3, [R0,#8]
MOV             R0, R4
BLX             R3
LDR             R0, [R4]
MOV             R2, #8
MOV             R1, SP
LDR             R3, [R0,#8]
MOV             R0, R4
BLX             R3
ADD             SP, SP, #8
POP             {R4,PC}
