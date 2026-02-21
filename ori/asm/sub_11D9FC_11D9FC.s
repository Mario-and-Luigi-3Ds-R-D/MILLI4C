PUSH            {R4,LR}
MOV             R4, #0
STR             R1, [R0]
STR             R4, [R0,#8]
STR             R4, [R0,#0x20]
MOV             R1, R4
ADD             R0, R0, #0x190
BL              sub_12B604
ADD             R0, R0, #0x2C ; ','
BL              sub_12B760
LDR             R1, =sub_134434
MOV             R3, #4
MOV             R2, #0x50 ; 'P'
ADD             R0, R0, #8
BLX             sub_1002F4
SUB             R0, R0, #0x1C4
VLDR            S0, =0.0
VSTR            S0, [R0,#0x324]
VSTR            S0, [R0,#0x314]
VSTR            S0, [R0,#0x304]
VSTR            S0, [R0,#0x328]
VSTR            S0, [R0,#0x318]
VSTR            S0, [R0,#0x308]
VSTR            S0, [R0,#0x32C]
VSTR            S0, [R0,#0x31C]
VSTR            S0, [R0,#0x30C]
VSTR            S0, [R0,#0x330]
VSTR            S0, [R0,#0x320]
VSTR            S0, [R0,#0x310]
STR             R4, [R0,#0x334]
STR             R4, [R0,#0x338]
STR             R4, [R0,#0x33C]
STR             R4, [R0,#0x340]
STR             R4, [R0,#0x344]
STR             R4, [R0,#0x348]
STR             R4, [R0,#0x34C]
STR             R4, [R0,#0x350]
STR             R4, [R0,#0x354]
MOV             R2, #0xFFFFFFFF
STR             R2, [R0,#0x35C]
ADD             R1, R0, #0x50 ; 'P'
ADD             R2, R0, #0x150
STR             R4, [R0,#0x358]
STR             R4, [R1,#8]
STR             R4, [R1,#0xC]!
ADD             R1, R1, #0x14
CMP             R1, R2
BNE             loc_11DAA8
MOV             R1, R2
ADD             R2, R0, #0x190
STR             R4, [R1],#4
CMP             R1, R2
BNE             loc_11DAC4
POP             {R4,PC}
