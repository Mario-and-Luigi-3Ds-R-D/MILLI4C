PUSH            {R4-R12,LR}
MOV             R5, R3
MOV             R8, R1
MOV             R9, R2
MOV             R12, R0
LDRH            R0, [R3]
LDR             R10, =off_6D1648
ADD             R4, R3, #8
SUB             R1, R0, #0x168
CMP             R1, #4; switch 4 cases
LDR             R0, [R10]
ADD             R6, R3, #0x68 ; 'h'
MOV             R7, #0
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_181F90; jumptable 00181F90 default case
DCD loc_181FA8; jump table for switch statement
LDR             R0, [R4,#4]; jumptable 00181F90 case 0
CMN             R0, #1
MOVEQ           R0, #0
BEQ             loc_181FD4
LDR             R1, [R12]
SXTB            R3, R0
LDR             R2, [R12,#4]
MOV             R0, R12
LDR             R11, [R1,#0x9C]
MOV             R1, R9
BLX             R11
LDR             R1, [R4,#0x10]
LDR             R3, [R4]
ADD             R6, R6, #8
CMP             R1, #0
MOV             R1, R0
VLDM            R6, {S0-S1}
MOVNE           R2, #1
MOVEQ           R2, #0
MOV             R0, R3
BL              sub_1459F8
LDR             R1, [R10]
LDR             R2, [R1,#0x9C]
MOV             R1, R0
MOV             R0, R2
BL              sub_5D1F98
VMOV            S0, R0
LDRH            R3, [R5,#2]
MOV             R2, R9
MOV             R1, R8
MOV             R0, R3
VCVT.F32.U32    S0, S0
BL              sub_145730
NOP
NOP
B               def_181F90; jumptable 00181F90 default case
LDR             R1, [R4]; jumptable 00181F90 case 1
LDR             R0, [R0,#0x9C]
AND             R1, R1, #0xFF
BL              sub_3214C4
LDR             R1, [R4,#4]
NOP
BL              sub_234A48
NOP
NOP
B               def_181F90; jumptable 00181F90 default case
LDR             R1, [R4]; jumptable 00181F90 case 2
LDR             R0, [R0,#0x9C]
AND             R1, R1, #0xFF
BL              sub_3214C4
NOP
NOP
BL              sub_234664
NOP
NOP
B               def_181F90; jumptable 00181F90 default case
LDR             R1, [R4]; jumptable 00181F90 case 3
LDR             R0, [R0,#0x9C]
AND             R1, R1, #0xFF
BL              sub_3214C4
NOP
NOP
BL              sub_5CA48C
CMP             R0, #0
NOP
BNE             def_181F90; jumptable 00181F90 default case
MOV             R2, R5
MOV             R1, R9
MOV             R0, R8
BL              sub_29D1B0
MOV             R7, #3
MOV             R0, R7; jumptable 00181F90 default case
POP             {R4-R12,PC}
