PUSH            {R4,R5,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0x1C
LDRB            R0, [R0,#0xC]
CMP             R0, #0
BEQ             loc_14A4A8
CMP             R0, #1
BNE             loc_14A49C
LDR             R5, =off_6CE970
LDR             R0, [R5]
ADD             R1, R0, #0x10C000
ADD             R1, R1, #0x5A0
MOV             R0, R4
BL              sub_48001C
LDR             R0, [R5]
VNEG.F32        S16, S0
ADD             R1, R0, #0x10C000
ADD             R1, R1, #0x324
ADD             R3, R0, #0x10C000
ADD             R2, R0, #0x10C000
STR             R1, [SP,#0x30+var_30]
ADD             R3, R3, #0x5E0
ADD             R2, R2, #0x580
MOV             R1, R4
ADD             R0, SP, #0x30+var_2C
BL              sub_47E9A8
LDRD            R0, R1, [SP,#0x30+var_2C]
ADD             R5, SP, #0x30+var_20
STRD            R0, R1, [SP,#0x30+var_20]
VSTR            S16, [SP,#0x30+var_18]
BL              sub_464168
MOV             R2, R0
MOV             R1, R5
ADD             R0, R4, #0x44 ; 'D'
BL              sub_142328
ADD             SP, SP, #0x1C
VPOP            {D8}
POP             {R4,R5,PC}
LDM             R4, {R0-R2}
MOV             R5, SP
STMEA           SP, {R0-R2}
BL              sub_464168
MOV             R2, R0
MOV             R1, R5
ADD             R0, R4, #0x44 ; 'D'
BL              sub_142328
ADD             SP, SP, #0x1C
VPOP            {D8}
POP             {R4,R5,PC}
