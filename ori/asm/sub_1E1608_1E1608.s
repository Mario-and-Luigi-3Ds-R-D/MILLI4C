PUSH            {R4-R8,LR}
MOV             R4, R0
LDR             R0, [R0,#0x1A0]
LDR             R7, =off_6D1648
ORR             R0, R0, #0x40 ; '@'
STR             R0, [R4,#0x1A0]
LDR             R0, [R7]
BL              sub_1E4614
MOV             R5, R0
LDR             R0, [R7]
BL              sub_1E45C8
MOV             R6, R0
LDR             R0, =0x468
LDRH            R0, [R0,R5]
SUB             R0, R0, #8
CMP             R0, #8
BCS             loc_1E1668
LDR             R0, [R5]
LDR             R1, [R0,#0x3C0]
MOV             R0, R5
BLX             R1
LDR             R0, [R6,#0x14]
BIC             R0, R0, #0x40 ; '@'
STR             R0, [R6,#0x14]
LDR             R0, [R4,#0xA0]
CMP             R0, #0
BLNE            sub_2FD1BC
MOV             R0, R4
NOP
BL              sub_1E0C44
LDR             R0, [R7]
NOP
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #0
BL              sub_19A598
LDR             R0, [R7]
NOP
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #0
BL              sub_19B5D0
LDR             R0, [R7]
NOP
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #0
BL              loc_19AFEC
MOV             R1, #0x19C
MOV             R0, #0
STRH            R0, [R1,R4]
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
POP             {R4-R8,LR}
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #0
B               sub_19BB68
