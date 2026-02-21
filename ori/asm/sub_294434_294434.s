PUSH            {R4-R10,LR}
ADD             R6, R0, #4
MOVS            R8, R2
MOV             R9, R1
MOV             R1, #0
VPUSH           {D8}
MOV             R10, R3
STR             R1, [R0]
ADD             R1, R0, #4
STR             R1, [R0,#8]
STR             R1, [R0,#4]
LDR             R1, =off_6CE970
BEQ             loc_294550
LDR             R12, =0x404
VLDR            S16, =0.0
CMP             R8, #1
MOV             R10, #0
BEQ             loc_2945DC
CMP             R8, #2
CMPNE           R8, #3
BNE             loc_2945D4
MOV             R7, R0
LDR             R0, [R1]
MOV             R3, #0
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, R12
BL              sub_10A358
CMP             R0, #0
MOVEQ           R4, #0
BEQ             loc_294528
LDR             R1, =off_6BC54C
STRB            R8, [R0,#4]
STR             R1, [R0],#8
STR             R9, [R0],#4
BL              sub_14F198
SUB             R4, R0, #0xC
LDR             R0, [R0,#-4]
CMP             R8, #2
ADD             R9, R4, #0x400
MOV             R1, R8
LDR             R5, [R0,#0x14]
MOVEQ           R0, #1
MOVNE           R0, #0
CMP             R0, #0
STRB            R0, [R4,#0x401]
LDR             R0, [R4,#8]
VLDRNE          S0, [R5,#0xC0]
VLDREQ          S0, [R5,#0xC8]
BL              sub_287E48
LDRB            R0, [R9,#1]
MOV             R1, #0
CMP             R0, #0
LDRNE           R5, [R5,#0xC4]
LDREQ           R5, [R5,#0xCC]
ADD             R0, R4, #0xC
STRB            R10, [R4,#0xFE]
BL              sub_14C3E8
STR             R5, [R4,#0x3AC]
VSTR            S16, [R4,#0x3A8]
STRB            R10, [R4,#0x400]
LDR             R1, [R7,#8]
CMP             R1, R6
BNE             loc_29469C
LDR             R0, [R7]
CMP             R0, #0
BEQ             loc_2946BC
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
B               loc_2946BC
MOV             R4, R0
LDR             R0, [R1]
MOV             R3, #0
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x410
BL              sub_10A358
CMP             R0, #0
MOVEQ           R5, #0
BEQ             loc_294588
MOV             R2, R10
MOV             R1, R9
BL              sub_2941F0
MOV             R5, R0
LDR             R1, [R4,#8]
CMP             R1, R6
BNE             loc_2945B0
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_2945D0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
B               loc_2945D0
ADD             R0, R4, #4
CMP             R1, R0
BEQ             loc_2945D0
LDR             R2, [R0]
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R0]
STR             R0, [R0,#4]
STR             R5, [R4]
VPOP            {D8}
POP             {R4-R10,PC}
MOV             R5, R0
LDR             R0, [R1]
MOV             R3, #0
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, R12
BL              sub_10A358
CMP             R0, #0
MOVEQ           R4, #0
BEQ             loc_294648
MOV             R1, #1
STRB            R1, [R0,#4]
LDR             R1, =off_6BC5A8
STR             R1, [R0],#8
STR             R9, [R0],#4
BL              sub_14F198
SUB             R4, R0, #0xC
MOV             R1, #0
STRB            R10, [R0,#0xF2]
BL              sub_14C3E8
LDR             R0, [R4,#8]
LDR             R1, [R0,#0x14]
LDR             R1, [R1,#0xD8]
VSTR            S16, [R4,#0x3A8]
STR             R1, [R4,#0x3AC]
STRB            R10, [R4,#0x400]
BL              sub_2946DC
LDR             R1, [R5,#8]
CMP             R1, R6
BNE             loc_294670
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_294690
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
B               loc_294690
ADD             R0, R5, #4
CMP             R1, R0
BEQ             loc_294690
LDR             R2, [R0]
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R0]
STR             R0, [R0,#4]
STR             R4, [R5]
VPOP            {D8}
POP             {R4-R10,PC}
ADD             R0, R7, #4
CMP             R1, R0
BEQ             loc_2946BC
LDR             R2, [R0]
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R0]
STR             R0, [R0,#4]
STR             R4, [R7]
VPOP            {D8}
POP             {R4-R10,PC}
