PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R0, R0, #0x400
VPUSH           {D8-D9}
ADD             R0, R0, #8
SUB             SP, SP, #0x30
MOV             R5, R0
BL              sub_5A2484
LDR             R0, [R4,#0x10]
LDR             R6, =off_6CE098
VLDR            S16, =0.0
CMP             R0, #0
MOV             R1, SP
BEQ             loc_256948
LDR             R0, [R6]
ADD             R1, R1, #4
LDR             R2, [R0,#0x68]!
ADD             R0, R0, #4
STR             R0, [SP,#0x50+var_4C]
STR             R2, [SP,#0x50+var_50]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x50+var_48]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x50+var_50]
LDR             R1, [SP,#0x50+var_48]
LDR             R0, [R0,#0xA74]
VLDR            S17, [R0,#0x24]
VLDR            S18, [R0,#0x2C]
ADD             R0, SP, #0x50+var_4C
CMP             R1, R0
BNE             loc_2568C4
LDR             R0, [SP,#0x50+var_50]
CMP             R0, #0
BEQ             loc_2568C4
BL              sub_25AEE4
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x50+var_4C]
VMOV.F32        S1, S16
ADD             R2, SP, #0x50+var_30
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             R0, R4, #0x400
ADD             R0, R0, #0xC
ADD             R1, SP, #0x50+var_30
VLDR            S2, [R0,#8]
VLDR            S0, [R0]
VLDR            S3, [R0,#4]
VADD.F32        S2, S18, S2
VADD.F32        S0, S17, S0
VADD.F32        S1, S1, S3
ADD             R0, R4, #0x14
VSTM            R2, {S0-S2}
BL              sub_14E984
LDR             R0, [R4,#0x10]
CMP             R0, #0
BEQ             loc_25695C
CMP             R0, #1
BEQ             loc_256AA0
CMP             R0, #2
BNE             loc_256A94
ADD             R0, R4, #0x14
BL              sub_5C5820
CMP             R0, #0
BNE             loc_256A94
ADD             SP, SP, #0x30 ; '0'
MOV             R0, R4
VPOP            {D8-D9}
POP             {R4-R6,LR}
B               sub_256B1C
MOV             R0, R4
BL              sub_5CBB0C
MOV             R1, SP
ADD             R0, R4, #0x14
B               loc_256904
ADD             R0, R4, #0x14
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             loc_256A94
LDR             R0, [R6]
ADD             R1, SP, #0x50+var_3C
VLDR            S17, =2.0
LDR             R2, [R0,#0x68]!
ADD             R0, R0, #4
STR             R0, [SP,#0x50+var_3C]
STR             R2, [SP,#0x50+var_40]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x50+var_38]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [R6]
LDR             R6, [R0,#0x8C]
LDR             R0, [SP,#0x50+var_40]
LDR             R0, [R0,#0xB5C]
VLDR            S0, [R0,#8]
VSTR            S16, [SP,#0x50+var_50]
MOV             R0, R5
VMUL.F32        S0, S0, S17
VSTR            S0, [SP,#0x50+var_4C]
VSTR            S16, [SP,#0x50+var_48]
BL              sub_5A26D0
LDMFD           SP, {R0-R2}
ADD             R3, R5, #0x1C
STM             R3, {R0-R2}
ADD             R3, R5, #4
STM             R3, {R0-R2}
MOV             R2, SP
LDR             R0, [SP,#0x50+var_40]
MOV             R1, #0
LDR             R0, [R0,#0xB5C]
LDR             R0, [R0,#8]
VSTR            S16, [SP,#0x50+var_50]
VSTR            S16, [SP,#0x50+var_4C]
STR             R0, [SP,#0x50+var_48]
VLDR            S0, [R6,#0x3C4]
MOV             R0, R5
BL              sub_5A2B20
VLDR            S0, =1.0
VSTR            S16, [SP,#0x50+var_2C]
VSTR            S0, [SP,#0x50+var_28]
VSTR            S16, [SP,#0x50+var_24]
LDR             R0, [SP,#0x50+var_40]
ADD             R2, SP, #0x50+var_2C
VLDR            S2, [R6,#0x3C0]
VLDR            S1, [R6,#0x3C4]
LDR             R0, [R0,#0xB5C]
MOV             R1, #1
VLDR            S0, [R0,#8]
MOV             R0, R5
VNMUL.F32       S0, S0, S17
BL              sub_5A28C4
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0xB
ADD             R0, R4, #0x14
BL              sub_14C548
MOV             R0, #1
STR             R0, [R4,#0x10]
LDR             R1, [SP,#0x50+var_38]
ADD             R0, SP, #0x50+var_3C
CMP             R1, R0
BNE             loc_256A88
LDR             R0, [SP,#0x50+var_40]
CMP             R0, #0
BEQ             loc_256A88
BL              sub_25AEE4
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x50+var_3C]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x30 ; '0'
VPOP            {D8-D9}
POP             {R4-R6,PC}
MOV             R0, R5
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_256A94
LDR             R0, [R4]
LDR             R12, =off_6CE970
LDR             R2, =0x301DB
MOV             R3, #0
LDR             R1, [R0]
LDR             R0, =0xFFE683CC
LDR             R12, [R12]
SUB             R0, R12, R0
BL              sub_503720
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0xC
ADD             R0, R4, #0x14
BL              sub_14C548
MOV             R0, #2
STR             R0, [R4,#0x10]
ADD             SP, SP, #0x30 ; '0'
VPOP            {D8-D9}
POP             {R4-R6,PC}
