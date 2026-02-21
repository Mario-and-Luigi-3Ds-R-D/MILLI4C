PUSH            {R4-R6,LR}
CMP             R2, #0
LDR             R4, [R0]
MOV             R5, R1
BNE             loc_1CC6CC
ADD             R0, R4, #0x23800
ADD             R0, R0, #0x3E4
MOV             R1, #0
MOV             R6, R0
STRB            R1, [R0,#0x2B3]
MOV             R0, R6
BL              sub_4D12FC
CMP             R5, #0
BEQ             loc_1CC760
MOV             R1, #0
MOV             R0, R4
BL              sub_4DE880
ADD             R0, R4, #0x23800
ADD             R0, R0, #0x12C
BL              sub_4D14A8
ADD             R0, R4, #0x23800
ADD             R0, R0, #0x3E4
MOV             R5, R0
BL              sub_5EA2C0
CMP             R0, #0
NOP
BEQ             loc_1CC71C
MOV             R0, R5
BL              sub_5EA1B8
CMP             R0, #0
MOVNE           R0, R5
BLNE            sub_4D14A8
ADD             R0, R4, #0x13C00
ADD             R0, R0, #0xD8
BL              sub_4D8C88
ADD             R0, R4, #0x14800
ADD             R0, R0, #0x284
MOV             R5, R0
BL              sub_4D38CC
MOV             R0, R5
NOP
BL              sub_50F168
MOV             R1, R0
ADD             R0, R4, #0x14000
ADD             R0, R0, #0xF50
BL              sub_4DA278
NOP
NOP
B               loc_1CC774
ADD             R0, R4, #0x13C00
ADD             R0, R0, #0x4E ; 'N'
LDRB            R1, [R0]
BIC             R1, R1, #4
STRB            R1, [R0]
ADD             R0, R4, #0x13C00
ADD             R0, R0, #0x1C
MOV             R5, #0
MOV             R6, R0
BL              sub_4DC824
MOV             R1, R5
MOV             R0, R6
BL              sub_4DC7B4
MOV             R0, #1
STRB            R0, [R4,#0xF1]
POP             {R4-R6,PC}
