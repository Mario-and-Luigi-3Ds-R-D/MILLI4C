PUSH            {R4,R5,LR}
MOV             R4, R0
VLDR            S2, [R0,#0x18]
VLDR            S5, [R0,#0xBC]
VLDR            S4, [R0,#0xC0]
VLDR            S3, [R0,#0xC4]
ADD             R0, R0, #0x1C
VADD.F32        S2, S2, S5
VLDM            R0, {S0-S1}
SUB             SP, SP, #0xC
ADD             R2, SP, #0x18+var_14
MOV             R1, SP
VADD.F32        S0, S0, S4
VADD.F32        S1, S1, S3
ADD             R0, R4, #0x25C
VSTR            S2, [SP,#0x18+var_18]
VSTM            R2, {S0-S1}
BL              sub_546B18
MOV             R1, SP
ADD             R0, R4, #0x2D8
BL              sub_546B18
LDR             R0, [R4,#0x120]
TST             R0, #0x600
BEQ             loc_198D60
ADD             R0, R4, #0x260
VLDR            S0, =0.0
LDM             R0, {R0,R1}
ADD             R2, R4, #0x280
VSTR            S0, [R4,#0x27C]
VSTR            S0, [R4,#0x278]
STM             R2, {R0,R1}
ADD             R0, R4, #0x2DC
ADD             R2, R4, #0x2FC
LDM             R0, {R0,R1}
VSTR            S0, [R4,#0x2F8]
VSTR            S0, [R4,#0x2F4]
STM             R2, {R0,R1}
B               loc_198D9C
LDR             R5, =off_6D1648
LDR             R0, [R5]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
ADD             R1, R0, #0x108
ADD             R0, R4, #0x25C
BL              sub_5465DC
LDR             R0, [R5]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
ADD             R1, R0, #0x108
ADD             R0, R4, #0x2D8
BL              sub_5465DC
MOV             R5, #0
ADD             R0, R4, R5,LSL#3
LDR             R1, [R0,#0x354]
CMP             R1, #0
BEQ             loc_198DC4
LDR             R2, [R4,#0x280]
STR             R2, [R1,#0xC]
LDR             R2, [R0,#0x354]
LDR             R1, [R4,#0x284]
STR             R1, [R2,#0x1C]
LDR             R1, [R0,#0x358]
CMP             R1, #0
BEQ             loc_198DE4
LDR             R2, [R4,#0x2FC]
STR             R2, [R1,#0xC]
LDR             R0, [R0,#0x358]
LDR             R1, [R4,#0x300]
STR             R1, [R0,#0x1C]
LDR             R0, [R4]
LDR             R1, [R0,#0xB4]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BEQ             loc_198E0C
ADD             R0, R4, R5,LSL#2
LDR             R1, [R0,#0x364]
MOV             R0, R4
BL              sub_1FFC9C
ADD             R5, R5, #1
CMP             R5, #2
BLT             loc_198DA0
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
