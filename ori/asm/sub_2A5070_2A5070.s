PUSH            {R0-R11,LR}
SUB             SP, SP, #0xC
MOV             R4, R3
MOV             R11, R1
LDR             R10, =off_6CE970
LDR             R6, [SP,#0x40+arg_0]
LDR             R0, [R10]
BL              sub_5EE710
CMP             R0, #0
BEQ             loc_2A5194
CMP             R4, #0
MOVLE           R0, #0
BLE             loc_2A5194
LDR             R2, [R10]
LDR             R0, =dword_6E26C4
MOV             R1, #0x64 ; 'd'
ADD             R2, R2, #0x190000
ADD             R2, R2, #0xD600
MUL             R5, R4, R1
LDR             R0, [R0,#(dword_6E2860 - 0x6E26C4)]
LDRSH           R1, [R2,#(word_19D6A2 - 0x19D600)]
SUB             R7, R0, R1
MOV             R0, #0x64 ; 'd'
MOV             R1, R6
MUL             R0, R5, R0
BL              sub_2FEFCC
MOV             R1, #1
BL              sub_586850
CMP             R7, R0
BLE             loc_2A50F4
CMP             R0, #1
MOVLE           R7, #1
MOVGT           R7, R0
MOV             R1, R7
MOV             R0, R5
BL              sub_2FEFCC
CMP             R7, #0
MOV             R9, R0
MOV             R4, #0
SUBGT           R8, R7, #1
BLE             loc_2A5178
LDR             R0, [R10]
CMP             R4, R8
MOV             R3, #0
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x6000
MOVEQ           R6, R5
LDR             R1, [R0,#(loc_1063B4 - 0x106000)]
MOVNE           R6, R9
MOV             R2, R3
MOV             R0, #0x1E0
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_2A5168
ADD             R1, SP, #0x40+var_3C
STR             R6, [SP,#0x40+var_40]; float
STM             R1, {R4,R7}
MOV             R2, R11; int
LDR             R1, [SP,#0x40+var_34]; int
LDR             R3, [SP,#0x40+var_2C]; int
BL              sub_2A53C4
ADD             R4, R4, #1
CMP             R4, R7
SUB             R5, R5, R6
BLT             loc_2A5114
CMP             R5, #0
BEQ             loc_2A5190
LDRB            R1, [R11,#0x495]
LDR             R0, [R10]
MOV             R2, R5
BL              sub_52C9F4
MOV             R0, R7
ADD             SP, SP, #0x1C
POP             {R4-R11,PC}
