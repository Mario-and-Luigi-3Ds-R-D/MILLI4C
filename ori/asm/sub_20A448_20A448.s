PUSH            {R4-R8,LR}
LDR             R1, [R2,#8]
LDR             R0, [R2,#0xC]
LDR             R2, [R2,#0x10]
LDR             R7, =off_6CE970
AND             R5, R0, #0xFF
UXTH            R1, R1
SXTH            R6, R2
LDR             R0, [R7]
BL              sub_52F538
CMP             R5, #0
MOV             R4, R0
BEQ             loc_20A498
CMP             R5, #1
BEQ             loc_20A4AC
CMP             R5, #2
BEQ             loc_20A4C0
CMP             R5, #3
BLEQ            sub_5021C8
B               loc_20A4C8
MOV             R1, R6
BL              sub_5023B4
NOP
NOP
B               loc_20A4C8
MOV             R1, R6
BL              sub_502224
NOP
NOP
B               loc_20A4C8
MOV             R1, R6
BL              sub_5021F0
LDR             R0, =0x4C2
LDRH            R0, [R0,R4]
BL              sub_47FF54
CMP             R0, #0
NOP
BEQ             loc_20A4FC
MOV             R0, R4
BL              sub_5ED7F4
MOV             R1, R0
LDR             R0, =sub_19D6B8
LDR             R2, [R7]
ADD             R0, R0, R2
BL              sub_3D40F8
MOV             R0, #0
POP             {R4-R8,PC}
