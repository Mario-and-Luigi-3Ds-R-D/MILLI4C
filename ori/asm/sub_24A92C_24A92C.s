PUSH            {R4-R10,LR}
MOV             R6, R0
LDR             R10, =off_6CE098
VPUSH           {D8}
VMOV.F32        S16, S0
LDRB            R1, [R0]
LDR             R0, [R10]
SUB             SP, SP, #0x10
CMP             R1, #0
BEQ             loc_24AA70
CMP             R1, #1
BNE             loc_24AA64
LDR             R2, [R0,#0x68]!
ADD             R0, R0, #4
STR             R0, [SP,#0x38+var_34]
STR             R2, [SP,#0x38+var_38]
LDR             R2, [R0,#4]
ADD             R1, SP, #0x38+var_34
STR             R2, [SP,#0x38+var_30]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x38+var_38]
VLDR            S1, [R6,#0x90]
LDR             R1, [SP,#0x38+var_30]
LDR             R0, [R0,#0xA74]
VLDR            S0, [R0,#0x2C]
LDR             R0, [R10]
LDR             R0, [R0,#0x8C]
VLDR            S2, [R0,#0x37C]
ADD             R0, SP, #0x38+var_34
VADD.F32        S1, S1, S2
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVLS           R4, #1
MOVHI           R4, #0
CMP             R1, R0
BNE             loc_24A9D4
LDR             R0, [SP,#0x38+var_38]
CMP             R0, #0
BEQ             loc_24A9D4
BL              sub_25AEE4
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x38+var_34]
CMP             R4, #0
STR             R1, [R0,#4]
STR             R0, [R1]
BEQ             loc_24AB08
LDR             R5, [R6,#0x80]
LDR             R7, [R6,#0x7C]
CMP             R7, R5
BEQ             loc_24AA54
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_24AA40
LDR             R9, [R4]
CMP             R9, #0
BEQ             loc_24AA40
LDR             R8, [R10]
ADD             R0, R9, #4
BL              sub_14F3EC
LDR             R0, [R8,#0x24]
STR             R0, [R9]
STR             R9, [R8,#0x24]
LDR             R0, [R8,#0x28]
ADD             R0, R0, #1
STR             R0, [R8,#0x28]
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_24A9F8
LDR             R0, [R6,#0x7C]
STR             R0, [R6,#0x80]
MOV             R0, #2
STRB            R0, [R6]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R10,PC}
LDR             R2, [R0,#0x68]!
ADD             R0, R0, #4
STR             R0, [SP,#0x38+var_34]
STR             R2, [SP,#0x38+var_38]
LDR             R2, [R0,#4]
ADD             R1, SP, #0x38+var_34
STR             R2, [SP,#0x38+var_30]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x38+var_38]
LDR             R1, [SP,#0x38+var_30]
LDR             R0, [R0,#0xA74]
VLDR            S16, [R0,#0x2C]
ADD             R0, SP, #0x38+var_34
CMP             R1, R0
BNE             loc_24AACC
LDR             R0, [SP,#0x38+var_38]
CMP             R0, #0
BEQ             loc_24AACC
BL              sub_25AEE4
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x38+var_34]
STR             R1, [R0,#4]
STR             R0, [R1]
VLDR            S0, [R6,#0x90]
LDR             R0, [R10]
VSUB.F32        S0, S16, S0
LDR             R0, [R0,#0x8C]
VLDR            S1, [R0,#0x378]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVLS           R0, #1
BLS             loc_24AA60
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R10,PC}
LDR             R0, [R6,#0x80]
LDR             R4, [R6,#0x7C]
CMP             R0, R4
BEQ             loc_24AB34
VMOV.F32        S0, S16
LDR             R0, [R4]
BL              sub_256520
LDR             R0, [R6,#0x80]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_24AB18
ADD             R0, R6, #0x7C ; '|'
LDM             R0, {R0,R5}
CMP             R0, R5
BEQ             loc_24AB58
LDR             R1, [R0]
LDRB            R1, [R1]
CMP             R1, #2
ADDNE           R0, R0, #0xC
BNE             loc_24AB3C
CMP             R0, R5
BEQ             loc_24AC18
ADD             R4, R0, #0xC
CMP             R4, R5
MOV             R7, R0
BEQ             loc_24AC14
LDR             R0, [R4]
LDRB            R1, [R0]
CMP             R1, #2
BEQ             loc_24AC08
LDR             R9, [R7]
CMP             R9, R0
BEQ             loc_24AC04
LDR             R1, [R7,#8]
ADD             R2, R7, #4
CMP             R1, R2
BNE             loc_24ACB4
CMP             R9, #0
BEQ             loc_24ABC8
LDR             R8, [R10]
ADD             R0, R9, #4
BL              sub_14F3EC
LDR             R0, [R8,#0x24]
STR             R0, [R9]
STR             R9, [R8,#0x24]
LDR             R0, [R8,#0x28]
ADD             R0, R0, #1
STR             R0, [R8,#0x28]
LDR             R3, [R4]
ADD             R1, R4, #4
ADD             R0, R7, #4
CMP             R1, R0
STR             R3, [R7]
LDRNE           R2, [R1,#4]
CMPNE           R2, R0
BEQ             loc_24AC04
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
BNE             loc_24AB70
MOV             R0, R7
LDR             R5, [R6,#0x80]
CMP             R0, R5
BEQ             loc_24AA64
LDR             R1, =0x2AAAAAAB
SUB             R0, R5, R0
SMULL           R1, R0, R1, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R8, R5, R0,LSL#2
CMP             R8, R5
BEQ             loc_24ACA4
SUB             R5, R5, #0xC
ADD             R0, R5, #4
LDR             R1, [R5,#8]
MOV             R4, R5
CMP             R1, R0
BNE             loc_24AC90
LDR             R9, [R4]
CMP             R9, #0
BEQ             loc_24AC90
LDR             R7, [R10]
ADD             R0, R9, #4
BL              sub_14F3EC
LDR             R0, [R7,#0x24]
STR             R0, [R9]
STR             R9, [R7,#0x24]
LDR             R0, [R7,#0x28]
ADD             R0, R0, #1
STR             R0, [R7,#0x28]
LDRD            R0, R1, [R4,#4]
CMP             R8, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_24AC48
STR             R8, [R6,#0x80]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R10,PC}
LDR             R2, [R7,#4]
ADD             R0, R7, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R7,#4]
STR             R0, [R7,#8]
B               loc_24ABC8
