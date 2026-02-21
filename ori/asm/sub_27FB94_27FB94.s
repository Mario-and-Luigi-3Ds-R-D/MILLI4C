PUSH            {R4-R10,LR}
ADD             R3, R0, #0x14
MOV             R10, R2
LDR             R2, =off_6BC268
VPUSH           {D8}
SUB             SP, SP, #0x10
STR             R1, [R0,#0xC]
MOV             R1, #0
STR             R1, [R0,#0x10]
STR             R2, [R0]
STR             R3, [R0,#0x18]
STR             R3, [R0,#0x14]!
ADD             R0, R0, #0xC
BL              sub_14F198
SUB             R4, R0, #0x20 ; ' '
LDR             R0, =off_6CDF98
MOV             R8, #0
STRB            R8, [R4,#4]
LDR             R9, =off_6CE970
LDR             R0, [R0]
VLDR            S16, =28.0
MOV             R3, R8
MOV             R2, R8
LDR             R5, [R0,#0x124]
LDR             R0, [R9]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x720
BL              sub_10A358
CMP             R0, #0
MOVEQ           R7, #0
BEQ             loc_27FC30
LDR             R1, [R9]
VMOV.F32        S0, S16
MOV             R3, #1
VLDR            S1, [R5,#0x288]
MOV             R2, R3
ADD             R1, R1, #0x68 ; 'h'
BL              sub_27D9C8
MOV             R7, R0
LDR             R0, [R4,#0x18]
ADD             R1, R4, #0x14
ADD             R6, R4, #0x10
CMP             R0, R1
BNE             loc_27FD38
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_27FC5C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
MOV             R1, R10
MOV             R0, R7
STR             R7, [R6]
BL              sub_27C660
LDR             R0, [R4,#0x10]
LDR             R1, =0xC00E
ADD             R6, R4, #0x20 ; ' '
STR             R4, [R0,#0x71C]
LDR             R0, [R9]
BL              sub_52FACC
MOV             R7, R0
MOV             R1, #1
MOV             R0, R6
BL              sub_14C450
LDR             R0, [R6]
MOV             R2, #0
MOV             R1, R7
LDR             R3, [R0,#0x58]
MOV             R0, R6
BLX             R3
MOV             R2, #1
MOV             R1, R2
MOV             R0, R6
BL              sub_14B798
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #4
ADD             R0, R4, #0x20 ; ' '
STRB            R8, [R6,#0xF1]
BL              sub_14C548
MOV             R1, #2
ADD             R0, R4, #0x20 ; ' '
BL              sub_14C450
LDR             R0, [R9]
ADD             R1, R5, #0x400
ADD             R5, R5, #0x1D0
ADD             R0, R0, #0x100000
ADD             R0, R0, #0xC400
VLDR            S1, [R1,#0x15C]
VLDR            S0, [R0,#(loc_10C4EC - 0x10C400)]
LDM             R5, {R0,R1}
VMUL.F32        S0, S0, S1
STRD            R0, R1, [SP,#0x38+var_38]
MOV             R1, SP
ADD             R0, R4, #0x20 ; ' '
VSTR            S0, [SP,#0x38+var_30]
BL              sub_14E984
MOV             R1, #0
ADD             R0, R4, #0x20 ; ' '
BL              sub_14C3E8
STRB            R8, [R4,#0x112]
ADD             SP, SP, #0x10
MOV             R0, R4
VPOP            {D8}
POP             {R4-R10,PC}
LDR             R2, [R6,#4]
ADD             R1, R6, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R6,#4]
STR             R1, [R6,#8]
B               loc_27FC5C
