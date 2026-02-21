PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, =off_6CE970
SUB             SP, SP, #0x10
MOV             R4, SP
MOV             R3, #0x800000
LDR             R0, [R0]
MOV             R2, #0
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x41C
BL              sub_10A358
CMP             R0, #0
MOV             R6, #0
BEQ             loc_292F50
LDR             R1, =off_6BC510
STM             R0, {R1,R5}
ADD             R0, R0, #0x24 ; '$'
BL              sub_14F198
STRB            R6, [R0,#-0x18]!
STRB            R6, [R0,#0x40C]
SUB             R0, R0, #0xC
STR             R0, [SP,#0x20+var_20]
ADD             R0, R4, #4
STR             R0, [SP,#0x20+var_18]
STR             R0, [SP,#0x20+var_1C]
MOV             R1, R4
MOV             R2, #0
ADD             R0, R5, #0x58 ; 'X'
BL              sub_61F2AC
LDR             R1, [SP,#0x20+var_18]
ADD             R0, SP, #0x20+var_1C
CMP             R1, R0
BNE             loc_292F98
LDR             R0, [SP,#0x20+var_20]
CMP             R0, #0
BEQ             loc_292F98
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x20+var_1C]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
