PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6D1648
LDR             R1, =word_6EBB64
LDR             R0, [R0]
CMP             R0, #0
LDRNE           R0, [R0,#0x9C]
CMPNE           R0, #0
BEQ             loc_192100
LDR             R1, [R1,#(dword_6EBB68 - 0x6EBB64)]
TST             R1, #1
BNE             loc_192100
MOV             R2, #0
MOV             R1, R2
BL              sub_321610
ADD             R5, R4, #0x14400
ADD             R5, R5, #0x214
MOV             R6, #0
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_192120
BL              sub_300FD4
STR             R6, [R5]
LDR             R0, [R4]
LDR             R1, [R0,#0x27C]
MOV             R0, R4
BLX             R1
ADD             R5, R4, #0x14800
ADD             R5, R5, #0x35C
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_192150
LDR             R1, =sub_3D8D9C
BLX             sub_3016C8
STR             R6, [R5]
ADD             R5, R4, #0x14000
ADD             R5, R5, #0xB60
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_19216C
BL              sub_300FD4
STR             R6, [R5]
ADD             R5, R4, #0x14000
ADD             R5, R5, #0xFF0
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_192188
BL              sub_2FF5D4
STR             R6, [R5]
ADD             R5, R4, #0x14C00
ADD             R5, R5, #0x3F4
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1921A4
BL              sub_300FD4
STR             R6, [R5]
ADD             R5, R4, #0x14800
ADD             R5, R5, #0x364
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1921DC
ADD             R0, R4, #0x14800
ADD             R0, R0, #0x368
BL              sub_4BE0F8
LDR             R1, =0x14B68
MOV             R0, #0
STR             R0, [R1,R4]
LDR             R0, [R5]
BL              sub_2FF5D4
STR             R6, [R5]
ADD             R5, R4, #0x15000
LDR             R0, [R5,#0x18]
CMP             R0, #0
BEQ             loc_19220C
BL              sub_59688C
LDR             R0, [R5,#0x18]
CMP             R0, #0
BEQ             loc_192208
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R6, [R5,#0x18]
LDR             R0, [R5,#0x20]
CMP             R0, #0
BEQ             loc_192238
BL              sub_5AF558
LDR             R0, [R5,#0x20]
CMP             R0, #0
BEQ             loc_192234
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R6, [R5,#0x20]
ADD             R5, R4, #0x15000
ADD             R5, R5, #0x1C
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_192254
BL              sub_2FF5D4
STR             R6, [R5]
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_2B50C4
