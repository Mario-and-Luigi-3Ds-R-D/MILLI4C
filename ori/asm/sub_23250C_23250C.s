PUSH            {R4-R6,LR}
MOV             R4, R0
VLDR            S0, =1.0
ADD             R0, R0, #0x44 ; 'D'
BL              sub_5A2484
LDM             R0, {R1,R2}
ADD             R3, R4, #0x28 ; '('
LDR             R0, [R0,#8]
STR             R0, [R4,#0x30]
ADD             R0, R4, #0x44 ; 'D'
STM             R3, {R1,R2}
BL              sub_5F19B8
CMP             R0, #0
BNE             locret_23258C
LDR             R0, [R4,#0x40]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_232564
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
STR             R5, [R4,#0x40]
LDR             R0, [R4,#0x120]
CMP             R0, #0
BEQ             loc_232578
BL              sub_533330
STR             R5, [R4,#0x120]
LDR             R0, =unk_675FBC
MOV             R3, #0
LDM             R0, {R1,R2}
MOV             R0, R4
BL              sub_232B34
POP             {R4-R6,PC}
