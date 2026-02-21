PUSH            {R4,R5,LR}
MOV             R4, R0
LDRB            R0, [R0,#0x1A]
SUB             SP, SP, #0x24
MOV             R5, R1
CMP             R0, #0
BNE             loc_151F7C
LDR             R0, =unk_6E1DF4
MOV             R3, #0
ADD             R1, R0, #0x1A4
LDR             R0, [R0,#(dword_6E1FA0 - 0x6E1DF4)]
LDM             R1, {R1,R2}
STR             R0, [SP,#0x30+var_20]
ADD             R0, SP, #0x30+var_28
STM             R0, {R1,R2}
ADD             R2, SP, #0x30+var_28
LDR             R0, [R4,#8]
LDR             R0, [R0,#0x18]
LDR             R1, [R0]
LDR             R12, [R1,#0x30]
ADD             R1, SP, #0x30+var_1C
BLX             R12
LDR             R0, =off_6CE970
LDR             R3, [R4,#8]
MOV             R12, #2
MOV             R2, #0
LDR             R0, [R0]
STMEA           SP, {R2,R12}
MOV             R1, R5
ADD             R2, SP, #0x30+var_1C
BL              sub_52C114
ADD             SP, SP, #0x24 ; '$'
POP             {R4,R5,PC}
