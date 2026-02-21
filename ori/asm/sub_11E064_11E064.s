MOV             R3, R0
LDRB            R0, [R0]
CMP             R0, #0
MOV             R0, #0
BEQ             loc_11E0B0
LDRB            R0, [R3,#1]
CMP             R0, #0
BEQ             loc_11E090
CMP             R0, #1
BEQ             loc_11E0A0
B               loc_11E0AC
LDRB            R0, [R3,#2]
CMP             R0, #0
BEQ             loc_11E0D4
B               loc_11E0AC
LDRB            R0, [R3,#2]
CMP             R0, #1
BEQ             loc_11E0D4
MOV             R0, #1
LDR             R12, =0xF0040
CMP             R2, #0
STM             R1!, {R0,R12}
MOVEQ           R0, R1
BEQ             locret_11E0DC
LDR             R0, [R3,#4]
MOV             R2, #1
ADD             R0, R0, #0x7C ; '|'
B               sub_125580
MOV             R0, #2
B               loc_11E0B0
BX              LR
