PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0x40]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_232794
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
STR             R5, [R4,#0x40]
LDR             R0, [R4,#0x120]
CMP             R0, #0
BEQ             loc_2327A8
BL              sub_533330
STR             R5, [R4,#0x120]
LDR             R0, =unk_675FBC
MOV             R3, #0
LDM             R0, {R1,R2}
MOV             R0, R4
BL              sub_232B34
POP             {R4-R6,PC}
