PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R5, R1
LDRB            R0, [R0,#0x1AC]
SUB             SP, SP, #0x10
MOV             R6, R2
CMP             R0, R5
MOV             R7, R3
BNE             loc_1DA17C
CMP             R6, #4
LDRBNE          R0, [R4,#0x1AD]
CMPNE           R0, R6
BEQ             loc_1DA278
STRB            R5, [R4,#0x1AC]
LDR             R0, [R4,#0x100]
LDR             R8, =off_6CEB30
LDRB            R0, [R0,#0x495]
CMP             R0, #1
BEQ             loc_1DA1B4
BL              sub_48004C
CMP             R0, #0
NOP
BEQ             loc_1DA1CC
LDR             R2, [R8]; unk_6566D0
LDM             R2, {R0-R2}
STMEA           SP, {R0-R2}
B               loc_1DA1FC
LDR             R0, [R8]; unk_6566D0
LDM             R0, {R1,R2}
LDR             R0, [R0,#(dword_6566D8 - 0x6566D0)]
STR             R0, [SP,#0x28+var_20]
STMEA           SP, {R1,R2}
B               loc_1DA1FC
LDR             R0, =dword_6E2378
LDRB            R1, [R0,#(byte_6E2385 - 0x6E2378)]
CMP             R1, #1
LDRBEQ          R0, [R0,#(byte_6E2384 - 0x6E2378)]
CMPEQ           R0, #0
BEQ             loc_1DA1A4
LDR             R1, [R8]; unk_6566D0
ADD             R0, R1, #0xC
LDR             R1, [R1,#(dword_6566E4 - 0x6566D0)]
LDM             R0, {R0,R2}
STR             R1, [SP,#0x28+var_20]
STMEA           SP, {R0,R2}
MOVS            R0, R5
BEQ             loc_1DA220
CMP             R0, #1
VLDREQ          S0, =-144.0
BEQ             loc_1DA21C
CMP             R5, #2
VLDREQ          S0, =-104.0
BNE             loc_1DA220
VSTR            S0, [SP,#0x28+var_24]
CMP             R5, #0
MOVEQ           R0, #0
STRBEQ          R0, [R4,#0x1AD]
CMPNE           R5, #1
BEQ             loc_1DA244
CMP             R0, #2
BNE             loc_1DA244
CMP             R6, #4
STRBNE          R6, [R4,#0x1AD]
ADD             R0, R4, #0x104
BL              sub_5A26D0
CMP             R7, #0
NOP
BEQ             loc_1DA280
ADD             R4, R4, #0x104
MOV             R0, R4
BL              sub_5A26D0
LDMFD           SP, {R0-R2}
ADD             R3, R4, #0x1C
ADD             R4, R4, #4
STM             R3, {R0-R2}
STM             R4, {R0-R2}
ADD             SP, SP, #0x10
POP             {R4-R8,PC}
VLDR            S0, =4.0
MOV             R2, SP
MOV             R1, #0
ADD             R0, R4, #0x104
BL              sub_5A2A74
ADD             SP, SP, #0x10
POP             {R4-R8,PC}
