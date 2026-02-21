PUSH            {R4-R11,LR}
MOV             R6, #0
MOV             R8, R0
SUB             SP, SP, #0x1C
LDRB            R2, [R0,#0x53]
MOV             R0, R6
CMP             R2, #0
BLE             loc_1DAB54
ADD             R1, R8, R0,LSL#2
LDR             R1, [R1,#0x54]
LDRB            R1, [R1,#0x3F4]
CMP             R1, #1
BEQ             loc_1DABF4
ADD             R0, R0, #1
CMP             R2, R0
BGT             loc_1DAB34
ADD             R0, R8, #0x250
BL              sub_5F19B8
TEQ             R0, #1
NOP
BEQ             loc_1DABF4
LDRB            R0, [R8,#0x52]
LDR             R10, =0x138F24
LDR             R7, =off_6CE970
ADD             R1, R8, #0x20000
ADD             R4, R8, #0x10C00
ADD             R1, R1, #0xA00
TST             R0, #1
MOV             R9, #1
ADD             R4, R4, #0x254
STR             R1, [SP,#0x40+var_30]
BEQ             loc_1DABFC
LDR             R0, [R7]
MOV             R2, #0
MOV             R1, #0x12
ADD             R0, R0, R10
BL              sub_571558
MOV             R5, R0
LDR             R0, [R7]
MOV             R2, #0
MOV             R1, #0x13
ADD             R0, R0, R10
BL              sub_571558
MOV             R2, R0
MOV             R3, #1
MOV             R1, R5
MOV             R0, R4
STMEA           SP, {R6,R9}
BL              sub_2C6840
LDR             R0, =0x20F0F
STRB            R6, [R8,R0]
LDR             R0, =off_656BA4
LDM             R0, {R1,R2}
LDR             R0, [SP,#0x40+var_30]
ADD             R0, R0, #0xBC
STM             R0, {R1,R2}
ADD             SP, SP, #0x1C
POP             {R4-R11,PC}
TST             R0, #2
BEQ             loc_1DAC68
LDR             R0, [R7]
MOV             R2, #0
MOV             R1, #0x27 ; '''
ADD             R0, R0, R10
BL              sub_571558
MOV             R5, R0
LDR             R0, [R7]
MOV             R2, #0
MOV             R1, #0x28 ; '('
ADD             R0, R0, R10
BL              sub_571558
MOV             R2, R0
MOV             R3, #1
MOV             R1, R5
MOV             R0, R4
STMEA           SP, {R6,R9}
BL              sub_2C6840
LDR             R2, =unk_656B78
LDR             R1, [SP,#0x40+var_30]
LDR             R0, [R2,#(off_656BAC - 0x656B78)]; sub_1DBBD0
LDR             R2, [R2,#(dword_656BB0 - 0x656B78)]
ADD             R1, R1, #0xBC
STM             R1, {R0,R2}
ADD             SP, SP, #0x1C
POP             {R4-R11,PC}
TST             R0, #4
BEQ             loc_1DACD4
LDR             R0, [R7]
MOV             R2, #0
MOV             R1, #0x18
ADD             R0, R0, R10
BL              sub_571558
MOV             R5, R0
LDR             R0, [R7]
MOV             R2, #0
MOV             R1, #0x19
ADD             R0, R0, R10
BL              sub_571558
MOV             R2, R0
MOV             R3, #1
MOV             R1, R5
MOV             R0, R4
STMEA           SP, {R6,R9}
BL              sub_2C6840
LDR             R2, =unk_656B78
LDR             R0, [SP,#0x40+var_30]
LDR             R1, [R2,#(off_656BB4 - 0x656B78)]; sub_1DC6D0
LDR             R2, [R2,#(dword_656BB8 - 0x656B78)]
ADD             R0, R0, #0xBC
STM             R0, {R1,R2}
ADD             SP, SP, #0x1C
POP             {R4-R11,PC}
STRB            R9, [R8,#0x50]
LDR             R4, =0x19DFE8
LDR             R0, [R7]
LDR             R0, [R0,R4]
BL              sub_5C6F9C
CMP             R0, #0
LDR             R0, [R7]
BEQ             loc_1DAD0C
LDR             R0, [R0,R4]
BL              sub_5EAD8C
CMP             R0, #0
NOP
BEQ             loc_1DABF4
B               loc_1DAD38
LDR             R1, =byte_19CF32
LDRB            R1, [R1,R0]
LDR             R0, [R0,R4]
CMP             R1, #0
BEQ             loc_1DAD30
BL              sub_1CC4E8
NOP
NOP
B               loc_1DAD38
NOP
BL              sub_1CC8A8
MOV             R4, #0
ADD             R0, R4, R4,LSL#1
ADD             R5, R8, R0,LSL#2
ADD             R5, R5, #0x20800
ADD             R5, R5, #0x2C4
MOV             R0, #1
STRB            R0, [R5]
LDR             R0, [R7]
BL              sub_528E64
MOV             R1, R0
LDR             R0, [R5,#4]
CMP             R1, R0
BNE             loc_1DAD80
LDR             R0, [R0,#0x18]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #1
BL              sub_14C430
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_1DAD3C
LDR             R10, =0x22B63CBF
LDR             R11, =flt_6E34B0
MOV             R7, #0
MOV             R0, #0x97
MUL             R0, R7, R0
ADD             R0, R8, R0,LSL#3
ADD             R0, R0, #0x20000
ADD             R0, R0, #0x14C
ADD             R5, R0, #0x4B0
ADD             R0, R0, #0x4B0
LDM             R0, {R4,R6}
CMP             R4, R6
BEQ             loc_1DAE2C
LDR             R1, [R5,#4]
LDR             R2, [R5]
LDRB            R0, [R4,#1]
SUB             R1, R1, R2
CMP             R0, #0xFF
SMULL           R2, R1, R10, R1
MOV             R0, R1,ASR#5
SUB             R0, R0, R1,ASR#31
AND             R0, R0, #0xFF
BEQ             loc_1DAE20
LDRB            R1, [R4]
CMP             R1, #0
BNE             loc_1DAE20
LDRB            R1, [R4,#2]
VLDR            S1, [R11,#(flt_6E37F8 - 0x6E34B0)]
SUB             R0, R0, R1
SUB             R0, R0, #1
VMOV            S0, R0
MOV             R1, #0
ADD             R0, R4, #0x3C ; '<'
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
BL              sub_5A2708
STRB            R9, [R4]
ADD             R4, R4, #0xEC
CMP             R4, R6
BNE             loc_1DADC0
ADD             R7, R7, #1
CMP             R7, #2
BLT             loc_1DAD98
ADD             R0, R8, #0x18
ADD             R4, R8, #0x30 ; '0'
LDM             R0, {R0,R2,R3}
MOV             R1, SP
STMEA           SP, {R0,R2,R3}
VLDR            S0, [R11,#(flt_6E34C0 - 0x6E34B0)]
VLDM            R4, {S1-S3}
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S3, S0
VMOV            S3, R0
ADD             R0, R8, #0x10800
ADD             R0, R0, #0x3A8
MOV             R4, R0
VADD.F32        S1, S3, S1
VSTR            S1, [SP,#0x40+var_40]
VMOV            S1, R2
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0x40+var_3C]
VMOV            S1, R3
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x40+var_38]
BL              sub_2A2AAC
LDRB            R0, [R8,#0x4D]
ADD             R0, R8, R0,LSL#2
LDR             R0, [R0,#0x54]
LDRB            R1, [R0,#0x3F6]
MOV             R0, R4
BL              sub_2A2D7C
LDR             R0, =off_656BBC
LDM             R0, {R1,R2}
LDR             R0, [SP,#0x40+var_30]
ADD             R0, R0, #0xBC
STM             R0, {R1,R2}
ADD             SP, SP, #0x1C
POP             {R4-R11,PC}
