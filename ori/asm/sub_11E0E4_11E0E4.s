PUSH            {R4}
LDRB            R3, [R0]
CMP             R3, #0
BEQ             loc_11E120
MOV             R12, #0xE40000
LDR             R3, =0x30100
ADD             R4, R12, #0x1D0000
STR             R12, [R1],#4
LDR             R12, =0xF0101
STR             R3, [R1],#4
STM             R1!, {R4,R12}
EOR             R3, R12, R3,ASR#16
LDRB            R12, [R0,#1]
STR             R12, [R1],#4
STR             R3, [R1],#4
CMP             R2, #0
MOVEQ           R0, R1
BEQ             loc_11E140
LDR             R0, [R0,#4]
POP             {R4}
MOV             R2, #1
ADD             R0, R0, #0x7C ; '|'
B               sub_125580
POP             {R4}
BX              LR
