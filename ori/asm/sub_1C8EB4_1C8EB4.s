LDR             R2, =0x137F1
PUSH            {R4,R5}
LDR             R12, =unk_6580B4
ADD             R5, R0, R2
LDRB            R2, [R5]
LDRB            R3, [R12,R2]
TST             R3, #2
BEQ             loc_1C8F4C
ADD             R3, R12, #0xA
VLDR            S0, [R1]
LDRB            R4, [R3,R2]
ADD             R2, R0, #0x13000
ADD             R2, R2, #0x7E0
LDR             R3, =0xFFFEC80E
LDR             R1, [R2]
ADD             R4, R4, R1
SUB             R1, R0, R3
VSTR            S0, [R4]
LDRB            R3, [R1]
ORR             R4, R3, #2
MOV             R3, R0
STRB            R4, [R1]
LDRB            R0, [R5]
LDRB            R12, [R12,R0]
CMP             R12, R4
BNE             loc_1C8F4C
LDR             R12, =unk_6580B9
LDR             R5, [R2]
MOV             R4, #0
LDRB            R12, [R12,R0]
ADD             R0, R3, #0x10000
ADD             R0, R0, #0x3700
ADD             R3, R12, R5
STR             R3, [R2]
LDRH            R2, [R0,#0xF6]
ADD             R2, R2, #1
STRH            R2, [R0,#0xF6]
STRB            R4, [R1]
POP             {R4,R5}
BX              LR
