MOV             R3, R0
LDR             R0, =byte_700918
PUSH            {R4,R5}
LDR             R12, =0xC449
MOV             R4, #0
STRB            R4, [R0,#(byte_700919 - 0x700918)]
STRB            R1, [R0]
STRH            R12, [R0,#(word_70091A - 0x700918)]
STR             R2, [R0,#(dword_700920 - 0x700918)]
STR             R3, [R0,#(dword_70091C - 0x700918)]
POP             {R4,R5}
B               loc_119520
DCD byte_700918
DCD 0xC449
PUSH            {R4-R8,LR}
SUB             SP, SP, #8
MOV             R6, R0
LDR             R5, =dword_6D2540
LDR             R7, =dword_697100
LDR             R8, =0xD0401834
LDR             R4, =dword_700998
MOV             R0, R4
BL              sub_13273C
LDR             R0, [R5]
CMP             R0, #0
BNE             loc_119568
LDR             R0, =dword_6D2540
LDR             R1, [R7,#(off_697108 - 0x697100)]; "err:f"
BL              sub_120200
ANDS            R1, R0, #0x80000000
NOP
BMI             loc_11956C
MOV             R0, #0
ANDS            R1, R0, #0x80000000
BMI             loc_1195B0
LDR             R1, [R7]
ADD             R0, R6, #0xC
BL              sub_120230
LDR             R0, [R5]
MOV             R1, R6
STR             R0, [SP,#0x20+var_20]
MOV             R0, SP
BL              sub_12162C
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1195C0
SVC             0x23 ; '#'
LDR             R0, [R7,#(dword_697104 - 0x697100)]
STR             R0, [R5]
B               loc_1195C0
CMP             R0, R8
LDRBEQ          R0, [R6]
CMPEQ           R0, #2
BEQ             loc_119604
MOV             R0, R4
BL              sub_1327BC
LDRB            R0, [R6]
CMP             R0, #2
CMPNE           R0, #5
BEQ             loc_1195FC
MOV             R2, #0
MOV             R0, SP
MOV             R1, #1
STR             R2, [SP,#0x20+var_20]
STR             R2, [SP,#0x20+var_1C]
BL              sub_120E48
MOV             R0, SP
NOP
BL              sub_120E7C
ADD             SP, SP, #8
POP             {R4-R8,PC}
LDR             R0, =0x4C4B40
MOV             R1, #0
BL              sub_121140
MOV             R0, R4
NOP
BL              sub_1327BC
NOP
NOP
B               loc_119538
