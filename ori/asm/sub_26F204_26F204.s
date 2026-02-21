PUSH            {R4,R5,LR}
MOV             R5, R0
LDR             R0, =off_6CE970
SUB             SP, SP, #0xC
MOV             R3, #0
MOV             R4, SP
LDR             R0, [R0]
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x4B0
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, R5
BLNE            sub_26F0F0
STR             R0, [SP,#0x18+var_18]
ADD             R0, R4, #4
STR             R0, [SP,#0x18+var_10]
STR             R0, [SP,#0x18+var_14]
ADD             R0, R5, #0x400
MOV             R1, R4
MOV             R2, #0
ADD             R0, R0, #0x2C8
BL              sub_61F1E4
LDR             R1, [SP,#0x18+var_10]
ADD             R0, SP, #0x18+var_14
CMP             R1, R0
BNE             loc_26F288
LDR             R0, [SP,#0x18+var_18]
CMP             R0, #0
BEQ             loc_26F288
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x18+var_14]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
