PUSH            {R4-R10,LR}
MOV             R5, R0
LDR             R0, =dword_6E2378
LDRB            R1, [R0,#(byte_6E2384 - 0x6E2378)]
LDR             R0, [R5,#0xC4]
CMP             R1, #0
MOV             R1, #0
LDR             R0, [R0,#4]
LDREQ           R4, [R0,#4]
LDRNE           R4, [R0,#8]
ADD             R2, R4, #0x870
LDR             R0, [R4]
LDR             R3, [R0,#0xF0]
MOV             R0, R4
BLX             R3
ADD             R6, R4, #0x400
MOV             R8, #0
LDRH            R0, [R6,#0x68]
SUB             R0, R0, #8
CMP             R0, #8
BCC             loc_1F0024
STRH            R8, [R6,#0x68]
LDRB            R0, [R4,#0xDE]
ORR             R0, R0, #8
STRB            R0, [R4,#0xDE]
LDR             R0, [R5,#0xC4]
LDR             R1, [R4,#0x86C]
MOV             R2, #0xF
LDR             R9, =off_67E18C
LDR             R0, [R0,#4]
BICS            R1, R2, R1
LDR             R1, [R0,#4]
BNE             loc_1F0150
LDR             R2, [R0,#0x14]
TST             R2, #0x10000
BEQ             loc_1F0064
LDR             R1, [R1,#0x86C]
AND             R1, R1, #0xF
CMP             R1, #6
CMPNE           R1, #7
BEQ             loc_1F0150
LDR             R0, [R5]
MOV             R1, R4
LDR             R2, [R0,#0xB4]
MOV             R0, R5
BLX             R2
MOVS            R7, R0
BEQ             loc_1F0130
BL              sub_5C75C8
CMP             R0, #0
NOP
BEQ             loc_1F0130
LDR             R1, [R4,#0x758]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x358
LDR             R2, [R1,#0x34]
MOV             R1, R7
BLX             R2
LDR             R0, [R7,#0x38]
LDR             R1, [R4,#0x464]
LDRB            R2, [R0,#0x1C]
LDR             R0, =unk_6731D8
AND             R1, R1, #0xF
AND             R2, R2, #7
LDRB            R0, [R0,R2]
CMP             R0, #0x10
BEQ             loc_1F00F8
CMP             R0, #8
LDREQ           R0, =unk_67DE00
LDRBEQ          R1, [R0,R1]
BEQ             loc_1F00F8
CMP             R0, #4
LDREQ           R0, =unk_67DDF0
BEQ             loc_1F0164
CMP             R0, #2
LDREQ           R0, =unk_67DDE0
MOVNE           R1, #0
BEQ             loc_1F0164
LDR             R0, [R4]
MOV             R3, #1
MOV             R2, #0
LDR             R12, [R0,#0x34C]
MOV             R0, R4
BLX             R12
LDR             R0, [R4]
LDR             R1, [R0,#0x3D0]
MOV             R0, R4
BLX             R1
STRH            R8, [R6,#0x68]
LDRB            R0, [R4,#0xDE]
ORR             R0, R0, #8
STRB            R0, [R4,#0xDE]
LDR             R0, [R5]
ADD             R9, R9, #0x20 ; ' '
MOV             R3, #0
LDM             R9, {R1,R2}
LDR             R12, [R0,#0x28]
MOV             R0, R5
POP             {R4-R10,LR}
BX              R12
MOV             R1, #0xFFFFFFFF
BL              sub_537BE0
LDRD            R0, R1, [R9,#(off_67E1B4 - 0x67E18C)]
STRD            R0, R1, [R5,#0x4C]
POP             {R4-R10,PC}
LDRB            R1, [R0,R1]
B               loc_1F00F8
