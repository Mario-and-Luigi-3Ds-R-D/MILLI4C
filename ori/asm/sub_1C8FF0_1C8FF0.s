LDR             R1, =0x137F1
PUSH            {R4,R5}
LDR             R12, =unk_6580B4
ADD             R4, R0, R1
LDRB            R1, [R4]
LDRB            R1, [R12,R1]
TST             R1, #4
BEQ             loc_1C907C
ADD             R1, R0, #0x13000
ADD             R1, R1, #0x7E0
LDR             R2, =0xFFFEC80E
LDR             R3, [R1]
SUB             R2, R0, R2
ADD             R3, R3, #0xC
VSTM            R3, {S0-S1}
LDRB            R3, [R2]
ORR             R5, R3, #4
MOV             R3, R0
STRB            R5, [R2]
LDRB            R0, [R4]
LDRB            R12, [R12,R0]
CMP             R12, R5
BNE             loc_1C907C
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
