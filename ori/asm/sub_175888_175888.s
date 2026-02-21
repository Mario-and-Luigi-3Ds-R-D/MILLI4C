PUSH            {R4-R6,LR}
MOV             R4, R0
LDRB            R0, [R0,#0x75C]
ANDS            R0, R0, #7
CMPNE           R0, #1
BEQ             loc_175930
CMP             R0, #2
BNE             loc_175930
LDRB            R0, [R4,#0x75D]
ADD             R5, R4, #0x700
ADD             R5, R5, #0x5D ; ']'
CMP             R0, #0xA
BEQ             loc_1758D0
CMP             R0, #0xB
BEQ             loc_175910
CMP             R0, #0x14
BNE             loc_175930
B               loc_17593C
LDR             R0, [R4,#0x164]
TST             R0, #7
BNE             loc_175930
LDR             R0, [R4]
LDR             R1, [R0,#0x220]
MOV             R0, R4
BLX             R1
MOV             R1, #4
STRB            R1, [R4,#0x4B4]
LDR             R1, [R4,#0x4EC]
BIC             R1, R1, #0x10
STR             R1, [R4,#0x4EC]
LDRB            R0, [R4,#0x75D]
ADD             R0, R0, #1
STRB            R0, [R5]
B               loc_175930
LDRB            R0, [R4,#0x4B4]
SUB             R0, R0, #1
SXTB            R0, R0
CMP             R0, #0
STRB            R0, [R4,#0x4B4]
MOVEQ           R0, #0x14
BNE             loc_175930
STRB            R0, [R4,#0x75D]
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_5735E0
LDR             R0, [R4]
MOV             R1, #0
LDR             R2, [R0,#0x84]
MOV             R0, R4
BLX             R2
LDRB            R1, [R4,#0xDE]
MOV             R0, #0
BIC             R1, R1, #1
STRB            R1, [R4,#0xDE]
B               loc_17592C
