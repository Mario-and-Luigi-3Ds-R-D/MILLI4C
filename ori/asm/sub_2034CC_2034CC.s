PUSH            {R4-R11,LR}
CMP             R2, #0
MOV             R7, #0
MOVGE           R7, #1
MOV             R4, R0
MOV             R8, R1
VPUSH           {D8}
SUB             SP, SP, #0x44
STRHGE          R2, [SP,#0x70+var_5C]
CMP             R3, #0
BLT             loc_20350C
ADD             R2, SP, #0x70+var_5C
ADD             R0, R7, #1
ADD             R2, R2, R7,LSL#1
UXTH            R7, R0
STRH            R3, [R2]
MOV             R0, #0
MOV             R1, R8
MOV             R2, R0,LSL#16
ORR             R0, R0, R0
ORR             R3, R0, R2
LDRH            R2, [R4]
LDRH            R0, [R4,#2]
AND             R3, R3, #0x10000
ORR             R3, R3, R2
VLDR            S17, =0.0
UXTH            R3, R3
ORR             R6, R3, R0,LSL#16
MUL             R0, R2, R0
MOV             R3, #0
MOV             R2, R3
MOV             R0, R0,LSL#2
BL              sub_1143B4
MOV             R5, R0
UXTH            R0, R6
MOV             R1, R6,LSR#16
MUL             R0, R0, R1
ADD             R0, R5, R0,LSL#2
SUB             R0, R0, R5
MOV             R1, R0,ASR#2
CMP             R1, #0
BLE             loc_2035A8
MOV             R2, R0,LSL#29
CMP             R2, #0
SUB             R1, R5, #4
ADDLT           R1, R1, #4
VSTRLT          S17, [R1]
MOVS            R0, R0,ASR#3
VMOVNE.F32      S16, S17
BEQ             loc_2035A8
SUBS            R0, R0, #1
VSTR            S16, [R1,#4]
ADD             R1, R1, #8
VSTR            S17, [R1]
BNE             loc_203594
UXTH            R0, R6
MOV             R1, R6,LSR#16
MUL             R0, R0, R1
LDR             R1, [R4,#4]
MOV             R2, R0,LSL#2
MOV             R0, R5
BL              sub_1103A4
CMP             R7, #1
NOP
BEQ             loc_2035DC
CMP             R7, #2
BNE             loc_203AE4
B               loc_203900
LDRH            R0, [R4]
MOV             R3, #0
MOV             R2, R3
MOV             R1, R8
MOV             R0, R0,LSL#3
BL              sub_1143B4
LDRH            R3, [R4]
LDRH            R2, [SP,#0x70+var_5C]
MOV             R7, R0
CMP             R3, #0
MOV             R0, #0
BLS             loc_203638
LDRH            R1, [R4,#2]
LDR             R12, [R4,#4]
MLA             R1, R0, R1, R2
LDR             R8, [R12,R1,LSL#2]
ADD             R1, R7, R0,LSL#3
ADD             R12, R0, #1
STR             R8, [R1]
STRH            R0, [R1,#4]
UXTH            R0, R12
CMP             R3, R0
BHI             loc_20360C
LDRH            R0, [R4]
ADD             R8, R7, R0,LSL#3
CMP             R7, R8
BEQ             loc_203890
SUB             R9, R8, R7
MOV             R0, R7
MOV             R2, R9,ASR#3
MOV             R1, R8
BL              sub_637DD0
MOV             R0, #0x10
CMP             R0, R9,ASR#3
MOV             R11, R7
MOV             LR, R8
BGE             loc_2037AC
ADD             R10, R7, #0x80
ADD             R9, R7, #8
CMP             R9, R10
MOV             R8, R7
BEQ             loc_203748
VLDM            R9, {S0-S1}
MOV             R0, R9
VLDR            S2, [R8]
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
MOVCS           R1, R9
BCS             loc_203720
SUB             R1, R0, R8
ADD             R2, R0, #8
MOV             R3, R1,ASR#3
CMP             R3, #0
BLE             loc_203700
MOVS            R3, R1,LSL#28
BPL             loc_2036CC
SUB             R0, R9, #8
SUB             R2, R2, #8
LDM             R0, {R3,R12}
STM             R2, {R3,R12}
MOVS            R3, R1,ASR#4
BEQ             loc_203700
SUB             R1, R0, #8
MOV             R12, R2
VLDM            R1, {S2-S3}
SUB             R12, R12, #8
SUB             R0, R0, #0x10
SUB             R2, R2, #0x10
VSTM            R12, {S2-S3}
SUBS            R3, R3, #1
VLDM            R0, {S2-S3}
VSTM            R2, {S2-S3}
BNE             loc_2036D4
VSTR            S0, [R11]
VSTR            S1, [R8,#4]
B               loc_20373C
LDR             R3, [R0,#4]
MOV             R2, R1
MOV             R1, R0
VSTR            S3, [R2]
STR             R3, [R2,#4]
VMOV.F32        S2, S0
VLDR            S3, [R1,#-8]
SUB             R0, R1, #8
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
BCC             loc_20370C
VSTM            R1, {S0-S1}
ADD             R9, R9, #8
CMP             R9, R10
BNE             loc_203684
ADD             R2, R8, #0x80
CMP             R2, LR
BEQ             loc_203890
VLDR            S2, [R2]
LDR             R12, [R2,#4]
MOV             R0, R2
VMOV.F32        S0, S2
MOV             R1, R2
B               loc_203780
LDR             R9, [R1,#4]
MOV             R3, R0
MOV             R0, R1
VSTR            S1, [R3]
STR             R9, [R3,#4]
SUB             R1, R1, #8
VLDR            S1, [R1]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_20376C
VSTR            S2, [R0]
ADD             R2, R2, #8
CMP             R2, LR
STR             R12, [R0,#4]
BNE             loc_203754
B               loc_203890
ADD             R12, R11, #8
CMP             R12, LR
BEQ             loc_203890
VLDR            S0, [R11]
VLDR            S3, [R12]
VLDR            S1, [R12,#4]
MOV             R0, R12
VCMPE.F32       S3, S0
VMRS            APSR_nzcv, FPSCR
VMOVCS.F32      S0, S3
MOVCS           R1, R12
BCS             loc_203868
SUB             R2, R0, R11
ADD             R1, R0, #8
MOV             R3, R2,ASR#3
CMP             R3, #0
BLE             loc_203844
MOVS            R3, R2,LSL#28
BPL             loc_203808
SUB             R0, R12, #8
SUB             R1, R1, #8
LDM             R0, {R3,R8}
STM             R1, {R3,R8}
MOVS            R2, R2,ASR#4
BEQ             loc_203844
VLDR            S0, [R0,#-8]
VLDR            S2, [R0,#-4]
MOV             R3, R1
SUB             R0, R0, #0x10
VSTR            S0, [R3,#-8]
VSTR            S2, [R3,#-4]
SUB             R1, R1, #0x10
VLDR            S0, [R0]
VLDR            S2, [R0,#4]
VSTR            S0, [R1]
SUBS            R2, R2, #1
VSTR            S2, [R1,#4]
BNE             loc_203810
VSTR            S3, [R11]
VSTR            S1, [R11,#4]
B               loc_203884
DCFS 0.0
LDR             R8, [R1,#4]
MOV             R2, R0
MOV             R0, R1
VSTR            S2, [R2]
STR             R8, [R2,#4]
SUB             R1, R1, #8
VLDR            S2, [R1]
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
BCC             loc_203854
VSTR            S3, [R0]
VSTR            S1, [R0,#4]
ADD             R12, R12, #8
CMP             R12, LR
BNE             loc_2037B8
LDRH            R8, [R4]
MOV             R1, #0
CMP             R8, #0
BLS             loc_2038F4
ADD             R0, R7, R1,LSL#3
LDRH            R3, [R4,#2]
LDRH            R2, [R0,#4]
MOV             R0, #0
CMP             R3, #0
BLS             loc_2038E4
MOV             R12, R6,LSR#16
LDR             R10, [R4,#4]
MLA             R12, R2, R12, R0
LDR             R9, [R5,R12,LSL#2]
LDRH            R12, [R4,#2]
MLA             R12, R1, R12, R0
ADD             R0, R0, #1
UXTH            R0, R0
CMP             R3, R0
STR             R9, [R10,R12,LSL#2]
BHI             loc_2038B8
ADD             R0, R1, #1
UXTH            R1, R0
CMP             R1, R8
BCC             loc_2038A0
CMP             R7, #0
BEQ             loc_203AE4
B               loc_203ADC
LDRH            R0, [R4]
MOV             R3, #0
MOV             R2, R3
MOV             R1, R8
ADD             R0, R0, R0,LSL#1
MOV             R0, R0,LSL#2
BL              sub_1143B4
LDRH            R3, [R4]
LDRH            R1, [SP,#0x70+var_5C]
LDRH            R2, [SP,#0x70+var_5A]
MOV             R7, R0
CMP             R3, #0
MOV             R0, #0
BLS             loc_20397C
LDRH            R8, [R4,#2]
LDR             R12, [R4,#4]
MLA             R8, R0, R8, R1
LDR             R8, [R12,R8,LSL#2]
ADD             R12, R0, R0,LSL#1
ADD             R12, R7, R12,LSL#2
STR             R8, [R12]
LDRH            R8, [R4,#2]
LDR             R9, [R4,#4]
MLA             R8, R0, R8, R2
LDR             R8, [R9,R8,LSL#2]
ADD             R9, R0, #1
STR             R8, [R12,#4]
STRH            R0, [R12,#8]
UXTH            R0, R9
CMP             R3, R0
BHI             loc_203938
LDRH            R0, [R4]
ADD             R0, R0, R0,LSL#1
ADD             R8, R7, R0,LSL#2
CMP             R7, R8
BEQ             loc_203A6C
LDR             R1, =0x2AAAAAAB
SUB             R9, R8, R7
SMULL           R1, R0, R1, R9
MOV             R1, R0,ASR#1
SUB             R2, R1, R0,ASR#31
MOV             R1, R8
MOV             R0, R7
BL              sub_638204
CMP             R9, #0xCB
MOV             R9, R7
BLE             loc_203A60
ADD             R1, R9, #0xC0
MOV             R0, R7
BL              sub_635350
ADD             R3, R9, #0xC0
CMP             R3, R8
BEQ             loc_203A6C
VLDR            S3, [R3]
MOV             R0, R3
VLDR            S1, [R3,#4]
VMOV.F32        S0, S3
VLDR            S6, [R3,#8]
MOV             R1, R3
B               loc_203A0C
ADD             R9, R1, #4
MOV             R2, R0
VLDM            R9, {S4-S5}
MOV             R0, R1
VLDR            S2, [R1]
VSTM            R2!, {S2}
VSTM            R2, {S4-S5}
SUB             R1, R1, #0xC
VLDR            S2, [R1]
VCMP.F32        S0, S2
VMRS            APSR_nzcv, FPSCR
BNE             loc_203A38
VMOV.F32        S2, S1
VLDR            S4, [R1,#4]
VCMPE.F32       S2, S4
VMRS            APSR_nzcv, FPSCR
BCC             loc_2039F0
B               loc_203A44
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_2039F0
VSTR            S3, [R0]
VSTR            S1, [R0,#4]
ADD             R3, R3, #0xC
CMP             R3, R8
VSTR            S6, [R0,#8]
BNE             loc_2039D4
B               loc_203A6C
MOV             R1, R8
MOV             R0, R7
BL              sub_635350
LDRH            R8, [R4]
MOV             R1, #0
CMP             R8, #0
BLS             loc_203AD4
ADD             R2, R1, R1,LSL#1
LDRH            R3, [R4,#2]
ADD             R0, R7, R2,LSL#2
LDRH            R2, [R0,#8]
CMP             R3, #0
MOV             R0, #0
BLS             loc_203AC4
MOV             R12, R6,LSR#16
LDR             R10, [R4,#4]
MLA             R12, R2, R12, R0
LDR             R9, [R5,R12,LSL#2]
LDRH            R12, [R4,#2]
MLA             R12, R1, R12, R0
ADD             R0, R0, #1
UXTH            R0, R0
CMP             R3, R0
STR             R9, [R10,R12,LSL#2]
BHI             loc_203A98
ADD             R0, R1, #1
UXTH            R1, R0
CMP             R1, R8
BCC             loc_203A7C
CMP             R7, #0
BEQ             loc_203AE4
MOV             R0, R7
BL              sub_2FF5D4
CMP             R5, #0
MOVNE           R0, R5
BLNE            sub_2FF5D4
ADD             SP, SP, #0x44 ; 'D'
VPOP            {D8}
POP             {R4-R11,PC}
