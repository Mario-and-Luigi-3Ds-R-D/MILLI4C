PUSH            {R0,R4-R11,LR}
SUB             SP, SP, #0x10
MOV             R8, #0
MOV             R11, #0
LDR             R1, =0x10645C
LDR             R0, [SP,#0x38+var_28]
MOV             R10, R11
ADD             R0, R0, R1
LDR             R0, [R0,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R7, #0
ADDNE           R7, R0, #0x1AC
CMP             R7, #0
BEQ             loc_1D3F34
CMP             R7, #0
ADD             R0, SP, #0x38+var_30
MOVEQ           R5, #0
SUBNE           R5, R7, #0x1AC
STR             R0, [SP,#0x38+var_38]
STR             R11, [SP,#0x38+var_30]
STR             R11, [SP,#0x38+var_2C]
LDRB            R1, [R5,#0x495]
LDR             R0, [SP,#0x38+var_28]
MOV             R6, #0
MOV             R3, #1
MOV             R2, #0x32 ; '2'
BL              sub_5EEC7C
CMP             R0, #0
LDRNE           R0, [SP,#0x38+var_30]
MOV             R4, #0
SXTHNE          R6, R0
LDR             R0, [SP,#0x38+var_28]
ORR             R1, R4, #0x2000
BL              sub_52F508
CMP             R6, #0
MOV             R9, R0
BEQ             loc_1D3E54
ADD             R0, R5, R4,LSL#2
LDR             R0, [R0,#0x8BC]
CMP             R0, #0
BEQ             loc_1D3E54
MOV             R0, R5
BL              sub_5EC344
CMP             R0, #0
CMPNE           R9, #0
BEQ             loc_1D3E54
LDR             R1, =byte_6CE7C8
MOV             R0, R9
BL              sub_5EC180
CMP             R0, #0
NOP
BEQ             loc_1D3E54
LDR             R2, =dword_6D1F40
MOV             R1, #0x64 ; 'd'
MOV             R0, R6
BL              sub_480134
CMP             R0, #0
MOVNE           R8, R5
BNE             loc_1D3E5C
ADD             R0, R5, R4,LSL#2
STR             R11, [R0,#0x8BC]
ADD             R0, R4, #1
UXTH            R4, R0
CMP             R4, #0x40 ; '@'
BCC             loc_1D3DE4
CMP             R8, #0
BEQ             loc_1D3F28
LDR             R0, [SP,#0x38+var_28]
MOV             R1, R8
BL              sub_52FB58
LDR             R0, [SP,#0x38+var_28]
MOV             R3, #0
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x10
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_1D3EE0
MOV             R1, #1
STRB            R1, [R0,#4]
LDR             R1, =off_6544E8
STRB            R11, [R0,#5]
STRH            R11, [R0,#6]
STR             R1, [R0]
STR             R8, [R0,#8]
MOV             R4, R0
STRB            R11, [R0,#0xC]
LDR             R0, =off_6CE970
LDR             R1, =unk_653FD0
MOV             R2, #2
LDR             R0, [R0]
BL              sub_529204
MOV             R0, R4
STR             R0, [R8,#0x140]
LDR             R1, =loc_19CF44
LDR             R0, [SP,#0x38+var_28]
LDR             R1, [R0,R1]!
ORR             R1, R1, #0x20 ; ' '
STR             R1, [R0]
LDR             R0, [SP,#0x38+var_28]
BL              sub_1D0704
LDR             R2, =unk_653FC0
LDR             R0, [SP,#0x38+var_28]
LDR             R1, [R2,#(off_654054 - 0x653FC0)]; sub_1D2E50
LDR             R2, [R2,#(dword_654058 - 0x653FC0)]
ADD             R0, R0, #0x1A0000
ADD             R0, R0, #0x5C ; '\'
STM             R0, {R1,R2}
ADD             SP, SP, #0x14
MOV             R0, #1
POP             {R4-R11,PC}
LDR             R7, [R7,#8]
CMP             R7, R10
BNE             loc_1D3DA0
ADD             SP, SP, #0x14
MOV             R0, #0
POP             {R4-R11,PC}
