PUSH            {R3-R7,LR}
ADD             R4, R0, #0x38 ; '8'
MOV             R1, #1
LDM             R4, {R4,R6}
STRB            R1, [R0,#0x25]
CMP             R4, R6
MOVNE           R7, #0
BEQ             locret_299438
MOV             R0, #0x6F0000
LDR             R5, [R4]
REV             R0, R0
MOV             R1, SP
STR             R0, [SP,#0x18+var_18]
ADD             R0, R5, #0x48 ; 'H'
BL              sub_14D748
LDRB            R0, [R5,#6]
STRB            R7, [R5,#5]
CMP             R0, #2
CMPNE           R0, #9
MOVNE           R0, R5
BLNE            sub_299900
ADD             R4, R4, #0xC
CMP             R4, R6
BNE             loc_2993F8
POP             {R3-R7,PC}
