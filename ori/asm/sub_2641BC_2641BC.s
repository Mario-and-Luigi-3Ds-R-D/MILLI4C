PUSH            {R4-R6,LR}
ADD             R4, R0, #0x12800
LDR             R6, =off_6CE970
SUBS            R5, R1, #0
VPUSH           {D8}
SUB             SP, SP, #0x10
ADD             R4, R4, #0x368
BLE             loc_264218
MOV             R2, #0
MOV             R1, SP
MOV             R0, R4
BL              sub_5C4F84
VLDR            S0, [SP,#0x28+var_28]
VLDR            S1, =20.0
LDR             R1, =0x5DB
MOV             R2, #0
VSUB.F32        S0, S0, S1
VSTR            S0, [SP,#0x28+var_28]
LDR             R0, [R6]
BL              sub_52F9B4
LDMFD           SP, {R1-R3}
ADD             R0, R0, #0x134
STM             R0, {R1-R3}
MOV             R2, #0
LDR             R0, [R4,#0x120]
LDR             R1, [R4,#0x124]
ADD             R5, R5, R0
CMP             R5, R1
MOVGE           R5, R1
BGE             loc_26423C
CMP             R5, #0
MOVLE           R5, R2
VLDR            S16, =0.0
CMP             R0, R5
STR             R5, [R4,#0x120]
BGE             loc_264270
LDR             R1, [R4,#0x10C]
CMP             R1, #0
BEQ             loc_264270
LDR             R0, [R6]
LDR             R3, =0xFFE683CC
VMOV.F32        S0, S16
MOV             R2, #0
SUB             R0, R0, R3
BL              sub_503414
LDR             R1, [R4,#0x520]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x11C
TST             R1, #8
BEQ             loc_2642A0
LDR             R1, [R0,#0x178]
CMP             R1, R5
STRNE           R5, [R0,#0x178]
BLNE            sub_5B7E3C
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R6,PC}
STR             R5, [R0,#0x178]
MOV             R4, R0
VSTR            S16, [R0,#0x64]
MOV             R1, #1
ADD             R0, R0, #0x168
BL              sub_62D444
LDR             R1, [R4,#0x168]
MOV             R0, R4
MOV             R2, R5
BL              sub_5B71F4
MOV             R0, R4
NOP
BL              sub_5B7B9C
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R6,PC}
