PUSH            {R4-R10,LR}
MOV             R3, #0x200
MOV             R2, #0x2C ; ','
LDR             R1, =off_6B4F64
STR             R1, [R0],#4
LDR             R1, =sub_120470
BLX             sub_1002F4
LDR             R1, =0x5804
MOV             R2, #0xFFFFFFFF
SUB             R0, R0, #4
REV             R2, R2
VLDR            S0, =0.0
STR             R2, [R1,R0]
MOV             R2, #0xFF
ADD             R1, R1, #4
REV             R2, R2
ADD             R10, R0, #0x5800
STR             R2, [R1,R0]
ADD             R1, R1, #4
MOV             R2, #0xFFFFFFFF
ADD             R3, R1, #0x14
REV             R2, R2
ADD             R12, R1, #0x18
STR             R2, [R1,R0]
ADD             R4, R1, #0x24 ; '$'
ADD             R5, R1, #0x28 ; '('
ADD             R6, R1, #0x29 ; ')'
ADD             R1, R0, #0x5800
VLDR            S1, =1.0
VSTR            S0, [R1,#0x10]
ADD             R10, R10, #0x14
MOV             R2, #0
VSTM            R10, {S0-S1}
MOV             R8, #3
VSTR            S1, [R1,#0x1C]
STR             R2, [R3,R0]
STR             R2, [R12,R0]
VSTR            S0, [R1,#0x28]
VSTR            S0, [R1,#0x2C]
STR             R2, [R4,R0]
MOV             R9, #4
STRB            R8, [R5,R0]
STRB            R9, [R6,R0]
VSTR            S0, [R1,#0x40]
VSTR            S0, [R1,#0x44]
VSTR            S0, [R1,#0x48]
ADD             R7, R0, #0x5800
VSTR            S0, [R1,#0x4C]
ADD             R7, R7, #0x7C ; '|'
VSTR            S0, [R1,#0x50]
VLDR            S2, =2.0
VSTR            S0, [R1,#0x54]
STRB            R2, [R7]
VSTR            S2, [R1,#0x80]
POP             {R4-R10,PC}
