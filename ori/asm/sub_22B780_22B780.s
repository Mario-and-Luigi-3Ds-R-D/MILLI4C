PUSH            {R4-R8,LR}
MOV             R4, R0
SUB             SP, SP, #0x18
LDR             R7, =off_6CDA80
MOV             R6, #0
MOV             R8, #5
MOV             R3, #0x100
LDR             R0, [R7]
MOV             R2, #0
ADD             R1, R0, #0x12400
ADD             R1, R1, #0x2EC
ADD             R0, R0, #0x12000
LDR             R5, [R1]
ADD             R0, R0, #0x6F0
STR             R5, [R4,#0x4A0]
LDR             R0, [R0]
STR             R0, [R4,#0x4A4]
STRB            R6, [R5,#0x3FC]
STRB            R8, [R5,#0xF9]
LDRB            R0, [R5,#4]
CMP             R0, #0
MOVNE           R0, #7
MOVEQ           R0, #6
AND             R1, R0, #0xFF
ADD             R0, R5, #8
BL              sub_14C548
STRB            R6, [R5,#0xFE]
LDR             R0, [R7]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F8
LDR             R0, [R0]
LDRB            R0, [R0]
CMP             R0, #2
MOVEQ           R0, R5
BLEQ            sub_2255DC
LDR             R5, [R4,#0x4A4]
MOV             R3, #0x100
MOV             R2, #0
STRB            R6, [R5,#0x3FC]
STRB            R8, [R5,#0xF9]
LDRB            R0, [R5,#4]
CMP             R0, #0
MOVNE           R0, #7
MOVEQ           R0, #6
AND             R1, R0, #0xFF
ADD             R0, R5, #8
BL              sub_14C548
STRB            R6, [R5,#0xFE]
LDR             R0, [R7]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F8
LDR             R0, [R0]
LDRB            R0, [R0]
CMP             R0, #2
MOVEQ           R0, R5
BLEQ            sub_2255DC
STRB            R6, [R4,#0x45C]
STR             R6, [R4,#0x460]
LDR             R0, [R7]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R5, [R0]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x28 ; '('
LDR             R8, [R5,#0x20]
BL              sub_5A18EC
STR             R8, [R4,#0x434]
STR             R8, [R4,#0x42C]
LDR             R5, [R5,#0x14]
ADD             R6, R4, #0x400
ADD             R0, R4, #0x3F4
BL              sub_5A18EC
STR             R5, [R6]
STR             R5, [R4,#0x3F8]
LDR             R0, [R7]
LDR             R1, =0x126F4
LDR             R1, [R1,R0]
LDR             R1, [R1,#0x300]
STR             R1, [SP,#0x30+var_28]
BL              sub_5C976C
VSTR            S0, [SP,#0x30+var_24]
LDR             R0, [R7]
LDR             R6, =off_6CE970
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R1, [R6]
LDR             R0, [R0]
ADD             R1, R1, #0x10C000
VLDR            S0, [R1,#(loc_10C240 - 0x10C000)]
VLDR            S1, [R0,#0x48]
ADD             R1, SP, #0x30+var_28
MOV             R0, R4
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x30+var_20]
BL              sub_14E984
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #8
MOV             R0, R4
BL              sub_14C548
MOV             R0, #0xFFFFFF00
ADD             R5, R4, #0x1000
REV             R0, R0
ADD             R5, R5, #0xD4
STR             R0, [SP,#0x30+var_2C]
LDR             R0, [R7]
ADD             R1, SP, #0x30+var_2C
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
VLDR            S0, [R0,#0x3D0]
ADD             R0, R4, #0x1400
ADD             R0, R0, #0x3F4
BL              sub_4E665C
MOV             R0, #0xFFFFFF00
ADD             R1, SP, #0x30+var_1C
REV             R0, R0
STR             R0, [SP,#0x30+var_1C]
LDR             R0, [R7]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
VLDR            S0, [R0,#0x3D0]
ADD             R0, R5, #0x32C
BL              sub_4E665C
MOV             R0, #0x18C0
LDR             R0, [R0,R4]
CMP             R0, #0
BNE             loc_22B9C8
LDR             R0, [R6]
LDR             R3, =0xFFE683CC
LDR             R1, =0x300F7
MOV             R2, #0
VLDR            S0, =0.0
SUB             R0, R0, R3
BL              sub_503414
ADD             R4, R4, #0x1800
ADD             R4, R4, #0xBC
MOV             R5, R0
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R5, #0
STR             R5, [R4,#4]
STRNE           R4, [R5,#0x64]
ADD             SP, SP, #0x18
POP             {R4-R8,PC}
