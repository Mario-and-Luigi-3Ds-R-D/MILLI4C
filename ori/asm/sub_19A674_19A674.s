PUSH            {R4-R10,LR}
MOV             R5, R0
MOV             R6, R1
MOV             R9, R2
LDR             R10, =off_6D1648
LDR             R0, [R10]
BL              sub_5C8540
CMP             R0, #0
BEQ             locret_19A7F0
ADD             R4, R5, #0x1000
ADD             R0, R5, #0x1D8
LDR             R1, [R4,#0x1F8]
LDRB            R2, [R6,#0xB4]
LDRB            R1, [R1,R0]
CMP             R2, R1
BEQ             loc_19A734
LDR             R1, [R4,#0x1F8]
LDRB            R1, [R1,R0]
CMP             R1, #0xC; switch 12 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_19A6C0; jumptable 0019A6C0 default case, case 4
DCD loc_19A700; jump table for switch statement
MOV             R1, #0x1C; jumptable 0019A6C0 case 3
B               loc_19A70C
MOV             R1, #1; jumptable 0019A6C0 cases 0-2,5-11
B               loc_19A70C
MOV             R1, #0; jumptable 0019A6C0 default case, case 4
LDR             R2, [R4,#0x1F4]
ADD             R1, R1, R2
STR             R1, [R4,#0x1F4]
LDR             R1, [R4,#0x1F8]
ADD             R1, R1, #1
STR             R1, [R4,#0x1F8]
LDRB            R1, [R1,R0]
LDRB            R2, [R6,#0xB4]
CMP             R2, R1
BNE             loc_19A6B4
LDR             R1, [R4,#0x1F4]
ADD             R0, R5, #0x1F8
ADD             R8, R1, R0
LDR             R0, [R6]
LDR             R1, [R0,#0x18]
MOV             R0, R6
BLX             R1
MOV             R7, R0
MOV             R2, R0
MOV             R1, R8
MOV             R0, R9
BL              sub_1103A4
LDR             R0, [R5,#0x1D4]
LDR             R1, [R4,#0x1F8]
AND             R0, R0, #0x3F ; '?'
CMP             R0, R1
LDREQ           R0, [R5,#0x90]
CMPEQ           R0, #0
BNE             loc_19A7D4
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
MOV             R1, #0
NOP
BL              sub_166410
LDR             R0, [R10]
NOP
BL              sub_1E45C8
LDR             R1, [R0,#0x14]
MOV             R2, #1
MOV             R3, #0
TST             R1, #0x400000
LDREQ           R0, [R0,#4]
LDRNE           R0, [R0,#8]
MOV             R1, R2
LDR             R0, [R0,#4]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
BL              sub_59AD78
STR             R6, [R5,#0x90]
ADD             R0, R4, #0x1F4
ADD             R4, R4, #0x1F4
LDM             R0, {R0,R1}
ADD             R0, R0, R7
ADD             R1, R1, #1
STM             R4, {R0,R1}
MOV             R0, #1
POP             {R4-R10,PC}
