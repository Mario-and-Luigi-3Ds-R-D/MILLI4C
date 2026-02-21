PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R1, [R0,#0x120]
LDR             R2, [R4,#0x120]
LDRH            R0, [R1,#0xE]
TST             R0, #1
ADD             R0, R2, #0x100
BEQ             loc_2326FC
LDRB            R2, [R0,#0x6E]
CMP             R2, #0
BEQ             locret_232764
LDRB            R0, [R0,#0x72]
CMP             R0, #0
BEQ             loc_23271C
MOV             R0, R1
BL              sub_532B54
CMP             R0, #0
NOP
BNE             locret_232764
LDR             R0, [R4,#0x40]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_23273C
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
STR             R5, [R4,#0x40]
LDR             R0, [R4,#0x120]
CMP             R0, #0
BEQ             loc_232750
BL              sub_533330
STR             R5, [R4,#0x120]
LDR             R0, =unk_675FBC
MOV             R3, #0
LDM             R0, {R1,R2}
MOV             R0, R4
BL              sub_232B34
POP             {R4-R6,PC}
