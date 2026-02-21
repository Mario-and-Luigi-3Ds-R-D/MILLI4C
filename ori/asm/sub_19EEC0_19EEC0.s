PUSH            {R4-R6,LR}
MOV             R4, R0
VPUSH           {D8-D9}
LDR             R0, [R0,#4]
LDR             R5, [R0,#0x41C]
LDR             R0, [R5,#8]
CMP             R0, #0
BEQ             loc_19EEFC
BL              sub_533330
LDR             R0, [R5,#8]
CMP             R0, #0
BEQ             loc_19EEFC
MOV             R1, #0
STR             R1, [R0,#0x184]
STR             R1, [R5,#8]
LDR             R1, [R4,#0x24]
MOV             R0, #9
STRB            R0, [R4,#0x20]
ADD             R5, R1, #1
ADD             R0, R4, #8
BL              sub_5C6460
VLDR            S18, =1.0
CMP             R0, R5
BLS             loc_19F100
LDR             R0, [R4,#0x24]
CMP             R0, #0
BEQ             loc_19EFD8
MOV             R1, R5
ADD             R0, R4, #8
BL              sub_5C6498
MOV             R6, R0
LDR             R0, [R4,#0x24]
SUB             R1, R0, #1
ADD             R0, R4, #8
BL              sub_5C6498
CMP             R6, R0
NOP
BNE             loc_19EFD8
MOV             R1, R5
ADD             R0, R4, #8
BL              sub_5C6498
MOV             R1, R5
ADD             R0, R4, #8
BL              sub_5C6498
NOP
NOP
BL              sub_19E000
MOV             R1, R0
LDR             R0, [R4,#4]
VLDR            S0, [R1]
VLDR            S2, [R1,#8]
VLDR            S1, [R1,#4]
VLDR            S5, [R0,#0x24]
VLDR            S3, [R0,#0x2C]
VLDR            S4, [R0,#0x28]
VSUB.F32        S0, S0, S5
VSUB.F32        S2, S2, S3
VSUB.F32        S1, S1, S4
LDR             R0, [R0,#0x410]
VMUL.F32        S3, S0, S0
VMLA.F32        S3, S1, S1
VMLA.F32        S3, S2, S2
VSQRT.F32       S4, S3
VDIV.F32        S3, S18, S4
VPOP            {D8-D9}
POP             {R4-R6,LR}
VMUL.F32        S0, S0, S3
VMUL.F32        S1, S1, S3
VMUL.F32        S2, S2, S3
B               sub_1A568C
MOV             R1, R5
ADD             R0, R4, #8
BL              sub_5C6498
MOV             R1, R5
ADD             R0, R4, #8
BL              sub_5C6498
NOP
NOP
BL              sub_19E000
MOV             R1, R0
LDR             R0, [R4,#4]
VLDR            S4, [R1]
VLDR            S1, [R1,#4]
VLDR            S0, [R1,#8]
VLDR            S5, [R0,#0x24]
ADD             R0, R0, #0x28 ; '('
MOV             R1, R5
VLDM            R0, {S2-S3}
VSUB.F32        S19, S4, S5
ADD             R0, R4, #8
VSUB.F32        S16, S1, S2
VSUB.F32        S17, S0, S3
BL              sub_5C6498
MOV             R5, R0
LDR             R1, [R4,#0x24]
ADD             R0, R4, #8
BL              sub_5C6498
CMP             R5, R0
NOP
BEQ             loc_19F084
VMUL.F32        S0, S19, S19
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x410]
VMLA.F32        S0, S16, S16
VMLA.F32        S0, S17, S17
VSQRT.F32       S1, S0
VDIV.F32        S2, S18, S1
VMUL.F32        S0, S19, S2
VMUL.F32        S1, S16, S2
VMUL.F32        S2, S17, S2
VPOP            {D8-D9}
POP             {R4-R6,LR}
B               sub_1A5CB4
LDRB            R0, [R4,#0x28]
BL              sub_19E054
NOP
NOP
BL              sub_19E054
NOP
NOP
BL              sub_19E000
MOV             R1, R0
LDR             R0, [R4,#4]
VLDR            S0, [R1]
VLDR            S1, [R1,#4]
VLDR            S2, [R1,#8]
VLDR            S5, [R0,#0x24]
VLDR            S3, [R0,#0x28]
VLDR            S4, [R0,#0x2C]
VSUB.F32        S0, S0, S5
VSUB.F32        S1, S1, S3
VSUB.F32        S2, S2, S4
LDR             R0, [R0,#0x410]
VMUL.F32        S3, S0, S0
VMLA.F32        S3, S1, S1
VMLA.F32        S3, S2, S2
VSQRT.F32       S4, S3
VDIV.F32        S3, S18, S4
VPOP            {D8-D9}
POP             {R4-R6,LR}
VMUL.F32        S0, S0, S3
VMUL.F32        S1, S1, S3
VMUL.F32        S2, S2, S3
B               sub_1A5CB4
LDRB            R0, [R4,#0x28]
BL              sub_19E054
NOP
NOP
BL              sub_19E054
NOP
NOP
BL              sub_19E000
LDR             R1, [R4,#4]
VLDR            S0, [R0]
VLDR            S1, [R0,#4]
VLDR            S2, [R0,#8]
VLDR            S5, [R1,#0x24]
VLDR            S3, [R1,#0x28]
VLDR            S4, [R1,#0x2C]
VSUB.F32        S0, S0, S5
VSUB.F32        S1, S1, S3
VSUB.F32        S2, S2, S4
LDR             R0, [R1,#0x410]
VMUL.F32        S3, S0, S0
VMLA.F32        S3, S1, S1
VMLA.F32        S3, S2, S2
VSQRT.F32       S4, S3
VDIV.F32        S3, S18, S4
VPOP            {D8-D9}
POP             {R4-R6,LR}
VMUL.F32        S0, S0, S3
VMUL.F32        S1, S1, S3
VMUL.F32        S2, S2, S3
B               sub_1A5CB4
