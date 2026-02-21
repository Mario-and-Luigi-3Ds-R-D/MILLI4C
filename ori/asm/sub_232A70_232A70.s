PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
ADD             R0, R0, #0x44 ; 'D'
VLDR            S16, =1.0
VMOV.F32        S0, S16
BL              sub_5A2484
LDM             R0, {R1,R2}
VMOV.F32        S0, S16
LDR             R0, [R0,#8]
ADD             R3, R4, #0x28 ; '('
STR             R0, [R4,#0x30]
ADD             R0, R4, #0x9C
STM             R3, {R1,R2}
BL              sub_5A2484
LDM             R0, {R1,R2}
ADD             R3, R4, #4
LDR             R0, [R0,#8]
STR             R0, [R4,#0xC]
ADD             R0, R4, #0x44 ; 'D'
STM             R3, {R1,R2}
BL              sub_5F19B8
CMP             R0, #0
BNE             loc_232B08
ADD             R0, R4, #0x9C
BL              sub_5F19B8
CMP             R0, #0
BNE             loc_232B08
LDR             R1, =0x11A
LDR             R0, =off_675FB4
MOV             R3, #1
LDRH            R1, [R1,R4]
TST             R1, #0x8000
BEQ             loc_232B10
ADD             R0, R0, #0x18
LDM             R0, {R1,R2}
MOV             R0, R4
BL              sub_232B34
VPOP            {D8}
POP             {R4,PC}
ADD             R0, R0, #0x20 ; ' '
LDM             R0, {R1,R2}
MOV             R0, R4
BL              sub_232B34
VPOP            {D8}
POP             {R4,PC}
