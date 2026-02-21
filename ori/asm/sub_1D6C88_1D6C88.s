PUSH            {R4-R8,LR}
SUB             SP, SP, #0x150
MOV             R4, R0
BL              sub_1D1AC0
ADD             R1, R4, #0x10C000
ADD             R1, R1, #0x214
MOV             R0, SP
BL              sub_52B1D4
LDR             R0, =0x10C7B8
MOV             R1, SP
ADD             R0, R0, R4
BL              sub_4FAC68
LDR             R0, =loc_19CF5C
ADD             R7, R4, R0
LDR             R0, [R7]
CMP             R0, #0
BEQ             loc_1D6D70
LDR             R8, =off_6CE970
LDR             R6, [R8]
MOV             R5, R6
ADD             R6, R6, #0x10C000
ADD             R5, R5, #0x10C000
ADD             R6, R6, #0x214
ADD             R5, R5, #0x238
BL              sub_5EC908
VLDM            R5, {S3-S5}
MOV             R1, SP
VSUB.F32        S0, S3, S0
VSUB.F32        S2, S5, S2
VSUB.F32        S1, S4, S1
VSTMEA          SP, {S0-S2}
LDR             R0, [R6]
LDR             R2, [R0,#0x20]
MOV             R0, R6
BLX             R2
LDR             R5, [R8]
LDR             R0, [R7]
ADD             R6, R5, #0x10C000
ADD             R5, R5, #0x10C000
ADD             R6, R6, #0x3D8
ADD             R5, R5, #0x3DC
BL              sub_5EC924
VLDR            S3, [R5]
VLDR            S5, [R5,#(loc_10C3E0 - 0x10C3DC)]
VLDR            S4, [R5,#(loc_10C3E4 - 0x10C3DC)]
VSUB.F32        S3, S3, S0
VSUB.F32        S1, S5, S1
VSUB.F32        S0, S4, S2
MOV             R0, R6
VSTR            S3, [SP,#0x168+var_168]
VSTR            S1, [SP,#0x168+var_164]
VSTR            S0, [SP,#0x168+var_160]
BL              sub_5A26D0
LDMFD           SP, {R0-R2}
ADD             R3, R6, #0x1C
ADD             R6, R6, #4
STM             R3, {R0-R2}
STM             R6, {R0-R2}
MOV             R0, R4
LDR             R1, =0xB013
BL              sub_52FACC
MOV             R5, R0
LDR             R6, =dword_6E2378
MOV             R0, #0
STR             R0, [SP,#0x168+var_168]
STR             R0, [SP,#0x168+var_164]
LDR             R1, [R6,#(dword_6E237C - 0x6E2378)]
MOV             R3, #0x30000
MOV             R2, #0x20000
MOV             R0, R5
BL              sub_57162C
LDR             R0, =sub_10640C
MOV             R1, R5
ADD             R0, R0, R4
BL              sub_1CF9FC
LDR             R0, [R6,#(dword_6E237C - 0x6E2378)]
NOP
BL              sub_4FA910
LDR             R1, [R0,#4]
CMP             R1, #0
BEQ             loc_1D6DD8
LDRB            R2, [R0,#2]
MOV             R0, R4
BL              sub_529204
LDR             R1, =unk_653FC0
ADD             R2, R4, #0x1A0000
LDRD            R0, R1, [R1,#(off_654024 - 0x653FC0)]
STRD            R0, R1, [R2,#0x5C]
ADD             SP, SP, #0x150
POP             {R4-R8,PC}
