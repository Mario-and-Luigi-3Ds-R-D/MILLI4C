PUSH            {R4-R7,LR}
SUB             SP, SP, #0x14
MOV             R4, R0
MOV             R5, R1
MOV             R6, R2
BL              sub_14BD30
LDRSB           R0, [R4,#0xFF]
CMP             R0, #0
BLT             loc_218DA0
LDR             R1, [R4,#0x110]
RSB             R0, R0, R0,LSL#3
ADD             R2, R1, R0,LSL#3
LDR             R0, [R2,#0x24]
MOVS            R1, R0,LSR#16
LDR             R0, [R2,#0x28]
BEQ             loc_218AD4
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F538
CMP             R0, #0
BEQ             loc_218DA0
MOV             R2, #0xFF
MOV             R1, #0
STRB            R2, [SP,#0x28+var_28]
STRB            R1, [SP,#0x28+var_24]
STRB            R2, [SP,#0x28+var_20]
STRB            R1, [SP,#0x28+var_1C]
STRB            R2, [SP,#0x28+var_27]
STRB            R1, [SP,#0x28+var_23]
STRB            R2, [SP,#0x28+var_1F]
STRB            R1, [SP,#0x28+var_1B]
STRB            R2, [SP,#0x28+var_26]
STRB            R1, [SP,#0x28+var_22]
STRB            R2, [SP,#0x28+var_1E]
STRB            R1, [SP,#0x28+var_1A]
STRB            R2, [SP,#0x28+var_25]
STRB            R1, [SP,#0x28+var_21]
STRB            R2, [SP,#0x28+var_1D]
STRB            R1, [SP,#0x28+var_19]
LDR             R1, [R0]
MOV             R2, R6
LDR             R3, [R1,#0x44]
MOV             R1, SP
BLX             R3
LDRB            R2, [SP,#0x28+var_28]
LDRB            R4, [R5]
LDRB            R1, [SP,#0x28+var_27]
LDRB            R3, [R5,#1]
LDRB            R12, [SP,#0x28+var_26]
SMULBB          R4, R4, R2
BIC             R2, R0, #0xFF
SMULBB          R1, R3, R1
LDRB            R6, [R5,#2]
ADD             R0, R4, R4,LSL#7
ADD             R0, R0, R4,LSL#15
ADD             R4, R1, R1,LSL#7
MOV             R0, R0,LSL#1
ADD             R4, R4, R1,LSL#15
LDRB            LR, [SP,#0x28+var_25]
LDRB            R7, [R5,#3]
MOV             R1, R0,LSR#24
SMULBB          R12, R6, R12
ORR             R2, R2, R1
SMULBB          R3, R7, LR
MOV             R0, R4,LSR#23
ADD             LR, R12, R12,LSL#7
ADD             R12, LR, R12,LSL#15
MOV             R0, R0,LSL#8
MOV             R1, R12,LSR#23
AND             R0, R0, #0xFF00
BIC             R2, R2, #0xFF00
ADD             R12, R3, R3,LSL#7
ORR             R2, R2, R0
ADD             R3, R12, R3,LSL#15
MOV             R1, R1,LSL#16
BIC             R2, R2, #0xFF0000
AND             R1, R1, #0xFF0000
MOV             R0, R3,LSR#23
ORR             R1, R1, R2
BIC             R1, R1, #0xFF000000
ORR             R0, R1, R0,LSL#24
STR             R0, [R5]
LDRB            R2, [SP,#0x28+var_24]
LDRB            R3, [R5,#4]
ADD             R0, R5, #4
MOV             R1, #0xFF
ADD             R12, R3, R2
CMP             R12, #0xFF
MOVGT           R12, R1
LDRB            R1, [R0,#1]
LDRB            R2, [SP,#0x28+var_23]
LDRB            R3, [SP,#0x28+var_22]
LDRB            LR, [SP,#0x28+var_21]
ADD             R1, R1, R2
CMP             R1, #0xFF
MOV             R2, #0xFF
MOVGT           R1, R2
LDRB            R2, [R0,#2]
AND             R12, R12, #0xFF
BIC             R4, R4, #0xFF
ADD             R2, R2, R3
CMP             R2, #0xFF
MOV             R3, #0xFF
MOVGT           R2, R3
LDRB            R3, [R0,#3]
MOV             R2, R2,LSL#16
MOV             R6, #0xFF
ADD             R3, R3, LR
MOV             LR, R1,LSL#8
ORR             R1, R4, R12
AND             R12, LR, #0xFF00
BIC             R1, R1, #0xFF00
ORR             R1, R1, R12
AND             R12, R2, #0xFF0000
BIC             R1, R1, #0xFF0000
CMP             R3, #0xFF
ORR             R1, R1, R12
MOVGT           R3, R6
BIC             R1, R1, #0xFF000000
ORR             R1, R1, R3,LSL#24
STR             R1, [R0]
LDRB            R2, [SP,#0x28+var_20]
LDRB            R6, [R5,#8]
LDRB            R3, [SP,#0x28+var_1F]
LDRB            LR, [R5,#9]
LDRB            R4, [SP,#0x28+var_1E]
SMULBB          R2, R6, R2
LDRB            R7, [R5,#0xA]
SMULBB          R3, LR, R3
BIC             LR, R1, #0xFF
ADD             R1, R2, R2,LSL#7
ADD             R2, R1, R2,LSL#15
ADD             R1, R3, R3,LSL#7
LDRB            R12, [SP,#0x28+var_1D]
LDRB            R6, [R5,#0xB]
ADD             R1, R1, R3,LSL#15
SMULBB          R4, R7, R4
MOV             R2, R2,LSL#1
SMULBB          R12, R6, R12
MOV             R3, R2,LSR#24
ADD             R6, R4, R4,LSL#7
ADD             R2, R6, R4,LSL#15
ORR             R3, R3, LR
MOV             R1, R1,LSR#23
MOV             R2, R2,LSR#23
BIC             R4, R3, #0xFF00
MOV             R1, R1,LSL#8
MOV             R3, R2,LSL#16
AND             R1, R1, #0xFF00
ORR             R2, R4, R1
ADD             LR, R12, R12,LSL#7
ADD             R12, LR, R12,LSL#15
AND             R3, R3, #0xFF0000
BIC             R2, R2, #0xFF0000
MOV             R1, R12,LSR#23
ORR             R2, R2, R3
ADD             R0, R5, #8
BIC             R2, R2, #0xFF000000
ORR             R1, R2, R1,LSL#24
STR             R1, [R0]
LDRB            R0, [SP,#0x28+var_1C]
LDRB            R2, [R5,#0xC]!
MOV             R1, #0xFF
LDRB            R3, [SP,#0x28+var_1A]
ADD             R0, R0, R2
CMP             R0, #0xFF
MOVGT           R0, R1
LDRB            R1, [R5,#1]
LDRB            R2, [SP,#0x28+var_1B]
LDRB            LR, [SP,#0x28+var_19]
AND             R0, R0, #0xFF
ADD             R2, R2, R1
CMP             R2, #0xFF
MOV             R1, #0xFF
MOVGT           R2, R1
LDRB            R1, [R5,#2]
BIC             R12, R12, #0xFF
MOV             R2, R2,LSL#8
ADD             R1, R1, R3
CMP             R1, #0xFF
MOV             R3, #0xFF
MOVGT           R1, R3
LDRB            R3, [R5,#3]
ORR             R0, R0, R12
AND             R2, R2, #0xFF00
BIC             R0, R0, #0xFF00
ADD             R3, R3, LR
ORR             R0, R0, R2
CMP             R3, #0xFF
MOV             R4, #0xFF
MOV             R1, R1,LSL#16
MOVGT           R3, R4
AND             R2, R1, #0xFF0000
BIC             R0, R0, #0xFF0000
ORR             R0, R0, R2
BIC             R0, R0, #0xFF000000
ORR             R0, R0, R3,LSL#24
STR             R0, [R5]
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
