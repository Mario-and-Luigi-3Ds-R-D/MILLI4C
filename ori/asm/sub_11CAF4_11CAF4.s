PUSH            {R4-R6,LR}
BL              sub_120480
MOV             R4, R0
LDR             R0, =off_6B4F2C
MOV             R5, #0
ADD             R1, R4, #0x5800
STR             R0, [R4]
ADD             R0, R4, #0x5800
ADD             R0, R0, #0x94
ADD             R1, R1, #0x194
STRH            R5, [R0]
STR             R5, [R0,#0x200]
STRH            R5, [R0,#0x80]
STR             R5, [R0,#0x204]
STRH            R5, [R1]
STR             R5, [R0,#0x208]
STRH            R5, [R1,#0x80]
STR             R5, [R0,#0x20C]
ADD             R0, R4, #0x6800
ADD             R0, R0, #0x2C8
MOV             R2, #0x580
MOV             R1, R5
STRB            R5, [R0,#0x580]
BL              sub_110BE4
ADD             R0, R4, #0x7000
ADD             R0, R0, #0x4C ; 'L'
MOV             R2, #0x280
MOV             R1, #0
STRB            R5, [R0,#0x280]
BL              sub_110BE4
LDR             R2, =off_6B8AEC
ADD             R1, R4, #0x7000
ADD             R0, R4, #0x7000
STR             R2, [R4]
STR             R5, [R1,#0x2D8]
STR             R5, [R1,#0x2F0]
LDR             R1, =sub_123DAC
MOV             R3, #2
MOV             R2, #0x18
ADD             R0, R0, #0x3C4
BLX             sub_1002F4
SUB             R0, R0, #0x7000
SUB             R0, R0, #0x3C4
ADD             R1, R0, #0x7000
ADD             R1, R1, #0x3F4
LDR             R2, =0x270F
ADD             R3, R0, #0x7000
STRB            R5, [R1]
ADD             R3, R3, #0x3FC
STR             R5, [R1,#4]
STM             R3, {R2,R5}
ADD             R2, R0, #0x7400
VLDR            S0, =1.0
ADD             R2, R2, #4
ADD             R1, R0, #0x7400
VSTR            S0, [R2]
VLDR            S0, =0.0
ADD             R1, R1, #0xC
STR             R5, [R2,#4]
VSTR            S0, [R1]
STR             R5, [R1,#4]
POP             {R4-R6,PC}
