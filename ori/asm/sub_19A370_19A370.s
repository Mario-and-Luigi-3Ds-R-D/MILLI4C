PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0x1B4]
SUB             SP, SP, #0xAE0
TST             R0, #0x200000
LDRNE           R0, =0xFFFC
BNE             loc_19A45C
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D00
ADD             R6, SP, #0xAF0+var_160
LDRH            R5, [R0,#4]
LDR             R1, =unk_68AF78
MOV             R2, #0x150
MOV             R0, R6
BL              sub_127EB8
LDR             R1, =0xFFFF
MOV             R0, #0
STRH            R1, [R4,#8]
STRH            R0, [R4,#0xA]
LDR             R2, [R6]
CMP             R2, R5
BNE             loc_19A3E8
LDR             R0, [R6,#4]
STRH            R0, [R4,#8]
LDR             R0, [R6,#8]
STRH            R0, [R4,#0xA]
B               loc_19A3F8
ADD             R0, R0, #1
CMP             R0, #0x1C
ADD             R6, R6, #0xC
BLT             loc_19A3C8
LDRH            R0, [R4,#8]
CMP             R0, R1
MOVEQ           R0, R1
BEQ             loc_19A45C
MOV             R5, SP
LDR             R1, =unk_68B0C8
MOV             R2, #0x990
MOV             R0, R5
BL              sub_127EB8
LDRH            R0, [R4,#0xA]
LDR             R1, =dword_6ED9B8
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, R0,LSL#4
BL              sub_1143B4
STR             R0, [R4,#4]
LDRH            R2, [R4,#0xA]
LDRH            R1, [R4,#8]
MOV             R2, R2,LSL#4
ADD             R1, R5, R1,LSL#4
BL              sub_1103A4
LDR             R0, [R4,#0x1B4]
ORR             R0, R0, #0x200000
STR             R0, [R4,#0x1B4]
LDR             R0, =0xFFFD
ADD             SP, SP, #0xAE0
POP             {R4-R6,PC}
