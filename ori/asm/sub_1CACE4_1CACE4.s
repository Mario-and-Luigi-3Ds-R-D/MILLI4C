PUSH            {R4-R10,LR}
MOV             R6, R0
VPUSH           {D8}
BL              sub_1F0EFC
LDR             R0, [R6,#0xC0]
LDR             R2, =sub_5A9D8C
LDR             R1, [R0,#0x2BC]
CMP             R1, R2
LDREQ           R2, [R0,#0x2C0]
CMPEQ           R2, #0
BEQ             loc_1CAD24
LDR             R2, =sub_5AA034
CMP             R1, R2
LDREQ           R0, [R0,#0x2C0]
CMPEQ           R0, #0
BNE             loc_1CADA0
LDR             R8, =dword_6E1320
LDR             R9, =flt_6E1324
MOV             R4, #0
VLDR            S16, =0.0
MOV             R7, R4
ADD             R5, R6, R4,LSL#2
LDR             R0, [R5,#0xBC]
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x3C ; '<'
STR             R7, [R0]
LDR             R0, [R8]
TST             R0, #1
BNE             loc_1CAD80
LDR             R0, =dword_6E1320
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1CAD80
LDR             R0, =flt_6E1324
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_6E1328 - 0x6E1324)]
LDR             R0, =dword_6E1320
NOP
LDR             R0, [R5,#0xBC]
LDM             R9, {R1,R2}
ADD             R4, R4, #1
ADD             R0, R0, #0x13000
ADD             R0, R0, #0xC50
CMP             R4, #2
STM             R0, {R1,R2}
BLT             loc_1CAD38
VPOP            {D8}
POP             {R4-R10,PC}
