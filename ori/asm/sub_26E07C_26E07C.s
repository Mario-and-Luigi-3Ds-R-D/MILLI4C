PUSH            {R4,R5,LR}
SUB             SP, SP, #0xC
MOV             R5, R0
MOV             R1, #2
STRB            R1, [R0,#0x5A8]!
MOV             R2, #1
STR             R2, [R0,#4]
LDR             R0, [R5,#0xC4]
CMP             R0, #0
BEQ             loc_26E0B0
LDR             R2, [R0]
LDR             R2, [R2,#8]
BLX             R2
LDR             R0, =off_6CE970
MOV             R3, #0
MOV             R4, SP
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0xB4
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, R5
BLNE            sub_26D434
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
BNE             loc_26E128
LDR             R0, [SP,#0x18+var_18]
CMP             R0, #0
BEQ             loc_26E128
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x18+var_14]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
