PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6B1648
LDR             R2, =off_6B7734
MOV             R1, #0
STR             R0, [R4]
ADD             R0, R4, #0x18
STR             R1, [R4,#0x14]
STM             R0, {R2,R4}
ADD             R0, R4, #0x20 ; ' '
LDR             R2, =off_6B76B8
VLDR            S0, =0.0
STM             R0, {R2,R4}
ADD             R0, R4, #0x28 ; '('
LDR             R2, =off_6B7900
STM             R0, {R2,R4}
ADD             R0, R4, #0x30 ; '0'
LDR             R2, =off_6B79CC
STM             R0, {R2,R4}
ADD             R0, R4, #0x38 ; '8'
LDR             R2, =off_6B79AC
STM             R0, {R2,R4}
ADD             R0, R4, #0x40 ; '@'
LDR             R2, =off_6B77D0
STM             R0, {R2,R4}
ADD             R0, R4, #0x58 ; 'X'
STR             R1, [R4,#0x50]
LDR             R1, =off_6B2A84
STR             R1, [R4,#0x4C]
MOV             R1, #2
STRB            R1, [R4,#0x54]
LDR             R1, =off_6B757C
VSTR            S0, [R4,#0x48]
STM             R0, {R1,R4}
LDR             R0, =off_6CE970
LDR             R0, [R0]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x214
STR             R0, [R4,#4]
MOV             R0, #0
BL              sub_58F1A0
LDM             R0, {R1,R2}
MOV             R6, #0
LDR             R0, [R0,#8]
ADD             R5, R4, #0x18
STR             R0, [R4,#0x10]
ADD             R0, R4, #8
STM             R0, {R1,R2}
LDR             R0, [R4,#0x14]
CMP             R0, #0
BEQ             loc_1CE858
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
STR             R5, [R4,#0x14]
LDR             R0, [R5]
MOV             R1, R6
LDR             R2, [R0,#0xC]
MOV             R0, R5
BLX             R2
MOV             R0, R4
POP             {R4-R6,PC}
