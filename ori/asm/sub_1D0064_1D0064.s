PUSH            {R4-R10,LR}
MOV             R6, R1
MOV             R5, R0
BL              sub_1D3958
CMP             R0, #0
MOVNE           R0, #0
BNE             locret_1D0190
MOV             R1, R6
MOV             R0, R5
BL              sub_52A438
LDR             R0, =loc_19CF44
ADD             R8, R5, R0
LDR             R0, [R8]
ORR             R0, R0, #4
STR             R0, [R8]
MOV             R0, R6
BL              sub_1CD260
MOV             R4, R0
LDR             R0, [R6,#0x18]
MOV             R7, #0
LDR             R0, [R0]
LDRH            R0, [R0,#0x10]
BL              sub_47FF54
CMP             R0, #0
BEQ             loc_1D00F8
LDRB            R0, [R6,#0x28]
CMP             R0, #2
CMPNE           R0, #3
BNE             loc_1D00F8
LDR             R0, [R6,#0x18]
LDR             R0, [R0]
LDRH            R1, [R0,#0x10]
MOV             R0, R5
BL              sub_52A460
MOV             R0, R5
BL              sub_1D0704
MOV             R7, #1
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
LDR             R9, =unk_653FC0
CMP             R0, #1
ADD             R6, R5, #0x1A0000
BEQ             loc_1D0148
MOV             R0, #1
STRB            R0, [R6,#0x7C]
LDR             R0, =0x1064D8
ADD             R1, R5, #0x1A0000
ADD             R1, R1, #0x78 ; 'x'
STR             R1, [R4,#0x14]
MOV             R1, R4
ADD             R0, R0, R5
BL              sub_1DFCE0
NOP
NOP
B               loc_1D0184
LDR             R0, [R4,#0x14]
CMP             R0, #0
BEQ             loc_1D0164
LDR             R1, [R0]
LDR             R2, [R1,#8]
MOV             R1, R4
BLX             R2
CMP             R4, #0
BEQ             loc_1D017C
LDR             R1, [R4]
MOV             R0, R4
LDR             R1, [R1,#4]
BLX             R1
CMP             R7, #0
BEQ             loc_1D0194
LDRD            R0, R1, [R9,#(off_653FEC - 0x653FC0)]
STRD            R0, R1, [R6,#0x5C]
MOV             R0, #0
POP             {R4-R10,PC}
LDR             R0, [R8]
BIC             R0, R0, #4
STR             R0, [R8]
MOV             R0, #1
POP             {R4-R10,PC}
