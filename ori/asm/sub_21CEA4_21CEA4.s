PUSH            {R4-R8,LR}
TST             R1, #0xC
SUB             SP, SP, #0x38
MOV             R5, R0
MOV             R4, R1
BEQ             loc_21CFB0
ADD             R6, SP, #0x50+var_30
ADD             R0, SP, #0x50+var_20
BL              sub_1196D0
LDRD            R0, R1, [SP,#0x50+var_20]
STRD            R0, R1, [SP,#0x50+var_28]
ADD             R0, SP, #0x50+var_28
BL              sub_5E0788
MOV             R8, R0
ADD             R0, SP, #0x50+var_28
BL              sub_5E0838
MOV             R7, R0
ADD             R0, SP, #0x50+var_28
BL              sub_5E07E0
MOV             R1, R0
MOV             R0, #0
STR             R0, [SP,#0x50+var_50]
STR             R0, [SP,#0x50+var_4C]
STR             R0, [SP,#0x50+var_48]
STR             R0, [SP,#0x50+var_44]
MOV             R3, R8
MOV             R2, R7
MOV             R0, R6
BL              sub_119730
TST             R4, #4
BEQ             loc_21CF2C
LDRD            R0, R1, [SP,#0x50+var_30]
BL              sub_21CDEC
STR             R0, [R5,#8]
TST             R4, #8
BEQ             loc_21CFB0
LDRD            R0, R1, [SP,#0x50+var_30]
STRD            R0, R1, [SP,#0x50+var_48]
ADD             R0, SP, #0x50+var_4C
BL              sub_45FDD4
ADD             R0, SP, #0x50+var_48
NOP
BL              sub_5E07E0
NOP
NOP
BL              sub_460648
CMP             R0, #0
LDRBEQ          R0, [SP,#0x50+var_4C]
CMPEQ           R0, #2
BNE             loc_21CF7C
LDRB            R0, [SP,#0x50+var_4C+1]
CMP             R0, #0x1D
MOVEQ           R0, #0x1C
STRBEQ          R0, [SP,#0x50+var_4C+1]
ADD             R0, SP, #0x50+var_48
BL              sub_5E0838
LDRSB           R1, [SP,#0x50+var_4C]
CMP             R0, R1
BNE             loc_21CFA8
ADD             R0, SP, #0x50+var_48
BL              sub_5E0788
LDRSB           R1, [SP,#0x50+var_4C+1]
CMP             R0, R1
MOVEQ           R0, #1
BEQ             loc_21CFAC
MOV             R0, #0
STRB            R0, [R5,#0xC]
TST             R4, #1
BEQ             loc_21CFC4
LDR             R0, =unk_6E8AD0
LDRH            R0, [R0,#(word_6E8B48 - 0x6E8AD0)]
STRH            R0, [R5]
TST             R4, #2
BEQ             loc_21CFD8
LDR             R0, =dword_6E7CD0
LDR             R0, [R0,#(dword_6E85EC - 0x6E7CD0)]
STR             R0, [R5,#4]
ADD             SP, SP, #0x38 ; '8'
POP             {R4-R8,PC}
