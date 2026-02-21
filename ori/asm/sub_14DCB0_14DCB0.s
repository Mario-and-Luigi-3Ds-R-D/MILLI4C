PUSH            {R3-R5,LR}
MOV             R3, #0
LDR             R2, =sub_14DD44
ADD             R4, R0, #0x3E0
MOV             R12, R3
STM             R4, {R2,R3,R12}
CMP             R1, #0
BEQ             locret_14DD38
MOV             R4, R0
LDRB            R0, [R0,#0x3B8]
CMP             R0, #0
BEQ             locret_14DD38
ADD             R5, R4, #0x300
ADD             R5, R5, #0xBA
LDRH            R1, [R5]
CMP             R1, #0
BEQ             loc_14DD18
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
MOV             R2, #0
MOV             R0, R4
MOV             R3, #0x100
STR             R2, [SP,#0x10+var_10]
BL              sub_14CA2C
LDRB            R0, [R5,#3]
STRB            R0, [R4,#0xF3]
POP             {R3-R5,PC}
