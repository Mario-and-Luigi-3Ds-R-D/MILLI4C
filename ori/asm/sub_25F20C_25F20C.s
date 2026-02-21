PUSH            {R4-R11,LR}
MOV             R6, R0
ADD             R0, R0, #0x3FC
VPUSH           {D8}
VMOV.F32        S16, S0
SUB             SP, SP, #4
BL              sub_5A176C
VMOV.F32        S0, S16
ADD             R0, R6, #0xC30
BL              sub_5A176C
LDRB            R0, [R6,#0x3F8]
LDR             R10, =0x19DEE8
LDR             R8, =off_6CE970
LDR             R7, =0x3018A
LDR             R11, =0xFFE683CC
VLDR            S17, =0.0039062
CMP             R0, #8; switch 8 cases
MOV             R5, #3
MOV             R9, #0
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_25F258; jumptable 0025F258 default case, cases 0,3
DCD def_25F258; jump table for switch statement
VMOV.F32        S0, S16; jumptable 0025F258 case 1
MOV             R0, R6
BL              sub_25E8B4
NOP
NOP
B               def_25F258; jumptable 0025F258 default case, cases 0,3
LDR             R0, [R6,#0xC74]; jumptable 0025F258 case 2
ADD             R4, R6, #0xC00
CMP             R0, #0
BNE             loc_25F2CC
LDR             R0, [R6,#0xC6C]
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_25F258; jumptable 0025F258 default case, cases 0,3
MOV             R1, #2
MOV             R2, #1
STRB            R1, [R6,#0xC70]
STR             R2, [R6,#0xC74]
MOV             R0, R6
BL              sub_25EA80
LDR             R0, [R6,#0xC6C]
LDR             R0, [R0]
STR             R0, [R4,#0x68]
STRB            R5, [R6,#0x3F8]
B               def_25F258; jumptable 0025F258 default case, cases 0,3
LDR             R0, [R6,#0xC78]; jumptable 0025F258 case 4
LDR             R0, [R0]
STR             R0, [SP,#0x30+var_30]
ADD             R0, R6, #0x1E0
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_25F258; jumptable 0025F258 default case, cases 0,3
LDR             R0, [SP,#0x30+var_30]
BL              sub_5CBE5C
VLDR            S16, =0.0
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_25F35C
LDR             R0, [R6,#0xC74]
CMP             R0, #0
BNE             loc_25F35C
LDR             R4, [R6,#0xC6C]
LDR             R0, [SP,#0x30+var_30]
BL              sub_5CBE5C
VSTR            S16, [R4]
VSTR            S0, [R4,#4]
MOV             R1, #5
B               loc_25F3F8
LDR             R0, [R6,#0xC6C]; jumptable 0025F258 case 5
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_25F258; jumptable 0025F258 default case, cases 0,3
STRB            R5, [R6,#0x3F8]
B               def_25F258; jumptable 0025F258 default case, cases 0,3
VMOV.F32        S0, S16; jumptable 0025F258 case 6
MOV             R0, R6
BL              sub_25EE8C
NOP
NOP
B               def_25F258; jumptable 0025F258 default case, cases 0,3
ADD             R0, R6, #0x1E0; jumptable 0025F258 case 7
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_25F258; jumptable 0025F258 default case, cases 0,3
LDR             R0, [R8]
LDR             R4, [R6,#0xC78]
ADD             R1, R6, #4
ADD             R2, R0, R10; loc_19DEE8
VLDR            S1, [R2]
VLDR            S0, [R4,#8]
VCVT.F32.S32    S1, S1
VMUL.F32        S16, S1, S17
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_25F3D0
MOV             R3, #0
MOV             R2, R7
SUB             R0, R0, R11
BL              sub_503720
VSTR            S16, [R4,#8]
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_25F3E4
BL              sub_533330
STR             R9, [R6]
LDR             R0, [R6,#0x10]
CMP             R0, #0
ADDNE           R0, R6, #4
BLNE            sub_528B1C
MOV             R1, #8
STRB            R1, [R6,#0x3F8]
LDR             R0, [R6,#0xE64]; jumptable 0025F258 default case, cases 0,3
LDR             R4, [R6,#0xE60]
CMP             R0, R4
BEQ             loc_25F4EC
LDR             R5, [R4]
LDR             R0, [R5]
CMP             R0, #0
BNE             loc_25F4DC
ADD             R0, R5, #0x1E4
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_25F4DC
LDR             R0, [R8]
LDR             R1, =0x2EB
MOV             R3, #1
ADD             R2, R5, #0x2C ; ','
STR             R9, [SP,#0x30+var_30]
BL              sub_52AEA8
LDRB            R0, [R5,#0x400]
LDR             R7, [R5,#0x3FC]
ADD             R1, R5, #8
CMP             R0, #0
LDR             R0, [R8]
BEQ             loc_25F49C
ADD             R2, R0, R10; loc_19DEE8
VLDR            S1, [R7,#4]
VLDR            S0, [R2]
VCVT.F32.S32    S0, S0
VMUL.F32        S16, S0, S17
VCMP.F32        S1, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_25F4D0
LDR             R2, =0x30189
MOV             R3, #0
SUB             R0, R0, R11
BL              sub_503720
VSTR            S16, [R7,#4]
NOP
B               loc_25F4D0
ADD             R2, R0, R10; loc_19DEE8
VLDR            S1, [R7,#8]
VLDR            S0, [R2]
VCVT.F32.S32    S0, S0
VMUL.F32        S16, S0, S17
VCMP.F32        S1, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_25F4D0
LDR             R2, =0x3018A
MOV             R3, #0
SUB             R0, R0, R11
BL              sub_503720
VSTR            S16, [R7,#8]
LDR             R0, [R5]
ADD             R0, R0, #1
STR             R0, [R5]
LDR             R0, [R6,#0xE64]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_25F40C
ADD             R0, R6, #0xE60
LDM             R0, {R0,R5}
CMP             R0, R5
BEQ             loc_25F510
LDR             R1, [R0]
LDR             R1, [R1]
CMP             R1, #1
ADDNE           R0, R0, #0xC
BNE             loc_25F4F4
CMP             R0, R5
BEQ             loc_25F5D4
ADD             R4, R0, #0xC
CMP             R4, R5
MOV             R7, R0
BEQ             loc_25F5D0
LDR             R0, [R4]
LDR             R1, [R0]
CMP             R1, #1
BEQ             loc_25F5C4
LDR             R8, [R7]
CMP             R8, R0
BEQ             loc_25F5C0
LDR             R0, [R7,#8]
ADD             R2, R7, #4
CMP             R0, R2
BNE             loc_25F69C
CMP             R8, #0
BEQ             loc_25F584
LDR             R0, [R8,#4]
CMP             R0, #0
BEQ             loc_25F570
BL              sub_533330
STR             R9, [R8,#4]
ADD             R0, R8, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDR             R3, [R4]
ADD             R1, R4, #4
ADD             R0, R7, #4
CMP             R1, R0
STR             R3, [R7]
LDRNE           R2, [R1,#4]
CMPNE           R2, R0
BEQ             loc_25F5C0
LDM             R0, {R3,R12}
STR             R12, [R3,#4]
STR             R3, [R12]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [R1,#4]
STR             R1, [R0]
ADD             R7, R7, #0xC
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_25F528
MOV             R0, R7
NOP
B               loc_25F5FC
DCD 0x19DEE8
DCFS 0.0039062
DCD off_6CE970
DCD 0x3018A
DCD 0xFFE683CC
DCFS 0.0
DCD 0x2EB
DCD 0x30189
LDR             R5, [R6,#0xE64]
CMP             R0, R5
BEQ             loc_25F690
LDR             R1, =0x2AAAAAAB
SUB             R0, R5, R0
SMULL           R1, R0, R1, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R7, R5, R0,LSL#2
CMP             R7, R5
BEQ             loc_25F68C
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_25F678
LDR             R8, [R4]
CMP             R8, #0
BEQ             loc_25F678
LDR             R0, [R8,#4]
CMP             R0, #0
BEQ             loc_25F664
BL              sub_533330
STR             R9, [R8,#4]
ADD             R0, R8, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_25F62C
STR             R7, [R6,#0xE64]
ADD             SP, SP, #4
VPOP            {D8}
POP             {R4-R11,PC}
LDR             R2, [R7,#4]
ADD             R1, R7, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R7,#4]
STR             R1, [R7,#8]
B               loc_25F584
