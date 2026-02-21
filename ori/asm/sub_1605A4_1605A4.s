PUSH            {R4-R8,LR}
ADD             R5, R0, #0x10000
ADD             R5, R5, #0x3D00
MOV             R6, R0
VPUSH           {D8}
LDR             R8, =0xFFFF
LDRH            R0, [R5,#4]
CMP             R0, R8
MOVEQ           R4, #0x8A
MOVEQ           R7, #0x59 ; 'Y'
BEQ             sub_1605EC
BL              sub_2AF718
LDRH            R4, [R0,#0x18]
LDRH            R7, [R0,#0x1A]
CMP             R4, R8
MOVEQ           R4, #0x1C
CMP             R7, R8
MOVEQ           R7, #0x59 ; 'Y'
