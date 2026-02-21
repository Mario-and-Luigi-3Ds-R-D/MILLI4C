PUSH            {R3-R11,LR}
MOV             R6, R0
MOV             R9, R1
MOV             R8, R2
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
LDR             R1, [R6,#4]
ADD             R2, R9, R9,LSL#1
LDR             R10, =0x19C98
LDR             R11, =unk_68D70A
LDRB            R1, [R1,#0xDE]
MOV             R4, #0
MOV             R1, R1,LSL#30
MOV             R1, R1,LSR#31
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x94
LDR             R0, [R0]
ADD             R0, R0, R2,LSL#5
STR             R0, [SP,#0x28+var_28]
LDR             R1, =byte_68DBBD
ADD             R0, R6, R4
ADD             R0, R0, #0xC800
ADD             R0, R0, #0xD
LDRB            R3, [R1]
LDRB            R1, [R0]
RSB             R2, R4, R4,LSL#4
LDR             R0, [R6,#4]
ADD             R2, R2, R4,LSL#5
ADD             R1, R1, R1,LSL#2
ADD             R2, R10, R2,LSL#2
ADD             R1, R11, R1,LSL#2
CMP             R4, R3
LDRSH           R7, [R1,#8]
ADD             R5, R0, R2
BGE             loc_2387C0
CMN             R9, #1
BEQ             loc_238778
LDR             R0, [R5]
LDR             R1, [SP,#0x28+var_28]
LDR             R2, [R0,#0x34]
MOV             R0, R5
BLX             R2
LDR             R1, [R6,#4]
LDR             R0, [R5]
MOV             R3, #0
ADD             R1, R1, #0x400
MOV             R2, R3
LDR             R12, [R0,#0x3C]
VLDR            S0, [R1,#0x70]
MOV             R1, R7
MOV             R0, R5
BLX             R12
B               loc_23879C
LDR             R1, [R5]
ADD             R0, R0, #0x400
MOV             R3, #0
VLDR            S0, [R0,#0x70]
LDR             R12, [R1,#0x3C]
MOV             R2, R3
MOV             R1, R7
MOV             R0, R5
BLX             R12
CMN             R8, #1
LDRNE           R0, [R5,#0xA4]
MOV             R1, #1
STRHNE          R8, [R0,#0x16]
LDR             R0, [R5]
LDR             R2, [R0,#0x44]
MOV             R0, R5
BLX             R2
B               loc_2387D4
LDR             R0, [R5]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R5
BLX             R2
ADD             R4, R4, #1
CMP             R4, #0x9F
BLT             loc_2386F0
POP             {R3-R11,PC}
