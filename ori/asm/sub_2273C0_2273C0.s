PUSH            {R4-R8,LR}
MOV             R4, R0
ADD             R8, R0, #0x12400
ADD             R8, R8, #0x2FC
SUB             SP, SP, #0x10
LDR             R0, [R8]
MOV             R1, SP
LDR             R0, [R0,#0x4A4]
BL              sub_5C4F78
ADD             R5, R4, #0x12400
ADD             R5, R5, #0x2F4
VLDR            S0, [SP,#0x28+var_28]
LDR             R0, [R5]
ADD             R6, R4, #0x10000
ADD             R6, R6, #0x2700
ADD             R0, R0, #0x220
MOV             R2, SP
VLDR            S1, [R0]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x28+var_28]
VLDR            S1, [R0,#4]
VLDR            S0, [SP,#0x28+var_24]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x28+var_24]
VLDR            S1, [R0,#8]
VLDR            S0, [SP,#0x28+var_20]
ADD             R0, R4, #0x13800
ADD             R0, R0, #0x104
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x28+var_20]
LDR             R1, [R0]
ADD             R1, R1, #1
STR             R1, [R0]
LDR             R0, [R6]
MOV             R3, R1
BL              sub_228B70
LDR             R0, [R5]
ADD             R5, R0, #0x11C
ADD             R7, R0, #0x140
LDR             R0, [R6]
LDR             R0, [R0]
SUB             R2, R7, R5
MOV             R1, #0
MOV             R3, R2,ASR#2
CMP             R3, #0
MOVGT           R2, R2,ASR#2
BLE             loc_227490
LDR             R3, [R5],#4
CMP             R3, R0
ADDLS           R1, R1, #1
SUBS            R2, R2, #1
BNE             loc_22747C
LDR             R0, =0x13908
SUB             R1, R1, #1
STR             R1, [R0,R4]
LDR             R0, [R6]
BL              sub_5C97D8
CMP             R0, #0
NOP
BEQ             loc_227574
LDR             R0, =0x1390C
LDRB            R0, [R0,R4]
CMP             R0, #0
BNE             loc_227574
LDR             R0, =0x1390C
MOV             R1, #1
STRB            R1, [R0,R4]
LDR             R0, =0x126F8
LDR             R0, [R0,R4]
BL              sub_22A224
ADD             R4, R4, #0x12400
ADD             R4, R4, #0x2E8
LDR             R0, [R4]
NOP
LDR             R0, [R8]
NOP
NOP
LDR             R0, =off_6CDA80
ADD             R1, SP, #0x28+var_1C
VLDR            S0, =4.0
LDR             R4, [R0]
MOV             R0, #0xFFFFFF00
REV             R0, R0
STR             R0, [SP,#0x28+var_1C]
ADD             R0, R4, #0x13400
ADD             R0, R0, #0x48 ; 'H'
BL              sub_4E665C
LDR             R0, [R4,#0x20]
LDR             R5, [R4,#0x1C]
MOV             R6, #0
CMP             R0, #0
BEQ             loc_22753C
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
STR             R5, [R4,#0x20]
LDR             R0, [R5]
MOV             R1, R6
LDR             R2, [R0,#8]
MOV             R0, R5
BLX             R2
LDR             R0, [R4,#0x18]
CMP             R0, #0
BEQ             loc_227574
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
MOV             R0, #0
STR             R0, [R4,#0x18]
ADD             SP, SP, #0x10
POP             {R4-R8,PC}
