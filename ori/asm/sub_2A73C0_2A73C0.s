PUSH            {R4,R5,LR}
SUB             SP, SP, #0x14
LDR             R5, =flt_6E34B0
MOV             R4, R0
MOV             R1, SP
ADD             R2, R5, #0x138
LDM             R2, {R2,R3,R12}
STMEA           SP, {R2,R3,R12}
LDR             R2, [R0]
LDR             R2, [R2,#0x20]
BLX             R2
MOV             R2, #0xFFFFFF00
MOV             R0, R4
REV             R2, R2
ADD             R1, SP, #0x20+var_14
STR             R2, [SP,#0x20+var_14]
LDR             R2, [R4]
LDR             R2, [R2,#0x3C]
BLX             R2
ADD             R1, R5, #0x12C
MOV             R2, SP
LDM             R1, {R0,R1,R3}
STMEA           SP, {R0,R1,R3}
MOV             R1, #0
VLDR            S0, [R5,#(flt_6E35F4 - 0x6E34B0)]
ADD             R0, R4, #0x1DC
BL              sub_5A2298
MOV             R0, #0xFFFFFFFF
ADD             R1, SP, #0x20+var_10
REV             R0, R0
STR             R0, [SP,#0x20+var_10]
VLDR            S0, [R5,#(flt_6E35F4 - 0x6E34B0)]
ADD             R0, R4, #0x32C
BL              sub_4E6784
ADD             SP, SP, #0x14
POP             {R4,R5,PC}
