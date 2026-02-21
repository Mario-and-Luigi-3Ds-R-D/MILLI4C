PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, [R0,#0x80]
CMP             R0, #0
BEQ             loc_1EB734
LDR             R0, [R5,#0x84]
MOV             R4, #0
CMP             R0, #0
BLS             loc_1EB734
LDR             R0, [R5,#0x80]
ADD             R0, R0, R4,LSL#1
LDRH            R0, [R0]
NOP
LDR             R2, [R5,#0xA0]
MOV             R1, R0
ADD             R2, R2, #0x14400
ADD             R2, R2, #0x204
MOV             R0, R2
BL              sub_50EB80
LDR             R0, [R5,#0x84]
ADD             R4, R4, #1
CMP             R0, R4
BHI             loc_1EB6FC
LDR             R1, =off_67E354
LDM             R1, {R0,R1}
STRD            R0, R1, [R5,#0x4C]
POP             {R4-R6,PC}
