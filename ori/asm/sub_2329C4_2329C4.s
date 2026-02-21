PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R5, R0, #0x44 ; 'D'
MOV             R0, R5
BL              sub_5A26D0
ADD             R0, R4, #0x28 ; '('
ADD             R3, R5, #0x20 ; ' '
LDM             R0, {R0-R2}
STR             R0, [R5,#0x1C]
ADD             R5, R5, #4
STM             R3, {R1,R2}
STM             R5, {R0-R2}
ADD             R0, R4, #0x10C
ADD             R2, R4, #0x100
VLDM            R0, {S0-S2}
MOV             R1, #0
ADD             R0, R4, #0x44 ; 'D'
BL              sub_5A299C
ADD             R5, R4, #0x9C
MOV             R0, R5
BL              sub_5A26D0
ADD             R0, R4, #4
ADD             R3, R5, #0x20 ; ' '
LDM             R0, {R0-R2}
STR             R0, [R5,#0x1C]
ADD             R5, R5, #4
STM             R3, {R1,R2}
STM             R5, {R0-R2}
MOV             R0, #0x118
ADD             R2, R4, #0xF4
LDRH            R0, [R0,R4]
MOV             R1, #0
VMOV            S0, R0
ADD             R0, R4, #0x9C
VCVT.F32.U32    S0, S0
BL              sub_5A2074
LDR             R0, =off_675FC4
MOV             R3, #0
LDM             R0, {R1,R2}
MOV             R0, R4
BL              sub_232B34
POP             {R4-R6,PC}
