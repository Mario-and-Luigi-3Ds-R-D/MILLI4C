PUSH            {R4-R7,LR}
MOV             R4, R0
SUB             SP, SP, #0xC
LDRB            R0, [R0,#8]
CMP             R0, #0
BEQ             loc_19F570
CMP             R0, #1
BNE             loc_19F568
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x410]
BL              sub_5C6830
CMP             R0, #0
BNE             loc_19F568
LDR             R0, [R4,#4]
ADD             R0, R0, #0x3F4
BL              sub_61E3C4
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
LDR             R0, [R4,#4]
MOV             R1, R0
ADD             R0, R0, #0x39C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_19F568
MOV             R5, #1
STRB            R5, [R1,#0x445]
LDR             R0, [R4,#4]
MOV             R1, #2
LDR             R0, [R0,#0x410]
BL              sub_1A52B4
LDR             R6, =off_6CE970
LDR             R0, =sub_10D4F0
LDR             R7, =off_6CE388
LDR             R1, [R6]
LDR             R0, [R1,R0]
ADD             R2, R0, #0x24 ; '$'
LDR             R0, [R0,#0x2C]
LDM             R2, {R1,R2}
STR             R0, [SP,#0x20+var_18]
STMEA           SP, {R1,R2}
LDR             R0, [R7]
LDR             R0, [R0,#0x98]
LDR             R0, [R0,#0x38]
MOV             R1, SP
STR             R0, [SP,#0x20+var_1C]
LDR             R0, [R4,#4]
BL              sub_14E984
LDR             R0, [R7]
NOP
BL              sub_1A0828
LDR             R0, =0xFFE683CC
LDR             R12, [R6]
LDR             R1, [R4,#4]
LDR             R2, =0x30744
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
STRB            R5, [R4,#8]
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
