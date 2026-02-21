ADD             R1, R0, #0x13000
ADD             R1, R1, #0x7E0
PUSH            {R4,R5}
LDR             R3, [R1]
LDR             R2, =0xFFFEC80E
LDR             R4, =unk_6580B4
SUB             R2, R0, R2
VSTM            R3, {S0-S2}
LDRB            R3, [R2]
ORR             R12, R3, #1
MOV             R3, R0
LDR             R0, =0x137F1
STRB            R12, [R2]
LDRB            R0, [R3,R0]
LDRB            R4, [R4,R0]
CMP             R4, R12
BNE             loc_1C8FD8
LDR             R12, =unk_6580B9
LDR             R5, [R1]
MOV             R4, #0
LDRB            R12, [R12,R0]
ADD             R0, R3, #0x10000
ADD             R0, R0, #0x3700
ADD             R3, R12, R5
STR             R3, [R1]
LDRH            R1, [R0,#0xF6]
ADD             R1, R1, #1
STRH            R1, [R0,#0xF6]
STRB            R4, [R2]
POP             {R4,R5}
BX              LR
