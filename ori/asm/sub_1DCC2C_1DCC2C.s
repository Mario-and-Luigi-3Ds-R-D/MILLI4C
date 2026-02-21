LDR             R0, [R0,#4]
NOP
PUSH            {R0,R1,R4-R11,LR}
MOV             R4, R0
ADD             R0, R0, #0x20800
ADD             R0, R0, #0x2C8
VPUSH           {D8}
SUB             SP, SP, #4
LDR             R7, [R0]
MOV             R0, R7
BL              sub_5EC8BC
CMP             R0, #0
LDREQ           R1, =0xFFFDF53B
BNE             loc_1DCC7C
ADD             R2, R0, R0,LSL#1
ADD             R2, R4, R2,LSL#2
SUB             R2, R2, R1
LDRB            R2, [R2]
CMP             R2, #1
BEQ             loc_1DCC90
MOV             R0, #0
ADD             SP, SP, #4
VPOP            {D8}
ADD             SP, SP, #8
POP             {R4-R11,PC}
ADD             R0, R0, #1
CMP             R0, #2
BLT             loc_1DCC64
LDR             R8, =off_6CE970
LDR             R0, =0x19DFE8
LDR             R1, [R8]
LDR             R0, [R1,R0]
BL              sub_1CC97C
LDRB            R0, [R4,#0x53]
LDR             R9, =flt_6E34B0
MOV             R5, #0
CMP             R0, #0
MOVGT           R10, #0
MOVGT           R11, #4
BLE             loc_1DCD1C
ADD             R0, R4, R5,LSL#2
MOV             R1, SP
LDR             R6, [R0,#0x54]
LDR             R0, [R9,#(dword_6E34F8 - 0x6E34B0)]
STRB            R0, [SP,#0x38+var_38]
STRB            R0, [SP,#0x38+var_38+1]
STRB            R0, [SP,#0x38+var_38+2]
STRB            R10, [SP,#0x38+var_38+3]
VLDR            S0, [R9,#(flt_6E34E8 - 0x6E34B0)]
ADD             R0, R6, #0x32C
VCVT.F32.U32    S0, S0
BL              sub_4E6784
LDR             R0, [R6,#0x45C]
CMP             R0, #0
BLNE            sub_533330
STRB            R11, [R6,#0x3F4]
LDRB            R0, [R4,#0x53]
ADD             R5, R5, #1
CMP             R0, R5
BGT             loc_1DCCCC
MOV             R0, #0
MOV             R2, #0
ADD             R1, R0, R0,LSL#1
ADD             R0, R0, #1
ADD             R1, R4, R1,LSL#2
ADD             R1, R1, #0x20800
ADD             R1, R1, #0x2C4
CMP             R0, #2
STRB            R2, [R1]
BLT             loc_1DCD20
LDRB            R0, [R4,#0x468]
MOV             R6, #3
ADD             R5, R4, #0x74 ; 't'
CMP             R0, #3
BEQ             loc_1DCD7C
MOV             R0, #0xFFFFFF00
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x38+var_38]
VLDR            S0, [R9,#(flt_6E3564 - 0x6E34B0)]
ADD             R0, R5, #0x32C
VCVT.F32.U32    S0, S0
BL              sub_4E6784
STRB            R6, [R5,#0x3F4]
MOV             R0, #0xFFFFFF00
VLDR            S0, [R9,#(flt_6E371C - 0x6E34B0)]
REV             R0, R0
ADD             R5, R4, #0x10800
STR             R0, [SP,#0x38+var_38]
ADD             R0, R4, #0x10000
ADD             R5, R5, #0x3A8
MOV             R1, SP
ADD             R0, R0, #0xD00
BL              sub_4E665C
MOV             R0, #2
STRB            R0, [R5,#0xFD]
LDR             R0, =0x1FACC
LDR             R0, [R0,R4]
CMP             R0, #0
ADDNE           R0, R4, #0x1C000
ADDNE           R0, R0, #0x3AC0
BLNE            sub_311298
ADD             R0, R4, #0x1F000
ADD             R0, R0, #0x820
BL              sub_338AA4
ADD             R5, R4, #0x1FC00
ADD             R0, R4, #0x1F000
ADD             R5, R5, #0x154
VLDR            S0, [R9,#(flt_6E37C4 - 0x6E34B0)]
ADD             R2, R9, #0x304
MOV             R1, #0
ADD             R0, R0, #0xF30
BL              sub_5A2298
MOV             R0, #0xFFFFFF00
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x38+var_38]
VLDR            S0, [R9,#(flt_6E37C4 - 0x6E34B0)]
ADD             R0, R5, #0x32C
BL              sub_4E665C
STRB            R6, [R5,#0x3F4]
MOV             R5, #0
MOV             R0, #0x97
MUL             R0, R5, R0
ADD             R0, R4, R0,LSL#3
ADD             R0, R0, #0x20000
ADD             R0, R0, #0x14C
BL              sub_38608C
ADD             R5, R5, #1
CMP             R5, #2
BLT             loc_1DCE14
MOV             R2, #0
LDR             R0, [R7,#0x18]
MOV             R3, #0x100
MOV             R1, R2
BL              sub_14C430
LDR             R0, [R8]
MOV             R1, #4
BL              sub_529274
LDR             R1, [SP,#0x38+var_28]
LDR             R0, [R8]
BL              sub_52C6C4
LDR             R5, =unk_656B78
LDR             R0, [R8]
MOV             R1, #2
VLDR            S16, [R5,#(flt_656B80 - 0x656B78)]
BL              sub_5EE8E0
VMOV.F32        S0, S16
MOV             R1, R0
MOV             R0, R4
BL              sub_1DB5F8
ADD             R5, R5, #0xBC
ADD             R0, R4, #0x20800
LDM             R5, {R1,R2}
ADD             R0, R0, #0x2BC
STM             R0, {R1,R2}
MOV             R0, #1
B               loc_1DCC80
