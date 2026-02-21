PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R0, #0
MOV             R5, R2
VPUSH           {D8}
SUB             SP, SP, #8
ADD             LR, R4, #0x3E0
VMOV.F32        S16, S0
LDRD            R6, R7, [SP,#0x28+arg_0]
MOV             R2, R0
MOV             R12, R0
STM             LR, {R0,R2,R12}
MOV             R8, R3
MOV             R0, R1
BL              sub_47ECF4
VMOV.F32        S1, S16
MOV             R0, R8
BL              sub_4801C4
LDR             R1, [R4,#0x3B4]
ADD             R5, R5, R0,LSL#2
CMP             R1, #0
BEQ             loc_14D6C4
LDRH            R2, [R5]
ADD             R0, R4, #0x300
CMP             R2, #0
BEQ             loc_14D6B0
LDRH            R1, [R1,#0x10]
CMP             R1, R2
BNE             loc_14D6C4
LDRH            R0, [R0,#0xA4]
LDRB            R1, [R5,#2]
AND             R0, R0, #0xFF
CMP             R0, R1
BNE             loc_14D6C4
ADD             SP, SP, #8
VPOP            {D8}
POP             {R4-R8,PC}
LDRH            R0, [R0,#0xA4]
LDRB            R1, [R5,#2]
AND             R0, R0, #0xFF
CMP             R0, R1
BEQ             loc_14D6A4
LDRH            R1, [R5]
CMP             R1, #0
BEQ             loc_14D6F4
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52FACC
LDR             R2, [R4]
MOV             R1, R0
MOV             R0, R4
LDR             R3, [R2,#0x58]
MOV             R2, #0
BLX             R3
LDRB            R1, [R5,#2]
MOV             R12, #0
MOV             R2, R6
MOV             R3, R7
MOV             R0, R4
STR             R12, [SP,#0x28+var_28]
BL              sub_14CA2C
LDRB            R0, [R5,#3]
STRB            R0, [R4,#0xF3]
ADD             SP, SP, #8
VPOP            {D8}
POP             {R4-R8,PC}
