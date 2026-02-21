PUSH            {R0-R11,LR}
ADD             R4, R0, #0x104
MOV             R5, R3
MOV             R8, R0
MOV             R10, #0
LDR             R11, =0x92492493
VPUSH           {D8-D9}
SUB             SP, SP, #0x1C
LDR             R6, [SP,#0x60+arg_0]
STR             R1, [R0,#0x104]
LDR             R7, [SP,#0x60+var_2C]
LDR             R0, [R0,#0x118]
CMP             R7, R0
RSB             R9, R7, R7,LSL#3
BHI             loc_219E10
LDR             R0, [R4,#0x10]
LDR             R1, [R4,#0xC]
MOV             R3, R10
SUB             R2, R0, R1
SMLAL           R3, R2, R11, R2
MOV             R3, R2,ASR#5
SUB             R2, R3, R2,ASR#31
CMP             R2, R7
ADDCS           R0, R1, R9,LSL#3
STRCS           R0, [R4,#0x10]
BCS             loc_21A098
ADD             R1, R1, R9,LSL#3
CMP             R0, R1
MOV             R2, R1
BEQ             loc_219E08
ADD             R0, R0, #0x38 ; '8'
CMP             R0, R1
BNE             loc_219DFC
STR             R1, [R4,#0x10]
B               loc_21A098
LDR             R2, [R4,#4]
MOV             R0, #1
STR             R1, [SP,#0x60+var_60]
CMP             R2, #1
MOVHI           R0, R2
ADD             R2, SP, #0x60+var_58
STR             R0, [SP,#0x60+var_5C]
MOV             R0, #0
STM             R2, {R0,R10}
MOV             R0, SP
STR             R10, [SP,#0x60+var_50]
STR             R10, [SP,#0x60+var_4C]
LDR             R1, [R4,#0x14]
MOV             R1, R1,LSL#1
CMP             R1, R7
MOVCC           R1, R7
BL              sub_623878
CMP             R0, #0
NOP
BNE             loc_219E78
MOV             R1, R7
MOV             R0, SP
BL              sub_623878
CMP             R0, #0
NOP
BEQ             loc_219EDC
LDRD            R2, R3, [R4,#0xC]
MOV             R1, R10
MOV             R0, R10
SUB             R12, R3, R2
MOV             LR, R12
SMLAL           R1, R12, R11, LR
MOV             R1, R12,ASR#5
SUB             R1, R1, R12,ASR#31
CMP             R1, R7
BCS             loc_219FA4
MOV             R12, R0
MOV             R9, LR
SMLAL           R12, R9, R11, LR
ADD             R1, SP, #0x60+var_54
MOV             R12, R9,ASR#5
SUB             R12, R12, R9,ASR#31
LDR             R9, [SP,#0x60+var_4C]
CMP             R12, R9
BHI             loc_219F40
CMP             R2, R3
LDREQ           R1, [SP,#0x60+var_54]
LDRNE           R12, [SP,#0x60+var_54]
STREQ           R1, [SP,#0x60+var_50]
BNE             loc_219F08
B               loc_219F40
LDR             R0, [SP,#0x60+var_58]
STR             R10, [SP,#0x60+var_4C]
STR             R10, [SP,#0x60+var_54]
CMP             R0, #0
STR             R10, [SP,#0x60+var_50]
STR             R10, [SP,#0x60+var_58]
BLNE            sub_2FF5D4
LDR             R0, [SP,#0x60+var_58]
CMP             R0, #0
BEQ             loc_21A098
B               loc_21A090
MOVS            R9, R12
BEQ             loc_219F2C
VLDM            R2, {S0-S7}
ADD             LR, R2, #0x20 ; ' '
VSTM            R9, {S0-S7}
VLDM            LR, {S0-S5}
ADD             LR, R9, #0x20 ; ' '
VSTM            LR, {S0-S4}
VSTR            S5, [R12,#0x34]
ADD             R2, R2, #0x38 ; '8'
CMP             R2, R3
ADD             R12, R9, #0x38 ; '8'
BNE             loc_219F08
STR             R12, [R1,#4]
LDR             R1, [SP,#0x60+var_4C]
ADD             R3, SP, #0x60+var_54
CMP             R1, R7
BCC             loc_21A018
LDR             R2, [SP,#0x60+var_50]
LDR             R12, [SP,#0x60+var_54]
MOV             R1, R0
SUB             R2, R2, R12
SMLAL           R1, R2, R11, R2
MOV             R1, R2,ASR#5
SUB             R1, R1, R2,ASR#31
RSB             R2, R7, R7,LSL#3
CMP             R1, R7
ADDCS           R1, R12, R2,LSL#3
BCS             loc_219FD8
LDR             R1, [SP,#0x60+var_50]
ADD             R2, R12, R2,LSL#3
MOV             R12, R2
CMP             R1, R2
BEQ             loc_219F9C
ADD             R1, R1, #0x38 ; '8'
CMP             R1, R2
BNE             loc_219F90
STR             R2, [R3,#4]
B               loc_21A018
ADD             R3, R2, R9,LSL#3
SUB             R1, R3, R2
MOV             R7, R0
SMLAL           R7, R1, R11, R1
ADD             R12, SP, #0x60+var_54
MOV             R7, R1,ASR#5
SUB             R1, R7, R1,ASR#31
LDR             R7, [SP,#0x60+var_4C]
CMP             R1, R7
BHI             loc_21A018
LDR             R1, [SP,#0x60+var_54]
CMP             R2, R3
BNE             loc_219FE0
STR             R1, [SP,#0x60+var_50]
B               loc_21A018
CMP             R1, #0
BEQ             loc_21A004
VLDM            R2, {S0-S7}
ADD             R9, R2, #0x20 ; ' '
ADD             R7, R1, #0x20 ; ' '
VSTM            R1, {S0-S7}
VLDM            R9, {S0-S5}
VSTM            R7, {S0-S4}
VSTR            S5, [R1,#0x34]
ADD             R2, R2, #0x38 ; '8'
CMP             R2, R3
ADD             R1, R1, #0x38 ; '8'
BNE             loc_219FE0
STR             R1, [R12,#4]
LDM             R4, {R3,R12}
LDMFD           SP, {R1,R2}
STMEA           SP, {R3,R12}
STM             R4, {R1,R2}
LDR             R2, [R4,#8]
LDR             R1, [SP,#0x60+var_58]
STR             R2, [SP,#0x60+var_58]
STR             R1, [R4,#8]
LDR             R2, [R4,#0xC]
LDR             R1, [SP,#0x60+var_54]
STR             R2, [SP,#0x60+var_54]
STR             R1, [R4,#0xC]
LDR             R2, [R4,#0x10]
LDR             R1, [SP,#0x60+var_50]
STR             R2, [SP,#0x60+var_50]
STR             R1, [R4,#0x10]
LDR             R1, [SP,#0x60+var_4C]
LDR             R2, [R4,#0x14]
STR             R1, [R4,#0x14]
LDR             R1, [SP,#0x60+var_58]
STR             R0, [SP,#0x60+var_4C]
STR             R0, [SP,#0x60+var_54]
CMP             R1, #0
STR             R0, [SP,#0x60+var_50]
STR             R0, [SP,#0x60+var_58]
MOVNE           R0, R1
BLNE            sub_2FF5D4
LDR             R0, [SP,#0x60+var_58]
CMP             R0, #0
BEQ             loc_21A098
NOP
BL              sub_2FF5D4
VLDR            S17, =0.0
ADD             R8, R8, #0x110
VMOV.F32        S16, S17
LDM             R8, {R4,R7}
CMP             R4, R7
BEQ             loc_21A188
LDR             R0, [SP,#0x60+var_2C]
LDR             R9, =dword_6E1330
LDR             R11, =flt_711FE4
VLDR            S18, =1.0
SUB             R8, R0, #1
MOV             R0, R4
MOV             R2, #0x38 ; '8'
MOV             R1, #0
BL              sub_110BE4
VLDR            S1, [R6,#8]
VLDR            S2, [R5,#8]
VLDR            S3, [R6,#4]
VLDR            S4, [R5,#4]
VSUB.F32        S1, S1, S2
VMOV            S2, R8
VSUB.F32        S3, S3, S4
VLDR            S0, [R6]
VLDR            S5, [R5]
ADD             R0, R4, #0xC
VCVT.F32.U32    S4, S2
VSUB.F32        S0, S0, S5
VDIV.F32        S2, S16, S4
VLDR            S4, [R5,#8]
VMUL.F32        S0, S0, S2
VMUL.F32        S3, S3, S2
VMUL.F32        S2, S1, S2
VLDR            S1, [R5,#4]
VADD.F32        S0, S5, S0
VADD.F32        S1, S1, S3
VADD.F32        S2, S4, S2
VSTM            R0, {S0-S2}
VSTM            R4, {S0-S2}
LDR             R0, [R9]
TST             R0, #1
BNE             loc_21A168
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_21A168
LDR             R0, =flt_711FE4
VSTR            S17, [R0]
VSTR            S17, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S17, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDM             R11, {R0-R2}
VADD.F32        S16, S16, S18
ADD             R3, R4, #0x18
STM             R3, {R0-R2}
STRB            R10, [R4,#0x24]
ADD             R4, R4, #0x38 ; '8'
CMP             R4, R7
BNE             loc_21A0C4
ADD             SP, SP, #0x1C
VPOP            {D8-D9}
ADD             SP, SP, #0x10
POP             {R4-R11,PC}
