PUSH            {R4,LR}
STR             R1, [R0,#4]
LDR             R1, =off_6BC008
VLDR            S3, =0.0
STR             R1, [R0]
LDR             R1, =off_6CDF98
LDR             R2, [R1]
ADD             R1, R0, #0x10
LDR             R2, [R2,#0x124]
ADD             R2, R2, #0x19C
VLDM            R2, {S0-S2}
VSTR            S1, [R0,#8]
VSTR            S0, [R0,#0xC]
ADD             R0, R0, #0x28 ; '('
VSTM            R1, {S2-S3}
BL              sub_14F198
ADD             R0, R0, #0x3F4
BL              sub_5A2BD0
LDR             R1, =off_6B7C1C
MOV             R3, #3
MOV             R2, #0x28 ; '('
STR             R1, [R0],#0x30
LDR             R1, =sub_5A39D0
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R2, R0, #0x30 ; '0'
MOV             R1, #3
STR             R2, [R0,#0x28]
STRB            R1, [R0,#0x2C]
SUB             R0, R0, #0x400
SUB             R0, R0, #0x1C
POP             {R4,PC}
