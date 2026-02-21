PUSH            {R4,R5}
ADD             R2, R0, #4
ADD             R3, R0, #0xC
LDM             R2, {R2,R12}
LDM             R3, {R3,R4}
LDRB            R5, [R0]
ADD             R2, R2, R3
ADD             R3, R12, R4
CMP             R5, #0
SUB             R4, R3, #1
SUB             R12, R2, #1
LDR             R2, =0x802F0065
MOVNE           R3, #3
MOVEQ           R3, #0
STR             R3, [R1],#4
STR             R2, [R1],#4
LDR             R2, [R0,#4]
CMP             R2, #0
MOVLT           R2, #0
BLT             loc_11E80C
LDR             R3, [R0,#0x14]
CMP             R3, R2
SUBLE           R2, R3, #1
LDR             R3, [R0,#8]
CMP             R3, #0
MOVLT           R0, #0
BLT             loc_11E82C
LDR             R0, [R0,#0x18]
CMP             R0, R3
SUBLE           R3, R0, #1
MOV             R0, R3,LSL#16
ORR             R0, R0, R2
CMP             R12, #0
STR             R0, [R1],#4
MOVLT           R0, #0
BLT             loc_11E84C
CMP             R4, #0
MOVLT           R4, #0
ORR             R0, R12, R4,LSL#16
STR             R0, [R1]
POP             {R4,R5}
ADD             R0, R1, #4
BX              LR
