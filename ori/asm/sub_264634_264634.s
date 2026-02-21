PUSH            {R4-R11,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0x14
LDR             R0, [R0,#4]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x368
LDR             R9, [R0]
MOV             R0, R9
BL              sub_5CBD1C
CMP             R0, #0
BNE             loc_264770
LDR             R0, [R4,#0x34]
BL              sub_5CBCBC
MOVS            R1, R0
LDR             R0, =off_6CE970
BEQ             loc_2647A0
CMP             R1, #1
BEQ             loc_2647DC
CMP             R1, #2
BEQ             loc_26480C
CMP             R5, #0
BEQ             loc_264770
MOV             R0, R9
BL              sub_25E73C
MOV             R10, R0
MOV             R0, R9
BL              sub_5CBE24
LDR             R7, [R4,#0x34]
VMOV.F32        S16, S0
MOV             R8, SP
MOV             R6, #0
LDR             R0, [R7,#0x84]
LDR             R5, [R7,#0x80]
CMP             R0, R5
BEQ             loc_2646EC
LDR             R0, [R5]
LDRSB           R0, [R0,#0x19]
CMP             R0, #0
NOP
BEQ             loc_2646EC
LDR             R0, [R7,#0x84]
ADD             R5, R5, #0xC
ADD             R6, R6, #1
CMP             R0, R5
BNE             loc_2646C4
LDR             R0, [R7,#0x80]
ADD             R1, R6, R6,LSL#1
VMOV.F32        S0, S16
LDR             R1, [R0,R1,LSL#2]!
ADD             R0, R0, #4
STR             R1, [SP,#0x40+var_40]
STR             R0, [R8,#4]!
LDR             R1, [R0,#4]
STR             R1, [R8,#4]
STR             R8, [R1]
STR             R8, [R0,#4]
LDR             R0, [SP,#0x40+var_40]
MOV             R1, R10
BL              sub_25BD90
LDR             R1, [SP,#0x40+var_38]
ADD             R0, SP, #0x40+var_3C
CMP             R1, R0
BNE             loc_264750
LDR             R0, [SP,#0x40+var_40]
CMP             R0, #0
BEQ             loc_264750
BL              sub_25E310
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x40+var_3C]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#0x34]
BL              sub_5CBEB4
CMP             R0, #0
LDRNE           R0, [R4,#0x58]
BLNE            sub_268AD8
MOV             R0, R9
BL              sub_5CBE38
CMP             R0, #0
NOP
BEQ             loc_264CE0
MOV             R0, R9
BL              sub_5CBDB0
LDR             R10, =off_6CDE08
CMP             R0, #4
MOV             R11, #7
BNE             loc_2648C8
B               loc_26488C
LDR             R0, [R0]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDR             R0, [R0,#(loc_19B0B4 - 0x19B000)]
CMP             R0, #2
BNE             loc_264770
MOV             R0, R9
BL              sub_5CBE24
LDR             R0, [R4,#4]
LDR             R0, [R0,#8]
VLDR            S1, [R0,#0x304]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_264770
B               loc_264690
LDR             R0, [R0]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDR             R0, [R0,#(loc_19B0B4 - 0x19B000)]
CMP             R0, #1
BNE             loc_264770
LDR             R0, [R4,#0x58]
BL              sub_5CBFF8
CMP             R0, #0
NOP
BNE             loc_264690
B               loc_264770
LDR             R0, [R0]
LDR             R1, [R4,#0x4C]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDR             R0, [R0,#(loc_19B0B4 - 0x19B000)]
CMP             R0, #3
BEQ             loc_264854
LDRB            R2, [R1,#9]
CMP             R2, #1
BNE             loc_264770
LDRB            R1, [R1,#8]
CMP             R1, #0
BEQ             loc_26484C
CMP             R0, #2
BNE             loc_264770
B               loc_264854
CMP             R0, #1
BNE             loc_264770
LDR             R0, [R4,#0x58]
BL              sub_5CBFF8
CMP             R0, #0
NOP
BEQ             loc_264770
MOV             R0, R9
BL              sub_5CBE24
LDR             R0, [R4,#4]
LDR             R0, [R0,#8]
VLDR            S1, [R0,#0x304]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLS             loc_264690
B               loc_264770
MOV             R0, R9
LDRB            R0, [R0,#0xC70]
CMP             R0, #1
NOP
BNE             loc_2648C8
LDR             R0, [R4,#0x34]
BL              sub_5CBCBC
CMP             R0, #0
NOP
BEQ             loc_264A6C
LDR             R0, [R4,#0x34]
BL              sub_5CBCBC
CMP             R0, #2
NOP
BEQ             loc_264A6C
MOV             R0, R9
LDRB            R0, [R0,#0xC70]
CMP             R0, #1
LDR             R0, [R4,#4]
BEQ             loc_264B54
BL              sub_264148
LDR             R0, [R4,#4]
MOV             R1, #0xFFFFFFFF
BL              sub_2641BC
LDR             R7, [R4,#0x34]
ADD             R0, R9, #0x28 ; '('
STR             R0, [SP,#0x40+var_34]
MOV             R8, SP
LDR             R0, [R7,#0x84]
LDR             R5, [R7,#0x80]
MOV             R6, #0
CMP             R0, R5
BEQ             loc_264938
LDR             R0, [R5]
LDRSB           R0, [R0,#0x19]
CMP             R0, #0
NOP
BEQ             loc_264938
LDR             R0, [R7,#0x84]
ADD             R5, R5, #0xC
ADD             R6, R6, #1
CMP             R0, R5
BNE             loc_264910
LDR             R0, [R7,#0x80]
ADD             R1, R6, R6,LSL#1
LDR             R1, [R0,R1,LSL#2]!
ADD             R0, R0, #4
STR             R1, [SP,#0x40+var_40]
STR             R0, [R8,#4]!
LDR             R1, [R0,#4]
STR             R1, [R8,#4]
STR             R8, [R1]
STR             R8, [R0,#4]
LDR             R0, [SP,#0x40+var_40]
LDR             R1, [SP,#0x40+var_34]
BL              sub_25C1B0
LDR             R1, [SP,#0x40+var_38]
ADD             R0, SP, #0x40+var_3C
CMP             R1, R0
BNE             loc_264998
LDR             R0, [SP,#0x40+var_40]
CMP             R0, #0
BEQ             loc_264998
BL              sub_25E310
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x40+var_3C]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#0x34]
BL              sub_5CBEB4
CMP             R0, #0
LDRNE           R0, [R4,#0x58]
BLNE            sub_267D0C
MOV             R0, R9
NOP
BL              sub_5CBD38
LDR             R0, [R4,#0x64]
NOP
BL              sub_5A12C4
LDR             R0, [R4,#0x40]
VLDR            S0, [R0,#4]
LDR             R0, [R4,#4]
LDR             R1, [R0,#8]
VLDR            S1, [R1,#0x3CC]
VDIV.F32        S16, S1, S0
BL              sub_5CBE68
CMP             R0, #0
NOP
BEQ             loc_264C3C
STRB            R11, [R4,#0x70]
LDR             R0, [R4,#0x34]
BL              sub_5CBCBC
MOV             R5, R0
LDR             R0, [R4,#0x34]
BL              sub_5CBC34
LDR             R1, [R10]
VLDR            S0, [R0]
LDR             R0, [R1,#8]
MOV             R1, R5
VLDR            S1, [R0,#0xD4]
LDR             R0, [R4,#4]
VADD.F32        S0, S0, S1
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x368
VMOV.F32        S1, S16
LDR             R0, [R0]
BL              sub_25F718
LDR             R0, [R4,#0x64]
NOP
BL              sub_267438
LDR             R0, [R4,#0x58]
MOV             R1, #1
BL              sub_267C0C
LDR             R0, [R4,#4]
LDR             R0, [R0,#8]
LDR             R0, [R0,#0xDC]
STR             R0, [R4,#0x9C]
B               loc_264CE0
LDR             R0, [R4,#4]
BL              sub_263EB0
LDR             R0, [R4,#4]
NOP
BL              sub_264148
LDR             R0, [R4,#4]
NOP
BL              sub_5CBE84
CMP             R0, #0
NOP
BEQ             loc_264B1C
STRB            R11, [R4,#0x70]
LDR             R0, [R4,#0x64]
BL              sub_267438
LDR             R0, [R4,#0x58]
MOV             R1, #0
BL              sub_267C0C
LDR             R0, [R4,#0x40]
VLDR            S0, [R0,#4]
LDR             R0, [R4,#4]
LDR             R0, [R0,#8]
VLDR            S1, [R0,#0x3CC]
LDR             R0, [R4,#0x34]
VDIV.F32        S16, S1, S0
BL              sub_5CBCBC
MOV             R5, R0
LDR             R0, [R4,#0x34]
BL              sub_5CBC34
LDR             R1, [R10]
VLDR            S0, [R0]
LDR             R0, [R4,#4]
LDR             R1, [R1,#8]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x368
VLDR            S1, [R1,#0xD4]
LDR             R0, [R0]
MOV             R1, R5
VADD.F32        S0, S0, S1
VMOV.F32        S1, S16
BL              sub_25F718
LDR             R0, [R4,#4]
LDR             R0, [R0,#8]
LDR             R0, [R0,#0xDC]
STR             R0, [R4,#0x9C]
LDR             R0, [R4,#0x34]
BL              sub_5CBEB4
CMP             R0, #0
LDRNE           R0, [R4,#0x58]
BLNE            sub_267C1C
LDR             R0, [R4,#0x34]
NOP
BL              sub_264F3C
MOV             R0, R4
NOP
BL              sub_264D9C
NOP
NOP
B               loc_264CE0
NOP
BL              sub_263EB0
LDR             R0, [R4,#4]
NOP
BL              sub_5CBE84
CMP             R0, #0
NOP
BEQ             loc_264BF8
STRB            R11, [R4,#0x70]
LDR             R0, [R4,#0x64]
BL              sub_267438
LDR             R0, [R4,#0x58]
MOV             R1, #0
BL              sub_267C0C
LDR             R0, [R4,#0x40]
VLDR            S0, [R0,#4]
LDR             R0, [R4,#4]
LDR             R0, [R0,#8]
VLDR            S1, [R0,#0x3CC]
LDR             R0, [R4,#0x34]
VDIV.F32        S16, S1, S0
BL              sub_5CBCBC
MOV             R5, R0
LDR             R0, [R4,#0x34]
BL              sub_5CBC34
LDR             R1, [R10]
VLDR            S0, [R0]
LDR             R0, [R4,#4]
LDR             R1, [R1,#8]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x368
VLDR            S1, [R1,#0xD4]
LDR             R0, [R0]
MOV             R1, R5
VADD.F32        S0, S0, S1
VMOV.F32        S1, S16
BL              sub_25F718
LDR             R0, [R4,#4]
LDR             R0, [R0,#8]
LDR             R0, [R0,#0xDC]
STR             R0, [R4,#0x9C]
LDR             R0, [R4,#0x34]
BL              sub_264F3C
LDR             R0, [R4,#0x34]
NOP
BL              sub_5CBEB4
CMP             R0, #0
LDRNE           R0, [R4,#0x58]
BLNE            sub_267C1C
MOV             R0, R9
NOP
BL              sub_5CBD38
LDR             R0, [R4,#0x64]
NOP
BL              sub_267444
NOP
NOP
B               loc_2649D0
LDR             R0, [R4,#4]
BL              sub_5CBE84
CMP             R0, #0
NOP
BNE             loc_264CE0
LDR             R0, [R4,#0x34]
BL              sub_264FF8
LDR             R7, [R4,#0x34]
MOV             R6, #0
LDR             R0, [R7,#0x84]
LDR             R5, [R7,#0x80]
CMP             R0, R5
BEQ             loc_264C98
LDR             R0, [R5]
LDRSB           R0, [R0,#0x19]
CMP             R0, #0
NOP
BEQ             loc_264C98
LDR             R0, [R7,#0x84]
ADD             R5, R5, #0xC
ADD             R6, R6, #1
CMP             R0, R5
BNE             loc_264C70
LDR             R0, [R7,#0x80]
ADD             R1, R6, R6,LSL#1
LDR             R0, [R0,R1,LSL#2]
BL              sub_25C198
LDR             R0, [R4,#0x34]
NOP
BL              sub_5CBCBC
MOV             R5, R0
LDR             R0, [R4,#0x34]
BL              sub_5CBC34
VLDR            S0, [R0]
LDR             R0, [R4,#4]
VMOV.F32        S1, S16
MOV             R1, R5
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x368
LDR             R0, [R0]
BL              sub_25F718
LDRB            R0, [R4,#0x70]
CMP             R0, #7
BEQ             loc_264D88
LDR             R0, [R4,#0x34]
BL              sub_5CBEB4
CMP             R0, #0
NOP
BEQ             loc_264D88
LDR             R0, [R4,#0x58]
BL              sub_5CBFE0
CMP             R0, #0
NOP
BEQ             loc_264D88
LDR             R0, [R4,#0x34]
BL              sub_5CBC34
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [SP,#0x40+var_38]
STMEA           SP, {R1,R2}
LDR             R0, [R4,#0x34]
BL              sub_5CBCBC
CMP             R0, #2
NOP
BNE             loc_264D7C
LDR             R0, [R4,#4]
VLDR            S0, [SP,#0x40+var_40]
LDR             R0, [R0,#8]
ADD             R0, R0, #0x2EC
VLDR            S1, [R0]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x40+var_40]
VLDR            S1, [R0,#4]
VLDR            S0, [SP,#0x40+var_3C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x40+var_3C]
VLDR            S1, [R0,#8]
VLDR            S0, [SP,#0x40+var_38]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x40+var_38]
LDR             R0, [R4,#0x58]
MOV             R1, SP
BL              sub_2680B4
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R11,PC}
