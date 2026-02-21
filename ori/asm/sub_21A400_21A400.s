PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
LDR             R1, [R4,#8]
ADD             R2, R1, #0x400
LDR             R5, [R1,#0x18]
LDRH            R1, [R2,#0x84]
LDR             R0, [R0]
CMP             R1, #0
BEQ             loc_21A470
BL              sub_52FACC
LDR             R2, [R5]
MOV             R1, R0
MOV             R0, R5
LDR             R3, [R2,#0x58]
MOV             R2, #0
BLX             R3
LDR             R0, [R4,#8]
MOV             R3, #0x100
MOV             R2, #0
LDRB            R1, [R0,#0x486]
MOV             R0, R5
BL              sub_14C430
MOV             R0, #0
STRB            R0, [R5,#0xF3]
LDR             R1, [R4,#8]
STRB            R0, [R1,#0x487]
POP             {R4-R6,PC}
ADD             R1, R0, #0x190000
ADD             R1, R1, #0xCF00
LDRB            R3, [R1,#0x28]
CMP             R3, #0
BEQ             loc_21A494
LDRB            R1, [R1,#0x2B]
CMP             R1, #0
MOVEQ           R1, #1
BEQ             loc_21A498
MOV             R1, #0
LDRSB           R2, [R2,#0x95]
LDR             R3, =unk_64E7C4
ADD             R2, R3, R2,LSL#2
ADD             R1, R2, R1,LSL#1
LDRH            R1, [R1]
BL              sub_52FACC
MOV             R1, R0
LDR             R0, [R5]
MOV             R2, #0
LDR             R3, [R0,#0x58]
MOV             R0, R5
BLX             R3
LDRB            R1, [R4,#0x19]
MOV             R3, #0x100
MOV             R2, #0
MOV             R0, R5
BL              sub_14C430
NOP
NOP
B               loc_21A45C
