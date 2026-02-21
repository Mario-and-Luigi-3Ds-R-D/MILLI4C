PUSH            {R4,R5,LR}
MOV             R4, R0
VLDR            S0, [R0,#0x10C]
ADD             R0, R0, #0x100
SUB             SP, SP, #0xC
VLDM            R0, {S1-S3}
ADD             R5, R4, #0x44 ; 'D'
MOV             R0, R5
VNMUL.F32       S1, S0, S1
VNMUL.F32       S2, S0, S2
VNMUL.F32       S0, S0, S3
VSTR            S0, [SP,#0x18+var_10]
VSTMEA          SP, {S1-S2}
BL              sub_5A26D0
ADD             R0, R4, #0x28 ; '('
ADD             R3, R5, #0x20 ; ' '
LDM             R0, {R0-R2}
VLDR            S1, =0.5
STR             R0, [R5,#0x1C]
ADD             R5, R5, #4
STM             R3, {R1,R2}
STM             R5, {R0-R2}
MOV             R2, SP
VLDR            S0, [R4,#0x84]
MOV             R1, #0
ADD             R0, R4, #0x44 ; 'D'
VMUL.F32        S0, S0, S1
BL              sub_5A2B20
LDR             R0, =off_675FEC
MOV             R3, #0
LDM             R0, {R1,R2}
MOV             R0, R4
BL              sub_232B34
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
