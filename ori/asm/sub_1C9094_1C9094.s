LDR             R2, =0x137DC
PUSH            {R4,R5}
MOV             R1, #0
LDR             R3, [R2,R0]
ADD             R2, R0, #0x13000
ADD             R2, R2, #0x7F0
CMP             R3, #0
STRBEQ          R1, [R2]
BEQ             loc_1C90C8
LDRB            R3, [R2]
MOV             R12, #1
BIC             R3, R12, R3
STRB            R3, [R2]
LDRB            R2, [R2]
LDR             R3, =0x137F1
ADD             R5, R0, #0x13000
ADD             R5, R5, #0x7E0
ADD             R2, R0, R2,LSL#2
ADD             R2, R2, #0x13000
MVN             R12, R3
ADD             R2, R2, #0x7D0
ADD             R3, R3, R0
VLDR            S0, [R2]
SUB             R12, R0, R12
ADD             R4, R0, #0x13000
VSTR            S0, [R5]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3700
STRB            R1, [R3]
STRB            R1, [R12]
STRH            R1, [R0,#0xF4]
ADD             R4, R4, #0x6D0
STRH            R1, [R0,#0xF6]
MOV             R2, #0xFE1FFFFF
STRH            R1, [R0,#0xF8]
STR             R2, [R4]
POP             {R4,R5}
BX              LR
