PUSH            {R4-R10,LR}
MOV             R6, R0
ADD             R1, R0, #4
VPUSH           {D8}
BL              sub_29AF78
ADD             R1, R6, #4
MOV             R0, R6
BL              sub_29B7E0
LDR             R7, =off_6D1648
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
LDR             R1, [R6,#4]
LDR             R9, =dword_68BC98
ADD             R0, R0, #0x15000
MOV             R5, #0
VLDR            S16, =0.0
MOV             R8, R5
STR             R1, [R0,#0x1CC]
ADD             R0, R6, R5,LSL#2
LDR             R1, [R6,#4]
LDR             R4, [R0,#4]
CMP             R4, R1
BNE             loc_29B274
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #0
BL              sub_19AD54
LDR             R0, [R4,#0x120]
ORR             R0, R0, #1
STR             R0, [R4,#0x120]
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
MOV             R1, #1
STR             R4, [R0,#0x1CC]
MOV             R0, R4
BL              sub_1FF828
LDR             R0, [R4]
LDR             R1, [R0,#0xBC]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0xC4]
MOV             R0, R4
BLX             R1
LDR             R0, [R4,#0x120]
BIC             R0, R0, #8
STR             R0, [R4,#0x120]
LDR             R0, =0x316
VSTR            S16, [R4,#0x2B8]
VSTR            S16, [R4,#0x2BC]
VSTR            S16, [R4,#0x2C0]
VSTR            S16, [R4,#0x2C4]
STRH            R8, [R0,R4]
LDRD            R0, R1, [R9,#(off_68BCB8 - 0x68BC98)]
STRD            R0, R1, [R4,#4]
B               loc_29B284
LDR             R0, [R0,#0x18]
CMP             R0, #0
MOVNE           R1, #0
BLNE            sub_532AA0
ADD             R5, R5, #1
CMP             R5, #3
BLT             loc_29B1D0
LDRD            R0, R1, [R6]
BIC             R0, R0, #2
ORR             R0, R0, #1
STR             R0, [R6]
MOV             R0, #0xA
STR             R1, [R6,#0x10]
STRH            R0, [R6,#0x6C]
VPOP            {D8}
POP             {R4-R10,PC}
