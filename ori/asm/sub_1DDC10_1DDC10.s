PUSH            {R4-R7,LR}
MOV             R5, R0
ADD             R4, R0, #0x74 ; 't'
LDR             R6, =flt_6E34B0
MOV             R7, #3
VPUSH           {D8}
SUB             SP, SP, #4
LDRB            R0, [R0,#0x468]
CMP             R0, #3
BEQ             loc_1DDC5C
MOV             R0, #0xFFFFFF00
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x20+var_20]
VLDR            S0, [R6,#(flt_6E3564 - 0x6E34B0)]
ADD             R0, R4, #0x32C
VCVT.F32.U32    S0, S0
BL              sub_4E6784
STRB            R7, [R4,#0x3F4]
MOV             R0, #0
MOV             R2, #0
ADD             R1, R0, R0,LSL#1
ADD             R0, R0, #1
ADD             R1, R5, R1,LSL#2
ADD             R1, R1, #0x20800
ADD             R1, R1, #0x2C4
CMP             R0, #2
STRB            R2, [R1]
BLT             loc_1DDC60
MOV             R0, #0xFFFFFF00
VLDR            S0, [R6,#(flt_6E371C - 0x6E34B0)]
REV             R0, R0
ADD             R4, R5, #0x10800
STR             R0, [SP,#0x20+var_20]
ADD             R0, R5, #0x10000
ADD             R4, R4, #0x3A8
MOV             R1, SP
ADD             R0, R0, #0xD00
BL              sub_4E665C
MOV             R0, #2
STRB            R0, [R4,#0xFD]
LDR             R0, =0x1FACC
LDR             R0, [R0,R5]
CMP             R0, #0
ADDNE           R0, R5, #0x1C000
ADDNE           R0, R0, #0x3AC0
BLNE            sub_311298
ADD             R0, R5, #0x1F000
ADD             R0, R0, #0x820
BL              sub_338AA4
ADD             R4, R5, #0x1FC00
ADD             R0, R5, #0x1F000
ADD             R4, R4, #0x154
VLDR            S0, [R6,#(flt_6E37C4 - 0x6E34B0)]
ADD             R2, R6, #0x304
MOV             R1, #0
ADD             R0, R0, #0xF30
BL              sub_5A2298
MOV             R0, #0xFFFFFF00
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x20+var_20]
VLDR            S0, [R6,#(flt_6E37C4 - 0x6E34B0)]
ADD             R0, R4, #0x32C
BL              sub_4E665C
STRB            R7, [R4,#0x3F4]
MOV             R4, #0
MOV             R0, #0x97
MUL             R0, R4, R0
ADD             R0, R5, R0,LSL#3
ADD             R0, R0, #0x20000
ADD             R0, R0, #0x14C
BL              sub_38608C
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_1DDD1C
LDR             R4, =unk_656B78
LDR             R0, =off_6CE970
MOV             R1, #1
VLDR            S16, [R4,#(flt_656B80 - 0x656B78)]
LDR             R0, [R0]
BL              sub_5EE8E0
VMOV.F32        S0, S16
MOV             R1, R0
MOV             R0, R5
BL              sub_1DB5F8
ADD             R4, R4, #0xAC
ADD             R0, R5, #0x20800
LDM             R4, {R1,R2}
ADD             R0, R0, #0x2BC
STM             R0, {R1,R2}
ADD             SP, SP, #4
VPOP            {D8}
POP             {R4-R7,PC}
