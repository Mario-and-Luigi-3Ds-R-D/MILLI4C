B               loc_181E1C
PUSH            {R4-R6,LR}
ADD             R2, R3, #8
LDR             R12, [R0,#4]
VLDR            S3, =1.0
VLDR            S2, =0.0
ADD             R12, R12, #0x13800
ADD             R12, R12, #0x2D4
VLDR            S0, [R12]
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S0, S3
BGE             loc_181BB0
VMOV.F32        S1, S2
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S0, S2
VLDR            S4, =0.5
VLDR            S5, =255.0
VMOV.F32        S1, S4
VMLA.F32        S1, S0, S5
VCVT.U32.F32    S0, S1
VLDR            S1, [R12,#4]
VMOV            R1, S0
VMOV.F32        S0, S3
AND             R1, R1, #0xFF
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGE             loc_181BF4
VMOV.F32        S0, S2
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S0, S2
VMOVHI.F32      S0, S1
VMOV.F32        S1, S4
VMLA.F32        S1, S0, S5
VCVT.U32.F32    S0, S1
VLDR            S1, [R12,#8]
VCMPE.F32       S1, S3
VMOV            R3, S0
VMOV.F32        S0, S2
AND             R3, R3, #0xFF
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S0, S3
BGE             loc_181C2C
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVHI.F32      S0, S1
VMOV.F32        S1, S4
VMLA.F32        S1, S0, S5
VCVT.U32.F32    S0, S1
VLDR            S1, [R12,#0xC]
VCMPE.F32       S1, S3
VMOV            LR, S0
VMOV.F32        S0, S2
AND             LR, LR, #0xFF
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S0, S3
BGE             loc_181C64
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVHI.F32      S0, S1
VMOV.F32        S1, S4
VMLA.F32        S1, S0, S5
VCVT.U32.F32    S0, S1
VMOV            R4, S0
VLDR            S0, =0.0039216
MOV             R4, R4,LSL#24
ORR             LR, R4, LR,LSL#16
ORR             R3, LR, R3,LSL#8
ORR             R1, R1, R3
LDR             R3, [R2]
LDR             LR, [R2,#4]
CMN             R3, #1
MOVEQ           R3, R1,LSR#24
MOVNE           R3, R3,LSL#24
CMN             LR, #1
MOVEQ           LR, R1,LSL#8
MOVNE           R4, LR,LSL#16
MOVEQ           R4, LR,LSR#24
LDR             LR, [R2,#8]
ORR             R4, R4, R3
CMN             LR, #1
MOVEQ           R3, R1,LSL#16
MOVNE           LR, LR,LSL#8
MOVEQ           LR, R3,LSR#24
LDR             R3, [R2,#0xC]
ORR             LR, LR, R4
LDR             R4, [R2,#0x10]
CMN             R3, #1
ANDEQ           R3, R1, #0xFF
CMN             R4, #1
ORR             R3, R3, LR
MOVNE           LR, R4,LSL#24
LDR             R4, [R2,#0x14]
MOVEQ           LR, R1,LSR#24
REV             R3, R3
CMN             R4, #1
MOVEQ           R4, R1,LSL#8
MOVNE           R5, R4,LSL#16
MOVEQ           R5, R4,LSR#24
LDR             R4, [R2,#0x18]
ORR             R5, R5, LR
CMN             R4, #1
MOVEQ           LR, R1,LSL#16
MOVNE           R4, R4,LSL#8
MOVEQ           R4, LR,LSR#24
LDR             LR, [R2,#0x1C]
ORR             R4, R4, R5
MOV             R5, R3,LSL#16
CMN             LR, #1
ANDEQ           LR, R1, #0xFF
ORR             R1, LR, R4
MOV             LR, R3,LSL#8
AND             R4, R3, #0xFF
MOV             R5, R5,LSR#24
VMOV            S2, R4
MOV             LR, LR,LSR#24
VMOV            S1, R5
MOV             R3, R3,LSR#24
VMOV            S5, LR
VMOV            S6, R3
VCVT.F32.S32    S2, S2
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S5, S5
VCVT.F32.S32    S6, S6
VMUL.F32        S2, S2, S0
VMUL.F32        S1, S1, S0
VMUL.F32        S5, S5, S0
VMUL.F32        S0, S6, S0
VSTR            S2, [R12]
VSTR            S1, [R12,#4]
VSTR            S5, [R12,#8]
VSTR            S0, [R12,#0xC]
LDR             R2, [R2,#0x20]
TST             R2, #1
BIC             R3, R2, #1
VMOV            S0, R3
LDR             R0, [R0,#4]
ADD             R0, R0, #0x2C4
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S4
VADDNE.F32      S0, S0, S3
VCVT.U32.F32    S0, S0
VMOV            R2, S0
UXTH            R2, R2
BL              sub_5996A0
MOV             R0, #0
POP             {R4-R6,PC}
DCFS 1.0
DCFS 0.0
DCFS 255.0
DCFS 0.5
DCFS 0.0039216
LDR             R0, [R2,#0x70]
MOV             R12, #1
MOV             R1, R0,LSL#22
CMP             R12, R1,LSR#29
MOVNE           R12, #2
CMPNE           R12, R1,LSR#29
BNE             loc_181E10
LDR             R1, [R3,#8]
MOV             R0, R0,LSL#5
CMP             R1, R0,LSR#24
BNE             loc_181E10
LDR             R0, [R3,#0xC]
LDR             R1, [R2]
ADD             R0, R0, R1
STR             R0, [R2]
MOV             R0, #0
BX              LR
NOP
PUSH            {R4-R8,LR}
MOV             R6, R1
MOV             R1, R2
MOV             R12, R0
MOV             R2, R3
LDRH            R0, [R3],#8
MOV             R5, #0
LDR             R7, [R3]
SUB             R8, R0, #0x4F ; 'O'
CMP             R8, #5; switch 5 cases
SUB             SP, SP, #0x10
ADD             R0, R7, R7,LSL#3
ADD             R0, R0, R7,LSL#4
MOV             R4, R5
ADD             R0, R12, R0,LSL#3
ADD             R0, R0, #0x138
LDRCC           PC, [PC,R8,LSL#2]; switch jump
B               def_181E5C; jumptable 00181E5C default case
DCD loc_181E78; jump table for switch statement
LDR             R2, [R0,#0x70]; jumptable 00181E5C case 0
TST             R2, #1
BEQ             def_181E5C; jumptable 00181E5C default case
ADD             R3, R3, #4
LDR             R6, [R1]
LDM             R3, {R3,R8}
CMP             R3, #0
TSTNE           R2, #2
ADD             R6, R6, R8
BEQ             loc_181ECC
STR             R0, [SP,#0x28+var_28]
LDR             R0, [R1,#0x70]
LDR             R2, [R12]
MOV             R3, R1
MOV             R1, R6
MOV             R0, R0,LSL#4
LDR             R5, [R2,#0x5C]
MOV             R2, R0,LSR#31
MOV             R0, R12
BLX             R5
B               def_181E5C; jumptable 00181E5C default case
STR             R0, [SP,#0x28+var_20]
STR             R1, [SP,#0x28+var_24]
STR             R5, [SP,#0x28+var_28]
LDR             R0, [R1,#0x70]
LDR             R2, [R12]
AND             R3, R7, #0xFF
MOV             R1, R6
MOV             R0, R0,LSL#4
LDR             R5, [R2,#0x58]
MOV             R2, R0,LSR#31
MOV             R0, R12
BLX             R5
B               def_181E5C; jumptable 00181E5C default case
LDR             R0, [R0,#0x70]; jumptable 00181E5C case 1
TST             R0, #2
BEQ             def_181E5C; jumptable 00181E5C default case
MOV             R0, R6
BL              sub_29D1B0
MOV             R4, #3
NOP
B               def_181E5C; jumptable 00181E5C default case
LDR             R1, [R0,#0x70]; jumptable 00181E5C case 2
STR             R5, [R0,#0x7C]
BIC             R1, R1, #2
B               loc_181F38
LDR             R1, [R0,#0x70]; jumptable 00181E5C case 3
ORR             R1, R1, #4
STR             R1, [R0,#0x70]
B               def_181E5C; jumptable 00181E5C default case
LDR             R1, [R0,#0x70]; jumptable 00181E5C case 4
BIC             R1, R1, #4
STR             R1, [R0,#0x70]
ADD             SP, SP, #0x10; jumptable 00181E5C default case
MOV             R0, R4
POP             {R4-R8,PC}
