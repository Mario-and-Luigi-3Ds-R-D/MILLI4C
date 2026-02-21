PUSH            {R4-R8,LR}
ADD             R0, R2, #0xC
LDR             R1, [R2,#8]
LDM             R0, {R0,R3}
LDR             R2, [R2,#0x14]
LDR             R8, =off_6CE970
AND             R5, R0, #0xFF
UXTH            R1, R1
UXTH            R7, R3
SXTH            R6, R2
LDR             R0, [R8]
BL              sub_52F538
CMP             R5, #0
MOV             R4, R0
BEQ             loc_204268
CMP             R5, #1
BEQ             loc_204280
CMP             R5, #2
BEQ             loc_204298
CMP             R5, #3
MOVEQ           R1, R7
BLEQ            sub_50244C
B               loc_2042A4
MOV             R2, R6
MOV             R1, R7
BL              sub_5024E4
NOP
NOP
B               loc_2042A4
MOV             R2, R6
MOV             R1, R7
BL              sub_5024B0
NOP
NOP
B               loc_2042A4
MOV             R2, R6
MOV             R1, R7
BL              sub_502478
LDR             R0, =0x4C2
LDRH            R0, [R0,R4]
BL              sub_47FF54
CMP             R0, #0
NOP
BEQ             loc_2042D8
MOV             R0, R4
BL              sub_5ED7F4
MOV             R1, R0
LDR             R0, =sub_19D6B8
LDR             R2, [R8]
ADD             R0, R0, R2
BL              sub_3D40F8
MOV             R0, #0
POP             {R4-R8,PC}
