MOV             R2, R1
ADD             R1, R0, #0x400
ADD             R1, R1, #0x358
NOP
PUSH            {R4,R5,LR}
MOV             R5, R1
MOV             R4, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0x64
MOV             R1, R2
LDRB            R0, [R5,#0x2F4]
TST             R0, #0x80
BEQ             loc_1E5CE4
LDR             R0, [R5,#0xA4]
LDR             R1, [R0,#0x88]
ORR             R1, R1, #0x800
STR             R1, [R0,#0x88]
ADD             SP, SP, #0x64 ; 'd'
VPOP            {D8-D9}
POP             {R4,R5,PC}
MOV             R0, R4
BL              sub_5CA54C
MOV             R0, R5
NOP
BL              sub_1E9DC0
ADD             R0, R4, #0x108
ADD             R1, R4, #0x108
VLDM            R0, {S16-S18}
LDR             R0, [R4]
LDR             R2, [R0,#0x1C0]
MOV             R0, R4
BLX             R2
LDRB            R0, [R5,#0x2F7]
TST             R0, #1
BEQ             loc_1E5D70
LDR             R1, [R5,#0xA4]
MOV             R0, SP
ADD             R1, R1, #0x4C ; 'L'
BL              sub_1169CC
LDR             R0, [R4,#0xE0]
MOV             R2, #0
ADD             R1, SP, #0x80+var_50
LDR             R3, [R0,#0xC]
ADD             R0, R4, #0xE0
BLX             R3
LDR             R0, [R5,#0xA4]
MOV             R2, SP
ADD             R1, SP, #0x80+var_50
ADD             R0, R0, #0x4C ; 'L'
BL              sub_141F30
LDR             R0, [R5,#0xA4]
LDR             R1, [R0,#0x88]
ORR             R1, R1, #0x800
STR             R1, [R0,#0x88]
B               loc_1E5D8C
LDR             R0, [R5]
CMP             R4, #0
ADDNE           R1, R4, #0xE0
MOVEQ           R1, #0
LDR             R2, [R0,#0x13C]
MOV             R0, R5
BLX             R2
ADD             R0, R4, #0x108
VSTM            R0, {S16-S18}
LDR             R0, [R4]
LDR             R1, [R0,#0x324]
ADD             SP, SP, #0x64 ; 'd'
MOV             R0, R4
VPOP            {D8-D9}
POP             {R4,R5,LR}
BX              R1
