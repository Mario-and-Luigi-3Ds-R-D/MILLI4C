LDR             R0, =dword_6D45E4
LDR             R1, [R0,#(dword_6D45EC - 0x6D45E4)]
CMP             R1, #0
BXEQ            LR
PUSH            {R4-R12,LR}
ADD             R1, R1, #0x1000
LDR             R4, [R1,#8]
LDR             R7, =off_6D242C
CMP             R4, #0
BEQ             loc_1146E0
MOV             R9, #0x30 ; '0'
MOV             R10, #0xE0
MOV             R11, #0x58 ; 'X'
LDR             R3, [R4]
LDR             R8, [R4,#0x20]
CMP             R3, #0
LDRNE           R12, [R7]
CMPNE           R12, #0
BEQ             loc_1145C0
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R3, [R4,#8]
CMP             R3, #0
LDRNE           R12, [R7]
CMPNE           R12, #0
BEQ             loc_1145E4
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R0, [R4,#0x14]
MOV             R5, #0
CMP             R0, #0
BLS             loc_114690
ADD             R1, R5, R5,LSL#1
LDR             R0, [R4,#0x10]
RSB             R6, R1, R5,LSL#5
ADD             R1, R9, R6,LSL#3
LDR             R3, [R0,R1]
CMP             R3, #0
LDRNE           R12, [R7]
CMPNE           R12, #0
BEQ             loc_114628
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R0, [R4,#0x10]
ADD             R1, R10, R6,LSL#3
LDR             R3, [R0,R1]
CMP             R3, #0
LDRNE           R12, [R7]
CMPNE           R12, #0
BEQ             loc_114654
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R0, [R4,#0x10]
ADD             R1, R11, R6,LSL#3
LDR             R3, [R0,R1]
CMP             R3, #0
LDRNE           R12, [R7]
CMPNE           R12, #0
BEQ             loc_114680
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R0, [R4,#0x14]
ADD             R5, R5, #1
CMP             R0, R5
BHI             loc_1145F4
LDR             R3, [R4,#0x10]
CMP             R3, #0
BEQ             loc_1146B8
LDR             R12, [R7]
CMP             R12, #0
BEQ             loc_1146D8
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R12, [R7]
CMP             R12, #0
BEQ             loc_1146D8
MOV             R3, R4
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
MOVS            R4, R8
BNE             loc_114598
LDR             R10, =dword_6D45E4
MOV             R5, #0
LDR             R0, [R10,#(dword_6D45EC - 0x6D45E4)]
ADD             R0, R0, R5,LSL#2
LDR             R3, [R0,#0x808]
CMP             R3, #0
BEQ             loc_114724
LDR             R12, [R7]
LDR             R4, [R3,#0x18]
CMP             R12, #0
BEQ             loc_11471C
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
MOVS            R3, R4
BNE             loc_1146FC
ADD             R5, R5, #1
CMP             R5, #0x200
BCC             loc_1146E8
MOV             R8, #0
LDR             R0, [R10,#(dword_6D45EC - 0x6D45E4)]
ADD             R0, R0, R8,LSL#2
LDR             R5, [R0,#8]
CMP             R5, #0
BEQ             loc_114840
LDR             R3, [R5,#0x2C]
LDR             R9, [R5]
CMP             R3, #0
LDRNE           R12, [R7]
CMPNE           R12, #0
BEQ             loc_114770
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R3, [R5,#0x1C0]
CMP             R3, #0
LDRNE           R12, [R7]
CMPNE           R12, #0
BEQ             loc_114794
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R3, [R5,#0x1C]
CMP             R3, #0
LDRNE           R12, [R7]
CMPNE           R12, #0
BEQ             loc_1147B8
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R4, [R5,#0x18]
CMP             R4, #0
BEQ             loc_114818
LDR             R3, [R4]
LDR             R6, [R4,#8]
CMP             R3, #0
BEQ             loc_1147F0
LDR             R12, [R7]
CMP             R12, #0
BEQ             loc_114810
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R12, [R7]
CMP             R12, #0
BEQ             loc_114810
MOV             R3, R4
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
MOVS            R4, R6
BNE             loc_1147C4
LDR             R12, [R7]
CMP             R12, #0
BEQ             loc_114838
MOV             R3, R5
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
MOVS            R5, R9
BNE             loc_114748
ADD             R8, R8, #1
CMP             R8, #0x200
BCC             loc_114734
MOV             R0, #0
STR             R0, [R10,#(dword_6D45EC - 0x6D45E4)]
POP             {R4-R12,PC}
