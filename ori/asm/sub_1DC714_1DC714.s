LDR             R0, [R0,#4]
NOP
PUSH            {R3-R9,LR}
CMP             R1, #0
MOV             R6, R0
BEQ             loc_1DC74C
CMP             R1, #1
BEQ             loc_1DC89C
CMP             R1, #2
BEQ             loc_1DC74C
CMP             R1, #3
BEQ             loc_1DC89C
MOV             R0, #0
POP             {R3-R9,PC}
LDR             R3, =0xFFFDF53B
MOV             R0, #0
MOV             R12, #0
ADD             R1, R0, R0,LSL#1
ADD             R2, R6, R1,LSL#2
LDR             R1, =0x20AC4
STRB            R12, [R1,R2]
SUB             R1, R2, R3
LDRB            R1, [R1]
CMP             R1, #1
BNE             loc_1DC744
ADD             R0, R0, #1
CMP             R0, #2
BLT             loc_1DC754
LDRB            R0, [R6,#0x53]
LDR             R7, =flt_6E34B0
MOV             R4, #0
CMP             R0, #0
MOVGT           R8, #0
MOVGT           R9, #4
BLE             loc_1DC7F0
ADD             R0, R6, R4,LSL#2
MOV             R1, SP
LDR             R5, [R0,#0x54]
LDR             R0, [R7,#(dword_6E34F8 - 0x6E34B0)]
STRB            R0, [SP,#0x20+var_20]
STRB            R0, [SP,#0x20+var_20+1]
STRB            R0, [SP,#0x20+var_20+2]
STRB            R8, [SP,#0x20+var_20+3]
VLDR            S0, [R7,#(flt_6E34E8 - 0x6E34B0)]
ADD             R0, R5, #0x32C
VCVT.F32.U32    S0, S0
BL              sub_4E6784
LDR             R0, [R5,#0x45C]
CMP             R0, #0
BLNE            sub_533330
STRB            R9, [R5,#0x3F4]
LDRB            R0, [R6,#0x53]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_1DC7A0
LDRB            R0, [R6,#0x468]
ADD             R4, R6, #0x74 ; 't'
CMP             R0, #3
BEQ             loc_1DC828
MOV             R0, #0xFFFFFF00
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x20+var_20]
VLDR            S0, [R7,#(flt_6E3564 - 0x6E34B0)]
ADD             R0, R4, #0x32C
VCVT.F32.U32    S0, S0
BL              sub_4E6784
MOV             R0, #3
STRB            R0, [R4,#0x3F4]
MOV             R0, #0xFFFFFF00
VLDR            S0, [R7,#(flt_6E371C - 0x6E34B0)]
REV             R0, R0
ADD             R4, R6, #0x10800
STR             R0, [SP,#0x20+var_20]
ADD             R0, R6, #0x10000
ADD             R4, R4, #0x3A8
MOV             R1, SP
ADD             R0, R0, #0xD00
BL              sub_4E665C
MOV             R0, #2
STRB            R0, [R4,#0xFD]
LDR             R0, =0x20AC8
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
LDR             R0, [R0,R6]
LDR             R0, [R0,#0x18]
BL              sub_14C430
LDR             R0, =off_6CE970
MOV             R1, #6
LDR             R0, [R0]
BL              sub_529274
LDR             R1, =unk_656B78
ADD             R2, R6, #0x20000
ADD             R2, R2, #0xA00
LDRD            R0, R1, [R1,#(off_656C2C - 0x656B78)]
STRD            R0, R1, [R2,#0xBC]
B               loc_1DC8A4
NOP
BL              sub_1DA794
MOV             R0, #1
POP             {R3-R9,PC}
