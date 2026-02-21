PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =off_6D1648
LDR             R0, [R5]
BL              sub_1E4614
VLDR            S0, [R4,#0x18C]
VLDR            S1, [R4,#0x180]
ADD             R2, R4, #0x18C
MOV             R1, R0
VADD.F32        S0, S0, S1
ADD             R1, R1, #0x108
ADD             R0, R4, #0x100
VSTR            S0, [R4,#0x18C]
VLDR            S0, [R4,#0x190]
VLDR            S1, [R4,#0x184]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x190]
VLDR            S0, [R4,#0x194]
VLDR            S1, [R4,#0x188]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x194]
VLDR            S0, [R4,#0x184]
VLDR            S1, [R4,#0x198]
VSUB.F32        S0, S0, S1
VSTR            S0, [R4,#0x184]
LDM             R2, {R2,R3,R12}
STM             R1, {R2,R3,R12}
LDRH            R1, [R0,#0x9C]
ADD             R1, R1, #1
SXTH            R1, R1
STRH            R1, [R0,#0x9C]
LDRSH           R0, [R0,#0x9E]
CMP             R1, R0
BLT             locret_1E1360
LDR             R0, [R4,#0x1A0]
BIC             R0, R0, #0x40 ; '@'
STR             R0, [R4,#0x1A0]
LDR             R0, [R5]
BL              sub_1E4614
MOV             R4, R0
BL              sub_16C938
LDR             R0, [R4]
LDR             R1, =0x4008
LDR             R2, [R0,#0x348]
MOV             R0, R4
BLX             R2
LDR             R0, [R4,#0x4EC]
ORR             R0, R0, #0x10
STR             R0, [R4,#0x4EC]
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #1
BL              sub_19A598
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #1
BL              sub_19B5D0
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
POP             {R4-R6,LR}
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #1
B               loc_19AFEC
POP             {R4-R6,PC}
