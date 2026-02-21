PUSH            {R4,LR}
LDR             R1, [R0,#4]
MOV             R4, R0
MOV             R0, #7
VLDR            S0, =2.0
STRB            R0, [R1,#0xAAC]
LDRH            R0, [R4,#8]
VLDR            S1, =4.0
VLDR            S2, =6.0
ORR             R0, R0, #0x3E ; '>'
STRH            R0, [R4,#8]
ADD             R0, R4, #0x1A8
VLDR            S3, =10.0
VSTM            R0, {S0-S1}
ADD             R0, R4, #0x1B4
VSTR            S0, [R4,#0x1B0]
VSTM            R0, {S2-S3}
LDRH            R0, [R4,#0xA]
ORR             R0, R0, #3
STRH            R0, [R4,#0xA]
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #8
BL              sub_19A5D8
LDR             R0, [R4]
LDR             R1, [R0,#0x64]
MOV             R0, R4
POP             {R4,LR}
BX              R1
