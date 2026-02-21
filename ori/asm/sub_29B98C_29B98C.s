PUSH            {R4-R8,LR}
MOV             R1, #0
MOV             R5, R0
LDR             R8, =off_6D1648
MOV             R4, R1
VPUSH           {D8-D9}
SUB             SP, SP, #0x10
VLDR            S16, =0.0
ADD             R7, R5, R4,LSL#2
LDR             R0, [R7,#0x18]
CMP             R0, #0
BEQ             loc_29BAFC
LDR             R0, [R0,#4]
RSB             R0, R0, #0x3100
MOV             R6, R0,ASR#8
CMP             R6, #0
LDR             R0, [R8]
MOVLE           R6, #1
LDR             R0, [R0,#0xBC]
NOP
NOP
BL              sub_5C6058
CMP             R0, #0
LDR             R0, [R8]
BEQ             loc_29BA24
ADD             R1, R4, R4,LSL#1
LDR             R0, [R0,#0xC4]
ADD             R1, R5, R1,LSL#2
ADD             R1, R1, #0x24 ; '$'
LDR             R0, [R0,#4]
VLDM            R1, {S0-S2}
LDR             R0, [R0,#8]
ADD             R0, R0, #0x108
VLDM            R0, {S3-S5}
VSUB.F32        S0, S3, S0
VSUB.F32        S1, S4, S1
VSUB.F32        S2, S5, S2
B               loc_29BA7C
LDR             R1, [R0,#0xC4]
LDR             R1, [R1,#4]
LDR             R1, [R1,#4]
ADD             R1, R1, #0x108
VLDM            R1, {S17-S18}
LDR             R0, [R0,#0xBC]
VMOV            S0, R6
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
VCVT.F32.S32    S0, S0
BL              sub_19B970
VLDM            R0, {S0-S2}
ADD             R0, R4, R4,LSL#1
ADD             R0, R5, R0,LSL#2
VADD.F32        S0, S17, S0
VADD.F32        S1, S18, S1
VADD.F32        S2, S16, S2
ADD             R0, R0, #0x24 ; '$'
VLDM            R0, {S3-S5}
VSUB.F32        S0, S0, S3
VSUB.F32        S1, S1, S4
VSUB.F32        S2, S2, S5
LDR             R1, [R7,#0x18]
ADD             R0, R4, R4,LSL#1
ADD             R1, R1, #0x134
ADD             R0, R5, R0,LSL#2
ADD             R0, R0, #0x24 ; '$'
VSTM            R1, {S0-S2}
VLDM            R0!, {S5}
VLDM            R0, {S3-S4}
VADD.F32        S0, S0, S5
VADD.F32        S3, S1, S3
VADD.F32        S1, S2, S4
VSTR            S0, [SP,#0x38+var_38]
VSTR            S3, [SP,#0x38+var_34]
VSTR            S1, [SP,#0x38+var_30]
LDR             R0, [R8]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#8]
LDR             R1, [R0]
LDR             R1, [R1,#0x80]
BLX             R1
CMP             R0, #0
BNE             loc_29BAF8
LDR             R0, [R8]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#8]
LDR             R1, [R0]
LDR             R2, [R1,#0x6C]
MOV             R1, SP
BLX             R2
MOV             R1, #1
ADD             R4, R4, #1
CMP             R4, #3
BLT             loc_29B9AC
CMP             R1, #0
BNE             loc_29BB1C
LDR             R1, =dword_68BC98
LDRD            R0, R1, [R1,#(dword_68BCF0 - 0x68BC98)]
STRD            R0, R1, [R5,#0x70]
ADD             SP, SP, #0x10
VPOP            {D8-D9}
POP             {R4-R8,PC}
