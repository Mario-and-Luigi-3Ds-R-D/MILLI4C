PUSH            {R4-R10,LR}
LDR             R8, =dword_700750
LDRB            R0, [R8,#(byte_700760 - 0x700750)]
CMP             R0, #0
BEQ             locret_10B6CC
BL              sub_11613C
BL              sub_115A98
BL              sub_114564
BL              sub_115F94
BL              sub_1143D8
BL              sub_1155E4
MOV             R10, #0
STRB            R10, [R8,#(byte_700760 - 0x700750)]
BL              sub_11A090
LDR             R9, =0x105
LDR             R6, =off_6D2428
MOV             R7, #0
ADD             R0, R8, R7,LSL#2
LDR             R4, [R0,#0x1C]
CMP             R4, #0
BEQ             loc_10B620
LDR             R3, [R4,#4]
LDR             R5, [R4,#0x40]
CMP             R3, #0
BEQ             loc_10B5F8
LDR             R12, [R6,#(off_6D242C - 0x6D2428)]
CMP             R12, #0
BEQ             loc_10B618
LDR             R2, [R4]
MOV             R1, R9
MOV             R0, #0x10000
BLX             R12
LDR             R12, [R6,#(off_6D242C - 0x6D2428)]
CMP             R12, #0
BEQ             loc_10B618
MOV             R3, R4
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
MOVS            R4, R5
BNE             loc_10B5CC
ADD             R7, R7, #1
CMP             R7, #0x20 ; ' '
BLT             loc_10B5BC
MOV             R5, #0
ADD             R0, R8, R5,LSL#2
LDR             R4, [R0,#0xA4]
CMP             R4, #0
BEQ             loc_10B694
LDR             R3, [R4,#4]
LDR             R7, [R4,#0x18]
CMP             R3, #0
BEQ             loc_10B66C
LDR             R12, [R6,#(off_6D242C - 0x6D2428)]
CMP             R12, #0
BEQ             loc_10B68C
LDR             R0, [R4,#0x14]
LDR             R2, [R4]
MOV             R1, #0x104
BLX             R12
LDR             R12, [R6,#(off_6D242C - 0x6D2428)]
CMP             R12, #0
BEQ             loc_10B68C
MOV             R3, R4
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
MOVS            R4, R7
BNE             loc_10B640
ADD             R5, R5, #1
CMP             R5, #0x20 ; ' '
BLT             loc_10B630
LDR             R12, [R6,#(off_6D242C - 0x6D2428)]
CMP             R12, #0
BEQ             loc_10B6C0
LDR             R3, [R6,#(dword_6D2438 - 0x6D2428)]
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
STR             R10, [R6,#(dword_6D2438 - 0x6D2428)]
STR             R10, [R6]
STR             R10, [R6,#(off_6D242C - 0x6D2428)]
POP             {R4-R10,PC}
