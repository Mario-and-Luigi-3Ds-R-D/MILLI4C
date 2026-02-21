PUSH            {R4-R11,LR}
MOV             R7, R0
LDR             R0, =off_6CDF98
VPUSH           {D8-D9}
VMOV.F32        S19, S0
SUB             SP, SP, #0x1FC
LDR             R0, [R0]
LDR             R4, [R0,#0x124]
LDR             R0, [R7,#0x100]
ADD             R0, R0, #0x21C00
ADD             R0, R0, #0x248
LDR             R1, [R0]
MOV             R0, R4
MOV             R6, R1
BL              sub_5CC9A8
LDR             R1, [R4,#0x24]
STR             R0, [SP,#0x230+var_214]
MOV             R2, R6
ADD             R5, R0, R1
ADD             R0, SP, #0x230+var_200
STR             R1, [SP,#0x230+var_21C]
STR             R0, [SP,#0x230+var_98]
STR             R0, [SP,#0x230+var_94]
LDR             R0, [R7,#0x124]
ADD             R1, SP, #0x230+var_78
BL              sub_5CCB14
ADD             R1, SP, #0x230+var_78
ADD             R0, SP, #0x230+var_60
BL              sub_26BB60
MOV             R0, #0xA
STR             R0, [SP,#0x230+var_84]
LDR             R0, [SP,#0x230+var_98]
MOV             R6, #0
STR             R0, [SP,#0x230+var_94]
LDR             R0, [SP,#0x230+var_214]
CMP             R0, #0
MOVHI           R11, #1
BLS             loc_27AA2C
ADD             R0, SP, #0x230+var_60
BL              sub_5CC20C
STR             R0, [SP,#0x230+var_210]
LDR             R0, =dword_6D1F40
UXTH            R4, R5
BL              sub_546DB0
MUL             R0, R0, R4
MOVS            R0, R0,LSR#16
ADDNE           R2, SP, #0x230+var_98
STR             R0, [SP,#0x230+var_20C]
LDMNE           R2, {R0,R1}
BEQ             loc_27A934
CMP             R0, R1
BEQ             loc_27A980
LDR             R2, [R0,#4]
LDR             R3, [SP,#0x230+var_20C]
CMP             R2, R3
ADDNE           R0, R0, #8
BNE             loc_27A964
ADD             R3, SP, #0x230+var_98
CMP             R0, R1
LDM             R3, {R1,R2}
MOVEQ           R0, #1
MOVNE           R0, #0
ADD             R3, SP, #0x230+var_210
SUB             R12, R2, R1
MOV             R2, #0
MOV             R4, R12,ASR#3
CMP             R4, #0
BLE             loc_27A9DC
LDR             R9, [R3,#4]
ADD             R1, R1, #4
MOV             R4, R12,ASR#3
ADD             R3, R9, #1
LDR             R8, [R1]
ADD             R1, R1, #8
CMP             R3, R8
SUBNE           R10, R9, #1
CMPNE           R10, R8
ADDEQ           R2, R2, #1
SUBS            R4, R4, #1
BNE             loc_27A9BC
CMP             R0, #0
BEQ             loc_27A934
CMP             R2, #2
BCS             loc_27A934
ADD             R0, R11, R12,ASR#3
CMP             R0, #0x2D ; '-'
BHI             loc_27AA1C
LDR             R0, [SP,#0x230+var_94]
CMP             R0, #0
BEQ             loc_27AA10
ADD             R3, SP, #0x230+var_210
LDM             R3, {R1,R2}
STM             R0, {R1,R2}
LDR             R0, [SP,#0x230+var_94]
ADD             R0, R0, #8
STR             R0, [SP,#0x230+var_94]
LDR             R0, [SP,#0x230+var_214]
ADD             R6, R6, #1
CMP             R6, R0
BCC             loc_27A934
ADD             R0, SP, #0x230+var_98
LDM             R0, {R4,R6}
CMP             R4, R6
BEQ             loc_27AC5C
SUB             R8, R6, R4
MOV             R1, R6
MOV             R2, R8,ASR#3
MOV             R0, R4
BL              sub_635B98
MOV             R0, #0x10
CMP             R0, R8,ASR#3
BGE             loc_27AB90
ADD             R12, R4, #0x80
ADD             R1, R4, #8
CMP             R1, R12
MOV             R0, R4
BEQ             loc_27AB38
LDR             R2, [R1,#4]
LDR             R8, [R0,#4]
VLDR            S0, [R1]
MOV             R3, R4
CMP             R2, R8
MOVGE           R3, R1
MOVGE           R8, R1
BGE             loc_27AB14
SUB             R8, R1, R3
MOV             R10, R1
MOV             R9, R8,ASR#3
CMP             R9, #0
ADD             R11, R1, #8
BLE             loc_27AAF4
MOVS            R9, R8,LSL#28
BPL             loc_27AAC0
SUB             R10, R1, #8
SUB             R11, R11, #8
VLDM            R10, {S1-S2}
VSTM            R11, {S1-S2}
MOVS            R8, R8,ASR#4
BEQ             loc_27AAF4
SUB             LR, R10, #8
MOV             R9, R11
VLDM            LR, {S1-S2}
SUB             R9, R9, #8
SUB             R10, R10, #0x10
SUB             R11, R11, #0x10
VSTM            R9, {S1-S2}
SUBS            R8, R8, #1
VLDM            R10, {S1-S2}
VSTM            R11, {S1-S2}
BNE             loc_27AAC8
VSTR            S0, [R3]
STR             R2, [R0,#4]
B               loc_27AB2C
VLDR            S1, [R8]
MOV             R10, R3
MOV             R3, R8
VSTR            S1, [R10]
STR             R9, [R10,#4]
SUB             R8, R8, #8
LDR             R9, [R8,#4]
CMP             R2, R9
BLT             loc_27AB00
VSTR            S0, [R3]
STR             R2, [R3,#4]
ADD             R1, R1, #8
CMP             R1, R12
BNE             loc_27AA70
CMP             R12, R6
MOV             R0, R12
BEQ             loc_27AC5C
LDR             R2, [R0,#4]
LDR             R9, [R0]
MOV             R1, R0
MOV             R3, R0
B               loc_27AB68
LDR             R8, [R3]
MOV             R4, R1
MOV             R1, R3
STM             R4, {R8,R12}
SUB             R3, R3, #8
LDR             R12, [R3,#4]
CMP             R12, R2
BGT             loc_27AB58
ADD             R0, R0, #8
STR             R2, [R1,#4]
CMP             R0, R6
STR             R9, [R1]
BNE             loc_27AB44
B               loc_27AC5C
ADD             R1, R4, #8
CMP             R1, R6
BEQ             loc_27AC5C
LDR             R2, [R1,#4]
LDR             R0, [R4,#4]
VLDR            S0, [R1]
CMP             R2, R0
MOVGE           R0, R1
MOVGE           R3, R1
BGE             loc_27AC38
SUB             R0, R1, R4
MOV             R12, R1
MOV             R3, R0,ASR#3
CMP             R3, #0
ADD             R8, R1, #8
BLE             loc_27AC1C
MOVS            R3, R0,LSL#28
BPL             loc_27ABE8
SUB             R12, R1, #8
SUB             R8, R8, #8
LDM             R12, {R3,R9}
STM             R8, {R3,R9}
MOVS            R0, R0,ASR#4
BEQ             loc_27AC1C
SUB             R9, R12, #8
MOV             R3, R8
VLDM            R9, {S1-S2}
SUB             R3, R3, #8
SUB             R12, R12, #0x10
SUB             R8, R8, #0x10
VSTM            R3, {S1-S2}
SUBS            R0, R0, #1
LDM             R12, {R3,R9}
STM             R8, {R3,R9}
BNE             loc_27ABF0
VSTR            S0, [R4]
STR             R2, [R4,#4]
B               loc_27AC50
LDR             R9, [R3]
MOV             R8, R0
MOV             R0, R3
STM             R8, {R9,R12}
SUB             R3, R3, #8
LDR             R12, [R3,#4]
CMP             R2, R12
BLT             loc_27AC28
VSTR            S0, [R0]
STR             R2, [R0,#4]
ADD             R1, R1, #8
CMP             R1, R6
BNE             loc_27AB9C
ADD             R2, SP, #0x230+var_98
MOV             R9, #1
LDM             R2, {R0,R1}
MOV             R3, #0
MOV             R6, #0x80000000
MOV             R8, R6
SUB             R2, R1, R0
MOV             R11, R3
ADD             R10, R9, R2,ASR#3
CMP             R10, #1
MOV             R4, R11
MOV             R12, R8
MOV             R1, R9
ADDGT           R2, R9, R2,ASR#3
BLE             loc_27ACCC
LDR             R10, [R0,#4]
ADD             R6, R6, #1
CMP             R10, R6
ADDEQ           R4, R4, #1
BEQ             loc_27ACB8
CMP             R4, R12
MOVHI           R12, R4
MOV             R4, R3
ADD             R1, R1, #1
CMP             R2, R1
MOV             R6, R10
ADD             R0, R0, #8
BGT             loc_27AC98
LDR             R1, [SP,#0x230+var_84]
CMP             R8, #2
CMPCC           R11, #2
MOVCS           R0, #1
MOVCC           R0, #0
SUB             R1, R1, #1
TEQ             R0, #1
STR             R1, [SP,#0x230+var_84]
BNE             loc_27ACF8
CMP             R1, #0
BNE             loc_27A918
LDR             R0, [SP,#0x230+var_21C]
MOV             R6, #0
CMP             R0, #0
MOVHI           R8, #6
BLS             loc_27AD88
LDR             R0, =dword_6D1F40
UXTH            R4, R5
BL              sub_546DB0
MUL             R0, R0, R4
ADD             R3, SP, #0x230+var_98
LDM             R3, {R1,R2}
MOV             R0, R0,LSR#16
CMP             R1, R2
LDRNE           R3, [R1,#4]
CMPNE           R3, R0
ADDNE           R1, R1, #8
BNE             loc_27AD28
CMP             R1, R2
BNE             loc_27AD0C
MOV             R1, R2
LDR             R2, [SP,#0x230+var_98]
SUB             R1, R1, R2
ADD             R1, R9, R1,ASR#3
CMP             R1, #0x2D ; '-'
BHI             loc_27AD78
LDR             R1, [SP,#0x230+var_94]
CMP             R1, #0
STRNE           R0, [R1,#4]
STRNE           R8, [R1]
LDR             R0, [SP,#0x230+var_94]
ADD             R0, R0, #8
STR             R0, [SP,#0x230+var_94]
LDR             R0, [SP,#0x230+var_21C]
ADD             R6, R6, #1
CMP             R6, R0
BCC             loc_27AD0C
ADD             R2, SP, #0x230+var_98
LDM             R2, {R0,R1}
BL              sub_63A590
LDR             R0, [R7,#0x124]
LDR             R1, [SP,#0x230+var_98]
VMOV.F32        S16, S19
VLDR            S18, =0.0
VLDR            S17, [R0,#0x28]
LDR             R0, [SP,#0x230+var_94]
MOV             R5, R1
SUB             R0, R0, R1
MOV             R0, R0,ASR#3
VMOV            S0, R0
LDR             R0, [SP,#0x230+var_94]
CMP             R0, R5
VCVT.F32.U32    S0, S0
VMLA.F32        S16, S17, S0
BEQ             loc_27B09C
LDR             R11, =0x2AAAAAAB
ADD             R4, R7, #0x12800
ADD             R4, R4, #0x14
ADD             R10, SP, #0x230+var_80
ADD             R8, SP, #0x230+var_20C
LDR             R0, [R7,#0x124]
VMOV.F32        S0, S18
VLDR            S1, [R0,#0xD8]
VSTR            S16, [SP,#0x230+var_44]
VSUB.F32        S16, S16, S17
ADD             R0, SP, #0x230+var_40
VSTM            R0, {S0-S1}
LDR             R0, [R5]
CMP             R0, #6
BEQ             loc_27AE54
AND             R9, R0, #0xFF
MOV             R0, #0
STR             R0, [SP,#0x230+var_210]
ADD             R1, SP, #0x230+var_44
ADD             R0, SP, #0x230+var_20C
STR             R1, [SP,#0x230+var_220]
CMP             R9, #6; switch 6 cases
ADD             R6, SP, #0x230+var_210
STR             R0, [SP,#0x230+var_208]
STR             R0, [SP,#0x230+var_20C]
LDRCC           PC, [PC,R9,LSL#2]; switch jump
B               def_27AE34; jumptable 0027AE34 default case
DCD loc_27AF4C; jump table for switch statement
LDR             R0, =off_6CE970
MOV             R3, #0
ADD             R6, SP, #0x230+var_84
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x10C
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_27AEA0
LDR             R1, [R7,#0xC0]
LDR             R2, [R7,#0xBC]
SUB             R1, R1, R2
SMULL           R2, R1, R11, R1
MOV             R2, R1,ASR#1
SUB             R2, R2, R1,ASR#31
ADD             R1, SP, #0x230+var_44
BL              sub_26B5E4
STR             R0, [SP,#0x230+var_84]
ADD             R0, R6, #4
STR             R0, [SP,#0x230+var_7C]
STR             R0, [SP,#0x230+var_80]
LDR             R0, [R7,#0xC0]
LDR             R2, [R7,#0xBC]
ADD             R1, R7, #8
SUB             R0, R0, R2
SMULL           R2, R0, R11, R0
MOV             R2, R0,ASR#1
SUB             R0, R2, R0,ASR#31
ADD             R0, R0, #1
CMP             R0, #0xF
BHI             loc_27AF14
ADD             R0, R1, #0xB4
LDR             R1, [R1,#0xB8]
CMP             R1, #0
BEQ             loc_27AF08
LDR             R3, [SP,#0x230+var_84]
ADD             R2, SP, #0x230+var_80
STR             R3, [R1],#4
STR             R2, [R1]
LDR             R2, [SP,#0x230+var_7C]
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R1, [SP,#0x230+var_7C]
LDR             R1, [R0,#4]
ADD             R1, R1, #0xC
STR             R1, [R0,#4]
LDR             R0, [SP,#0x230+var_7C]
CMP             R0, R10
BNE             loc_27AF38
LDR             R0, [SP,#0x230+var_84]
CMP             R0, #0
BEQ             loc_27AF38
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
ADD             R2, SP, #0x230+var_80
LDM             R2, {R0,R1}
STR             R1, [R0,#4]
STR             R0, [R1]
B               loc_27B08C
LDR             R0, =off_6CE970; jumptable 0027AE34 cases 0-2
MOV             R3, #0
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x4C ; 'L'
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_27AF80
LDR             R1, [SP,#0x230+var_220]
MOV             R2, R9
BL              sub_26A75C
MOV             R9, R0
LDR             R0, [SP,#0x230+var_208]
CMP             R0, R8
BNE             loc_27B1AC
LDR             R0, [SP,#0x230+var_210]
CMP             R0, #0
BEQ             loc_27AFFC
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
B               loc_27AFFC
LDR             R0, =off_6CE970; jumptable 0027AE34 cases 3-5
MOV             R3, #0
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x4C ; 'L'
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_27AFE0
LDR             R1, [SP,#0x230+var_220]
MOV             R2, R9
BL              sub_27E4E8
MOV             R9, R0
LDR             R0, [SP,#0x230+var_208]
CMP             R0, R8
BNE             loc_27B1AC
LDR             R0, [SP,#0x230+var_210]
CMP             R0, #0
BNE             loc_27AF9C
STR             R9, [SP,#0x230+var_210]
ADD             R0, R4, #0x168; jumptable 0027AE34 default case
LDM             R0, {R0,R1}
SUB             R0, R1, R0
SMULL           R2, R0, R11, R0
MOV             R2, R0,ASR#1
SUB             R0, R2, R0,ASR#31
ADD             R0, R0, #1
CMP             R0, #0x1E
BHI             loc_27B05C
CMP             R1, #0
ADD             R0, R4, #0x168
BEQ             loc_27B050
LDR             R3, [SP,#0x230+var_210]
ADD             R2, SP, #0x230+var_20C
STR             R3, [R1],#4
STR             R2, [R1]
LDR             R2, [SP,#0x230+var_208]
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R1, [SP,#0x230+var_208]
LDR             R1, [R0,#4]
ADD             R1, R1, #0xC
STR             R1, [R0,#4]
LDR             R0, [SP,#0x230+var_208]
CMP             R0, R8
BNE             loc_27B080
LDR             R0, [SP,#0x230+var_210]
CMP             R0, #0
BEQ             loc_27B080
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x230+var_20C]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [SP,#0x230+var_94]
ADD             R5, R5, #8
CMP             R0, R5
BNE             loc_27ADE4
LDR             R1, [SP,#0x230+var_94]
LDR             R2, [SP,#0x230+var_98]
LDR             R0, [R7,#0x124]
MOV             R3, #0
SUB             R1, R1, R2
ADD             R0, R0, #0x400
MOV             R1, R1,ASR#3
VMOV            S0, R1
ADD             R4, R7, #0x118
MOV             R2, R3
VCVT.F32.U32    S0, S0
VMLA.F32        S19, S17, S0
VSTR            S19, [R0,#0x2E8]
LDR             R0, [R7,#0x124]
ADD             R1, R0, #0xE0
VLDR            S2, [R0,#0xDC]
LDR             R0, [R0,#0xD8]
VLDM            R1, {S0-S1}
VADD.F32        S2, S19, S2
VADD.F32        S0, S0, S1
VADD.F32        S0, S2, S0
VSTR            S0, [SP,#0x230+var_230]
VSTR            S18, [SP,#0x230+var_22C]
STR             R0, [SP,#0x230+var_228]
LDR             R0, =off_6CE970
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x41C
BL              sub_10A358
CMP             R0, #0
MOVEQ           R5, #0
BEQ             loc_27B128
MOV             R1, SP
BL              sub_27421C
MOV             R5, R0
LDR             R1, [R4,#8]
ADD             R0, R4, #4
CMP             R1, R0
BNE             loc_27B1C8
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_27B19C
LDR             R2, =off_6C075C
MOV             R1, R0
B               loc_27B16C
DCD off_6CDF98
DCD dword_6D1F40
DCFS 0.0
DCD 0x2AAAAAAB
DCD off_6CE970
DCD 0x41C
DCD off_6C075C
STR             R2, [R0,#0x410]!
LDR             R3, [R0,#4]
CMP             R3, #0
BEQ             loc_27B188
MOV             R2, #0
STR             R2, [R3,#0x184]
STR             R2, [R0,#4]
ADD             R0, R1, #4
BL              sub_14F3EC
SUB             R0, R0, #4
NOP
BL              sub_300FD4
STR             R5, [R4]
ADD             SP, SP, #0x1FC
VPOP            {D8-D9}
POP             {R4-R11,PC}
LDR             R1, [SP,#0x230+var_20C]
ADD             R2, R6, #4
STR             R0, [R1,#4]
STR             R1, [R0]
STR             R2, [SP,#0x230+var_20C]
STR             R2, [SP,#0x230+var_208]
B               loc_27AFFC
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_27B19C
