PUSH            {R0-R2,R4-R11,LR}
MOV             R4, R1
MOV             R7, #1
MOV             R8, #0
MOV             R9, R2
LDR             R1, =off_6BC568
LDR             R6, =off_6CE970
VPUSH           {D8-D12}
SUB             SP, SP, #0x90
LDR             R0, [SP,#0xE8+var_30]
STR             R8, [R0,#4]
STR             R8, [R0,#8]
LDR             R0, [SP,#0xE8+var_30]
STR             R1, [R0]
LDR             R0, [SP,#0xE8+var_30]
STR             R8, [R0,#0x10]!
STR             R7, [R0,#4]
STR             R8, [R0,#8]
STR             R8, [R0,#0xC]
STR             R8, [R0,#0x10]
STR             R8, [R0,#0x14]
LDR             R0, [R6]
LDR             R1, [SP,#0xE8+var_30]
LDR             R10, [R4,#0x14]
ADD             R0, R0, #0x68 ; 'h'
STR             R0, [R1,#0x10]
LDR             R0, [SP,#0xE8+var_30]
LDR             R1, [R10,#0x154]
ADD             R0, R0, #0x10
BL              sub_625B80
MOV             R0, R4
BL              sub_5CDC8C
VLDR            S0, [R10,#0x154]
VLDR            S1, =180.0
MOV             R5, R0
VCVT.F32.U32    S0, S0
LDR             R0, [R4,#0x14]
VLDR            S16, =0.0
ADD             R0, R0, #0x3E0
VLDM            R0, {S19-S20}
ADD             R0, R4, #0xE4
VDIV.F32        S21, S1, S0
LDR             R0, [R0,#0x20]
STR             R0, [SP,#0xE8+var_B0]
LDM             R9, {R0-R2}
ADD             R3, SP, #0xE8+var_80
STM             R3, {R0-R2}
ADD             R1, SP, #0xE8+var_80
MOV             R2, #2
MOV             R0, R1
BL              sub_14C6B0
LDR             R0, =0x127D8
VLDR            S17, [R5,#0x8C]
VLDR            S2, =0.5
VLDR            S0, [R5,#0x90]
LDR             R1, [R0,R4]
VMOV.F32        S18, S16
MOV             R11, #0
LDR             R0, [R1,#0x18]
VLDR            S1, [R0,#0xC]
LDR             R0, [R1,#0xC]
VLDR            S3, [R0,#0x18]
VADD.F32        S1, S1, S3
VMLA.F32        S17, S1, S2
VLDR            S1, [R0,#0x20]
LDR             R0, [R10,#0x154]
VADD.F32        S22, S1, S0
CMP             R0, #0
BLS             loc_293F04
LDR             R6, =off_6B7BEC
VLDR            S25, =0.71111
VLDR            S24, =40.0
ADD             R0, SP, #0xE8+var_A0
STR             R0, [SP,#0xE8+var_5C]
VMUL.F32        S23, S16, S25
VMOV.F32        S0, S23
BL              sub_464318
VMUL.F32        S0, S0, S19
VSTR            S0, [SP,#0xE8+var_8C]
VMOV.F32        S0, S23
BL              sub_464380
VNEG.F32        S0, S0
VADD.F32        S1, S24, S18
ADD             R0, R10, #0x158
LDR             R2, =dword_6D1F40
VMUL.F32        S0, S0, S20
VSTR            S0, [SP,#0xE8+var_84]
VSTR            S24, [SP,#0xE8+var_88]
VLDR            S2, [SP,#0xE8+var_8C]
VADD.F32        S0, S0, S22
VADD.F32        S2, S2, S17
VSTR            S2, [SP,#0xE8+var_8C]
VSTR            S1, [SP,#0xE8+var_88]
VSTR            S0, [SP,#0xE8+var_84]
LDM             R0, {R0,R1}
BL              sub_47EADC
VMOV            S0, R0
LDR             R0, =off_6CE970
MOV             R3, #0
ADD             R4, SP, #0xE8+var_A4
MOV             R2, R3
LDR             R0, [R0]
VCVT.F32.S32    S23, S0
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x660
BL              sub_10A358
MOVS            R7, R0
NOP
BEQ             loc_29385C
MOV             R0, R10
BL              sub_5CDC28
MOV             R5, R0
MOV             R0, R10
BL              sub_5CDC1C
VMOV.F32        S0, S23
STMEA           SP, {R0,R5}
LDR             R1, [SP,#0xE8+var_B0]
ADD             R3, SP, #0xE8+var_8C
ADD             R2, SP, #0xE8+var_80
MOV             R0, R7
BL              sub_293494
STR             R0, [SP,#0xE8+var_A4]
ADD             R0, R4, #4
STR             R0, [SP,#0xE8+var_9C]
STR             R0, [SP,#0xE8+var_A0]
LDR             R0, [SP,#0xE8+var_30]
LDR             R4, =0x2AAAAAAB
ADD             R3, R0, #0x20 ; ' '
LDR             R2, [R0,#0x1C]
ADD             R9, R0, #0x10
ADD             R1, R0, #0x1C
LDM             R3, {R0,R3}
SUB             R2, R0, R2
SMULL           R12, R2, R4, R2
MOV             R12, R2,ASR#1
SUB             R12, R12, R2,ASR#31
ADD             R2, R12, #1
CMP             R2, R3
BLS             loc_293904
LDR             R0, [R9,#4]
VLDR            S0, [R9]
MOV             R5, R2
VSTR            S0, [SP,#0xE8+var_C8]
MOV             R2, #0
CMP             R0, #1
MOV             R1, #1
MOVLS           R0, R1
STR             R0, [SP,#0xE8+var_C4]
STR             R2, [SP,#0xE8+var_C0]
STR             R2, [SP,#0xE8+var_BC]
STR             R2, [SP,#0xE8+var_B8]
STR             R2, [SP,#0xE8+var_B4]
LDR             R0, [R9,#0x14]
MOV             R0, R0,LSL#1
CMP             R0, R5
MOVCC           R0, R5
MOV             R1, R0
ADD             R0, SP, #0xE8+var_C8
BL              sub_625B80
CMP             R0, #0
NOP
BNE             loc_293954
B               loc_29393C
CMP             R0, #0
BEQ             loc_29392C
LDR             R3, [SP,#0xE8+var_A4]
ADD             R2, SP, #0xE8+var_A0
STR             R3, [R0],#4
STR             R2, [R0]
LDR             R2, [SP,#0xE8+var_9C]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [SP,#0xE8+var_9C]
LDR             R0, [R1,#4]
ADD             R0, R0, #0xC
STR             R0, [R1,#4]
B               loc_293E84
MOV             R1, R5
ADD             R0, SP, #0xE8+var_C8
BL              sub_625B80
CMP             R0, #0
NOP
BEQ             loc_293A54
LDRD            R0, R1, [R9,#0xC]
LDR             R2, =0x2AAAAAAB
SUB             R3, R1, R0
SMULL           R2, R3, R2, R3
LDR             R2, [SP,#0xE8+var_B4]
MOV             R12, R3,ASR#1
SUB             R3, R12, R3,ASR#31
CMP             R3, R2
ADD             R12, SP, #0xE8+var_BC
BHI             loc_293C74
STR             R0, [SP,#0xE8+var_E0]
STR             R1, [SP,#0xE8+var_A8]
LDR             R5, [SP,#0xE8+var_B8]
LDR             R7, [SP,#0xE8+var_BC]
CMP             R0, R1
STR             R12, [SP,#0xE8+var_D4]
BNE             loc_293B9C
CMP             R7, R5
BEQ             loc_293A14
SUB             R5, R5, #0xC
ADD             R0, R5, #4
LDR             R1, [R5,#8]
MOV             R4, R5
CMP             R1, R0
BNE             loc_293A00
LDR             R8, [R4]
CMP             R8, #0
BEQ             loc_293A00
STR             R6, [R8,#0x62C]!
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R8, #0x18
BLX             sub_1009D8
MOV             R0, R8
NOP
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #0x22C
BL              sub_503254
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_2939A0
LDR             R0, [SP,#0xE8+var_D4]
LDR             R1, [R0]
STR             R1, [R0,#4]
B               loc_293C74
DCD off_6BC568
DCD off_6CE970
DCFS 180.0
DCFS 0.0
DCD 0x127D8
DCFS 0.5
DCFS 0.71111
DCFS 40.0
DCD off_6B7BEC
DCD dword_6D1F40
DCD 0x2AAAAAAB
DCD nullsub_300
LDR             R5, [SP,#0xE8+var_B8]
LDR             R7, [SP,#0xE8+var_BC]
MOV             R9, #0
ADD             R0, SP, #0xE8+var_BC
CMP             R7, R5
STR             R0, [SP,#0xE8+var_E8]
STR             R9, [SP,#0xE8+var_B4]
BEQ             loc_293AE8
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_293AD4
LDR             R8, [R4]
CMP             R8, #0
BEQ             loc_293AD4
STR             R6, [R8,#0x62C]!
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R8, #0x18
BLX             sub_1009D8
MOV             R0, R8
NOP
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #0x22C
BL              sub_503254
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_293A74
LDR             R0, [SP,#0xE8+var_E8]
STR             R9, [R0]
LDR             R0, [SP,#0xE8+var_E8]
STR             R9, [R0,#4]
LDR             R0, [SP,#0xE8+var_C0]
STR             R9, [SP,#0xE8+var_C0]
CMP             R0, #0
BLNE            sub_2FF5D4
LDR             R5, [SP,#0xE8+var_B8]
LDR             R7, [SP,#0xE8+var_BC]
CMP             R7, R5
BEQ             loc_293B8C
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_293B78
LDR             R8, [R4]
CMP             R8, #0
BEQ             loc_293B78
STR             R6, [R8,#0x62C]!
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R8, #0x18
BLX             sub_1009D8
MOV             R0, R8
NOP
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #0x22C
BL              sub_503254
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_293B18
LDR             R0, [SP,#0xE8+var_C0]
CMP             R0, #0
BEQ             loc_293E84
B               loc_293E7C
CMP             R7, R5
BEQ             loc_293C18
SUB             R5, R5, #0xC
ADD             R3, R5, #4
LDR             R2, [R5,#8]
MOV             R4, R5
CMP             R2, R3
BNE             loc_293C04
LDR             R8, [R4]
CMP             R8, #0
BEQ             loc_293C04
STR             R6, [R8,#0x62C]!
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R8, #0x18
BLX             sub_1009D8
MOV             R0, R8
NOP
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #0x22C
BL              sub_503254
NOP
NOP
BL              sub_300FD4
LDRD            R2, R3, [R4,#4]
CMP             R7, R5
STR             R3, [R2,#4]
STR             R2, [R3]
BNE             loc_293BA4
LDR             R2, [SP,#0xE8+var_D4]
LDR             R0, [SP,#0xE8+var_E0]
LDR             R1, [SP,#0xE8+var_A8]
LDR             R2, [R2]
CMP             R0, R1
BEQ             loc_293C6C
MOVS            R3, R2
BEQ             loc_293C5C
VLDR            S0, [R0]
ADD             R12, R0, #4
VSTR            S0, [R3]
STR             R12, [R2,#4]
LDR             R4, [R0,#8]
ADD             R3, R2, #4
STR             R4, [R2,#8]
STR             R3, [R4]
STR             R3, [R0,#8]
ADD             R0, R0, #0xC
CMP             R0, R1
ADD             R2, R2, #0xC
BNE             loc_293C30
LDR             R0, [SP,#0xE8+var_D4]
STR             R2, [R0,#4]
ADD             R4, SP, #0xE8+var_B8
LDR             R2, [SP,#0xE8+var_BC]
LDM             R4, {R1,R3}
LDR             R0, =0x2AAAAAAB
SUB             R1, R1, R2
SMULL           R1, R0, R0, R1
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
ADD             R0, R0, #1
CMP             R0, R3
BHI             loc_293CD8
LDR             R1, [SP,#0xE8+var_B8]
CMP             R1, #0
BEQ             loc_293CCC
LDR             R2, [SP,#0xE8+var_A4]
ADD             R0, SP, #0xE8+var_A0
STR             R2, [R1],#4
STR             R0, [R1]
LDR             R0, [SP,#0xE8+var_9C]
STR             R0, [R1,#4]
STR             R1, [R0]
STR             R1, [SP,#0xE8+var_9C]
LDR             R0, [SP,#0xE8+var_B8]
ADD             R0, R0, #0xC
STR             R0, [SP,#0xE8+var_B8]
ADD             R0, SP, #0xE8+var_C8
LDM             R9, {R2,R12}
ADD             R1, R9, #0xC
ADD             R3, R9, #0x14
VLDM            R0, {S0-S1}
ADD             R0, R9, #8
STR             R2, [SP,#0xE8+var_C8]
STR             R12, [SP,#0xE8+var_C4]
ADD             R2, R9, #0x10
VSTM            R9, {S0-S1}
MOV             R12, #0
LDR             R5, [R9,#8]
VLDR            S0, [SP,#0xE8+var_C0]
ADD             R9, SP, #0xE8+var_BC
STR             R5, [SP,#0xE8+var_C0]
VSTR            S0, [R0]
LDR             R0, [R1]
VLDR            S0, [SP,#0xE8+var_BC]
STR             R0, [SP,#0xE8+var_BC]
VSTR            S0, [R1]
LDR             R0, [R2]
VLDR            S0, [SP,#0xE8+var_B8]
STR             R0, [SP,#0xE8+var_B8]
VSTR            S0, [R2]
VLDR            S0, [SP,#0xE8+var_B4]
LDR             R0, [R3]
VSTR            S0, [R3]
LDR             R5, [SP,#0xE8+var_B8]
LDR             R7, [SP,#0xE8+var_BC]
STR             R12, [SP,#0xE8+var_B4]
CMP             R7, R5
BEQ             loc_293DCC
SUB             R5, R5, #0xC
ADD             R0, R5, #4
LDR             R1, [R5,#8]
MOV             R4, R5
CMP             R1, R0
BNE             loc_293DB8
LDR             R8, [R4]
CMP             R8, #0
BEQ             loc_293DB8
STR             R6, [R8,#0x62C]!
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R8, #0x18
BLX             sub_1009D8
MOV             R0, R8
NOP
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #0x22C
BL              sub_503254
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_293D58
MOV             R0, #0
STR             R0, [R9]
STR             R0, [R9,#4]
LDR             R1, [SP,#0xE8+var_C0]
STR             R0, [SP,#0xE8+var_C0]
CMP             R1, #0
MOVNE           R0, R1
BLNE            sub_2FF5D4
LDR             R5, [SP,#0xE8+var_B8]
LDR             R7, [SP,#0xE8+var_BC]
CMP             R7, R5
BEQ             loc_293E70
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_293E5C
LDR             R8, [R4]
CMP             R8, #0
BEQ             loc_293E5C
STR             R6, [R8,#0x62C]!
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R8, #0x18
BLX             sub_1009D8
MOV             R0, R8
NOP
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #0x22C
BL              sub_503254
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_293DFC
LDR             R0, [SP,#0xE8+var_C0]
CMP             R0, #0
BEQ             loc_293E84
NOP
BL              sub_2FF5D4
VADD.F32        S16, S16, S21
LDR             R0, [SP,#0xE8+var_9C]
LDR             R1, [SP,#0xE8+var_5C]
CMP             R0, R1
BNE             loc_293EE8
LDR             R0, [SP,#0xE8+var_A4]
CMP             R0, #0
BEQ             loc_293EE8
ADD             R4, R0, #0x400
STR             R6, [R0,#0x62C]!
LDR             R1, =nullsub_300
ADD             R4, R4, #0x22C
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R0, #0x18
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #0x22C
BL              sub_503254
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0xE8+var_A0]
ADD             R11, R11, #1
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R10,#0x154]
CMP             R0, R11
BHI             loc_2937A0
LDR             R0, [SP,#0xE8+var_30]
ADD             SP, SP, #0x90
VPOP            {D8-D12}
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
