PUSH            {R4-R8,LR}
MOV             R4, R0
CMP             R2, #0
LDREQ           R0, [R4,#0x3B4]
MOV             R5, R1
SUB             SP, SP, #0x20
CMPEQ           R0, R5
MOVEQ           R0, #0
BEQ             loc_14E930
LDRB            R0, [R5,#0x30]
CMP             R0, #1
BNE             loc_14E928
LDR             R0, [R4,#0x3B0]
MOV             R8, #0
CMP             R0, #0
BEQ             loc_14E72C
BL              sub_4FE6E4
BL              sub_300FD4
STR             R8, [R4,#0x3B0]
LDR             R0, [R4,#0x3AC]
CMP             R0, #0
BEQ             loc_14E7FC
BL              sub_592EDC
MOV             R0, R5
MOV             R1, #1
BL              sub_5F0474
MOV             R6, R0
MOV             R0, R5
ADD             R0, R0, #0xA0
MOV             R7, R0
MOV             R0, R5
MOV             R1, #0
BL              sub_5F0474
MOV             R2, #0x100
STR             R2, [SP,#0x38+var_30]
MOV             R1, R0
STR             R8, [SP,#0x38+var_38]
STR             R8, [SP,#0x38+var_34]
LDR             R0, [R4,#0x3AC]
MOV             R3, R6
MOV             R2, R7
BL              sub_1137FC
LDR             R0, [R4,#0x3AC]
MOV             R6, #1
MOV             R1, #5
STRB            R6, [R0,#0x68]
STRB            R1, [R0,#0x6A]
STRB            R8, [R0,#0x69]
STRB            R6, [R0,#0x6D]
STRB            R8, [R0,#0x6E]
LDRB            R1, [R0,#0x64]
STRB            R6, [R0,#0x65]
ORR             R1, R1, #1
AND             R1, R1, #0xFF
ORR             R1, R1, #0x70 ; 'p'
STRB            R1, [R0,#0x64]
LDRB            R1, [R0,#0x5C]
BIC             R1, R1, #1
STRB            R1, [R0,#0x5C]
STRB            R6, [R0,#0x70]
STRB            R6, [R0,#0x71]
LDRB            R2, [R4,#0xFC]
LDR             R1, [R4,#0x3AC]
MOV             R0, R4
CMP             R2, #0
BEQ             loc_14E838
CMP             R2, #1
BLEQ            sub_14C2C4
NOP
NOP
B               loc_14E868
LDR             R0, =off_6CE970
MOV             R3, #0
MOV             R2, R3
LDR             R0, [R0]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x6000
LDR             R1, [R0,#(loc_1063B8 - 0x106000)]
MOV             R0, #0x104
BL              sub_10A358
CMP             R0, #0
NOP
BLNE            sub_5931A8
STR             R0, [R4,#0x3AC]
NOP
B               loc_14E73C
LDRB            R0, [R1,#0x64]
ORR             R2, R0, #1
MOV             R0, #1
STRB            R0, [R1,#0x65]
AND             R0, R2, #0xFF
ORR             R0, R0, #0x70 ; 'p'
STRB            R0, [R1,#0x64]
LDRB            R0, [R1,#0x5C]
BIC             R0, R0, #1
STRB            R0, [R1,#0x5C]
STRB            R6, [R1,#0x70]
STRB            R6, [R1,#0x71]
LDRB            R0, [R4,#0xF0]
CMP             R0, #2
BEQ             loc_14E884
LDRB            R0, [R4,#0xF8]
CMP             R0, #0
STRBEQ          R6, [R4,#0xF1]
BEQ             loc_14E8C4
MOV             R1, #1
STRB            R1, [R4,#0xF8]
STRB            R1, [R4,#0xF9]
LDR             R0, [R4]
LDR             R1, [R0,#0x4C]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BEQ             loc_14E8C0
LDR             R0, [R4]
LDR             R1, [R0,#0x4C]
MOV             R0, R4
BLX             R1
MOV             R1, #3
STRB            R1, [R0,#0x6F]
STRB            R8, [R4,#0xF1]
STRB            R8, [SP,#0x38+var_28]
STRH            R8, [SP,#0x38+var_24]
STRH            R8, [SP,#0x38+var_20]
STRH            R8, [SP,#0x38+var_1C]
MOV             R0, R5
STRH            R8, [SP,#0x38+var_26]
STRH            R8, [SP,#0x38+var_22]
STRH            R8, [SP,#0x38+var_1E]
STRH            R8, [SP,#0x38+var_1A]
LDR             R0, [R0,#0x9C]
MOV             R1, R0
ADD             R0, SP, #0x38+var_28
BL              sub_146444
LDRB            R0, [R0]
VLDR            S1, =0.0
STRB            R0, [R4,#0xF6]
LDRSH           R0, [SP,#0x38+var_1C]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VSTR            S0, [R4,#0x50]
LDRSH           R0, [SP,#0x38+var_1A]
VMOV            S0, R0
ADD             R0, R4, #0x54 ; 'T'
VCVT.F32.S32    S0, S0
VSTM            R0, {S0-S1}
MOV             R0, #1
STR             R5, [R4,#0x3B4]
ADD             SP, SP, #0x20 ; ' '
POP             {R4-R8,PC}
