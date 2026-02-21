PUSH            {R4-R8,LR}
SUB             SP, SP, #0x10
MOV             R5, R1
MOV             R6, R3
STR             R2, [R0],#8
BL              sub_14F198
MOV             R8, #0
SUB             R4, R0, #8
STRB            R8, [R0,#0x410]
STRB            R6, [R0,#0x411]
LDR             R0, =off_6C0770
ADD             R7, R4, #0x400
ADD             R7, R7, #0x24 ; '$'
ADD             R3, R4, #0x400
STM             R7, {R0,R8}
ADD             R3, R3, #0x2C ; ','
LDM             R5, {R0-R2}
ADD             R6, R4, #0x400
STM             R3, {R0-R2}
MOV             R2, R8
LDR             R0, [R4]
LDR             R1, [R0,#4]
ADD             R0, R4, #8
BL              sub_14E6E0
MOV             R1, #1
ADD             R0, R4, #8
BL              sub_14C450
MOV             R0, #1
STRB            R0, [R4,#0xF9]
MOV             R1, R5
ADD             R0, R4, #8
BL              sub_14E984
MOV             R1, #0
ADD             R0, R4, #8
BL              sub_14C3E8
LDR             R0, [R4]
LDR             R1, [R0,#0x40]
STR             R1, [R4,#0x41C]
VLDR            S2, [R0,#0x8C]
VLDR            S5, [R5]
VLDR            S0, [R0,#0x90]
VLDR            S4, [R5,#4]
VLDR            S1, [R0,#0x94]
VLDR            S3, [R5,#8]
VADD.F32        S2, S2, S5
VADD.F32        S0, S0, S4
VADD.F32        S1, S1, S3
ADD             R0, R4, #0x3FC
ADD             R1, R5, #4
VSTR            S2, [R4,#0x3FC]
VSTR            S0, [R0,#4]
VSTR            S1, [R0,#8]
LDR             R0, [R4]
VLDR            S5, [R5]
VLDM            R1, {S3-S4}
ADD             R1, R6, #8
VLDR            S0, [R0,#0x98]
ADD             R0, R0, #0x9C
VLDM            R0, {S1-S2}
VADD.F32        S0, S0, S5
LDR             R0, =dword_6D1F40
VADD.F32        S1, S1, S3
VADD.F32        S2, S2, S4
VSTM            R1, {S0-S2}
STRB            R8, [R4,#0x420]
STRB            R8, [R4,#0x421]
BL              sub_546DB0
MOV             R1, #0x64 ; 'd'
MUL             R0, R0, R1
MOV             R0, R0,LSR#16
CMP             R0, #0x32 ; '2'
MOVLS           R0, #1
MOVHI           R0, #0
STRB            R0, [R4,#0x438]
MOV             R0, #0xA
STRB            R0, [R4,#4]
LDM             R5, {R0-R2}
STMEA           SP, {R0-R2}
MOV             R1, SP
LDRB            R0, [R6,#0x38]
VLDR            S1, [SP,#0x28+var_28]
CMP             R0, #0
LDR             R0, [R4]
VLDR            S0, [R0,#0x58]
ADD             R0, R4, #8
VNEGNE.F32      S0, S0
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x28+var_28]
BL              sub_14E984
LDR             R0, [R4]
MOV             R1, R5
VLDR            S0, [R0,#0x54]
ADD             R0, R4, #0x1E4
BL              sub_5A2138
LDRB            R0, [R6,#0x38]
MOV             R3, #0x100
MOV             R2, #0
CMP             R0, #0
MOVNE           R1, #2
MOVEQ           R1, #3
ADD             R0, R4, #8
BL              sub_14C548
LDR             R0, =off_6CE970
LDR             R12, =0xFFE683CC
LDR             R2, =0x300BF
MOV             R3, #0
LDR             R0, [R0]
ADD             R1, R4, #8
SUB             R0, R0, R12
BL              sub_503720
MOV             R6, R0
LDR             R0, [R7]
MOV             R5, R7
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
CMP             R6, #0
STR             R6, [R5,#4]
STRNE           R5, [R6,#0x64]
ADD             SP, SP, #0x10
MOV             R0, R4
POP             {R4-R8,PC}
