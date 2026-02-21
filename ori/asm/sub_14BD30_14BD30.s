PUSH            {R4-R9,LR}
SUB             SP, SP, #0x2C
MOV             R5, R0
MOV             R4, R1
MOV             R7, R2
ADD             R0, SP, #0x48+var_40
BL              sub_14B820
LDR             R0, [R5,#0xEC]
MOV             R6, #0
TST             R0, #0x20000
LDRNE           R0, [R5,#0x20]
CMPNE           R0, #0
SUBSNE          R0, R0, #0xD8
BEQ             loc_14BD80
LDR             R1, [R0]
MOV             R2, R7
LDR             R3, [R1,#0x44]
ADD             R1, SP, #0x48+var_40
BLX             R3
MOV             R6, #1
LDR             R0, [R5,#0x9C]
STR             R0, [R4]
LDR             R0, [R5,#0xA0]
STR             R0, [R4,#4]
LDR             R0, [R5]
LDR             R1, [R0,#0x4C]
MOV             R0, R5
BLX             R1
MOV             R8, R0
LDR             R0, [R5]
LDR             R1, [R0,#0x50]
MOV             R0, R5
BLX             R1
CMP             R8, #0
BEQ             loc_14BDE8
MOV             R1, #2
MOV             R0, R8
BL              sub_5F163C
LDR             R0, [R0]
MOV             R1, #3
STR             R0, [R4,#8]
MOV             R0, R8
BL              sub_5F163C
LDR             R0, [R0]
NOP
B               loc_14BDFC
CMP             R0, #0
BEQ             loc_14BE00
LDR             R1, [R0,#0xF0]
STR             R1, [R4,#8]
LDR             R0, [R0,#0xF4]
STR             R0, [R4,#0xC]
CMP             R6, #0
BEQ             loc_14C070
LDRB            R1, [SP,#0x48+var_40]
LDRB            R2, [R4]
LDRB            R3, [SP,#0x48+var_3F]
LDRB            R12, [R4,#1]
LDRB            LR, [SP,#0x48+var_3E]
SMULBB          R2, R2, R1
LDRB            R6, [R4,#2]
BIC             R1, R0, #0xFF
SMULBB          R0, R12, R3
LDRB            R8, [SP,#0x48+var_3D]
SMULBB          R12, R6, LR
ADD             LR, R2, R2,LSL#7
ADD             R2, LR, R2,LSL#15
LDRB            R9, [R4,#3]
MOV             R2, R2,LSL#1
ADD             R6, R0, R0,LSL#7
ORR             R2, R1, R2,LSR#24
ADD             LR, R12, R12,LSL#7
ADD             R0, R6, R0,LSL#15
ADD             R12, LR, R12,LSL#15
SMULBB          R3, R9, R8
MOV             R0, R0,LSR#23
MOV             R1, R12,LSR#23
MOV             R0, R0,LSL#8
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
STR             R0, [R4]
LDRB            R2, [SP,#0x48+var_3C]
LDRB            R3, [R4,#4]
ADD             R0, R4, #4
MOV             R1, #0xFF
ADD             R12, R3, R2
CMP             R12, #0xFF
MOVGT           R12, R1
LDRB            R1, [R0,#1]
LDRB            R2, [SP,#0x48+var_3B]
LDRB            R3, [SP,#0x48+var_3A]
LDRB            LR, [SP,#0x48+var_39]
ADD             R1, R1, R2
CMP             R1, #0xFF
MOV             R2, #0xFF
MOVGT           R1, R2
LDRB            R2, [R0,#2]
AND             R12, R12, #0xFF
BIC             R6, R6, #0xFF
ADD             R2, R2, R3
CMP             R2, #0xFF
MOV             R3, #0xFF
MOVGT           R2, R3
LDRB            R3, [R0,#3]
MOV             R2, R2,LSL#16
AND             R2, R2, #0xFF0000
ADD             R3, R3, LR
CMP             R3, #0xFF
MOV             LR, #0xFF
MOVGT           R3, LR
MOV             LR, R1,LSL#8
ORR             R1, R6, R12
AND             R12, LR, #0xFF00
BIC             R1, R1, #0xFF00
ORR             R1, R1, R12
BIC             R1, R1, #0xFF0000
ORR             R1, R1, R2
BIC             R1, R1, #0xFF000000
ORR             R1, R1, R3,LSL#24
STR             R1, [R0]
LDRB            R8, [SP,#0x48+var_38]
LDRB            R2, [R4,#8]
LDRB            R6, [SP,#0x48+var_37]
LDRB            R12, [R4,#9]
LDRB            R9, [SP,#0x48+var_36]
SMULBB          R2, R2, R8
LDRB            LR, [R4,#0xA]
SMULBB          R6, R12, R6
BIC             R12, R1, #0xFF
ADD             R1, R2, R2,LSL#7
ADD             R2, R1, R2,LSL#15
ADD             R1, R6, R6,LSL#7
LDRB            R3, [SP,#0x48+var_35]
LDRB            R8, [R4,#0xB]
ADD             R1, R1, R6,LSL#15
SMULBB          LR, LR, R9
MOV             R2, R2,LSL#1
SMULBB          R3, R8, R3
MOV             R6, R2,LSR#24
ADD             R8, LR, LR,LSL#7
ADD             R2, R8, LR,LSL#15
MOV             R1, R1,LSR#23
MOV             R2, R2,LSR#23
ORR             R12, R12, R6
MOV             R1, R1,LSL#8
BIC             R6, R12, #0xFF00
ADD             LR, R3, R3,LSL#7
AND             R1, R1, #0xFF00
MOV             R12, R2,LSL#16
ADD             R3, LR, R3,LSL#15
ORR             R2, R6, R1
MOV             R1, R3,LSR#23
AND             R3, R12, #0xFF0000
BIC             R2, R2, #0xFF0000
ORR             R2, R2, R3
ADD             R0, R4, #8
BIC             R2, R2, #0xFF000000
ORR             R1, R2, R1,LSL#24
STR             R1, [R0]
LDRB            R1, [SP,#0x48+var_34]
LDRB            R2, [R4,#0xC]
ADD             R3, R4, #0xC
MOV             R0, #0xFF
ADD             R12, R2, R1
CMP             R12, #0xFF
MOVGT           R12, R0
LDRB            R0, [R3,#1]
LDRB            R1, [SP,#0x48+var_33]
LDRB            R2, [SP,#0x48+var_32]
LDRB            LR, [SP,#0x48+var_31]
ADD             R0, R0, R1
CMP             R0, #0xFF
MOV             R1, #0xFF
MOVGT           R0, R1
LDRB            R1, [R3,#2]
AND             R12, R12, #0xFF
BIC             R6, R6, #0xFF
ADD             R1, R1, R2
CMP             R1, #0xFF
MOV             R2, #0xFF
MOVGT           R1, R2
LDRB            R2, [R3,#3]
MOV             R1, R1,LSL#16
ADD             R2, R2, LR
CMP             R2, #0xFF
MOV             LR, #0xFF
MOVGT           R2, LR
MOV             LR, R0,LSL#8
ORR             R0, R6, R12
AND             R12, LR, #0xFF00
BIC             R0, R0, #0xFF00
ORR             R0, R0, R12
AND             R12, R1, #0xFF0000
BIC             R0, R0, #0xFF0000
ORR             R0, R0, R12
BIC             R0, R0, #0xFF000000
ORR             R0, R0, R2,LSL#24
STR             R0, [R3]
LDRB            R0, [R4,#3]
LDRB            R1, [R5,#0xFB]
CMP             R7, #0
SMULBB          R0, R0, R1
ADD             R1, R0, R0,LSL#7
ADD             R0, R1, R0,LSL#15
BIC             R2, R1, #0xFF
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#24
STRB            R0, [R4,#3]
LDRB            R1, [R4]
LDRB            R3, [R5,#0xA4]
LDRB            R12, [R4,#1]
LDRB            LR, [R5,#0xA5]
LDRB            R6, [R4,#2]
SMULBB          R1, R1, R3
LDRB            R8, [R5,#0xA6]
SMULBB          R12, R12, LR
LDRB            R3, [R5,#0xA7]
SMULBB          LR, R6, R8
ADD             R6, R1, R1,LSL#7
SMULBB          R3, R0, R3
ADD             R0, R12, R12,LSL#7
ADD             R1, R6, R1,LSL#15
ADD             R0, R0, R12,LSL#15
MOV             R1, R1,LSL#1
ADD             R6, LR, LR,LSL#7
MOV             R12, R1,LSR#24
ADD             R1, R6, LR,LSL#15
ORR             R2, R2, R12
MOV             R0, R0,LSR#23
MOV             R1, R1,LSR#23
BIC             LR, R2, #0xFF00
MOV             R0, R0,LSL#8
MOV             R2, R1,LSL#16
AND             R0, R0, #0xFF00
ADD             R12, R3, R3,LSL#7
ORR             R1, LR, R0
ADD             R3, R12, R3,LSL#15
AND             R2, R2, #0xFF0000
BIC             R1, R1, #0xFF0000
MOV             R0, R3,LSR#23
ORR             R1, R1, R2
BIC             R1, R1, #0xFF000000
ORR             R0, R1, R0,LSL#24
STR             R0, [R4]
BEQ             loc_14C290
LDR             R1, =sub_4651F0
MOV             R3, #2
MOV             R2, #4
MOV             R0, SP
BLX             sub_1002F4
LDR             R0, =off_6CE970
MOV             R2, R5
MOV             R1, SP
LDR             R0, [R0]
BL              sub_52A7A0
CMP             R0, #0
NOP
BEQ             loc_14C290
LDRB            R2, [SP,#0x48+var_48]
LDRB            R5, [R4]
LDRB            R1, [SP,#0x48+var_47]
LDRB            R3, [R4,#1]
LDRB            R12, [SP,#0x48+var_46]
SMULBB          R5, R5, R2
LDRB            R6, [R4,#2]
BIC             R2, R0, #0xFF
SMULBB          R1, R3, R1
ADD             R0, R5, R5,LSL#7
LDRB            LR, [SP,#0x48+var_45]
LDRB            R7, [R4,#3]
ADD             R0, R0, R5,LSL#15
SMULBB          R12, R6, R12
ADD             R5, R1, R1,LSL#7
MOV             R0, R0,LSL#1
ADD             R5, R5, R1,LSL#15
SMULBB          R3, R7, LR
MOV             R1, R0,LSR#24
ADD             LR, R12, R12,LSL#7
ADD             R12, LR, R12,LSL#15
ORR             R2, R2, R1
MOV             R1, R12,LSR#23
MOV             R0, R5,LSR#23
BIC             R2, R2, #0xFF00
MOV             R12, R0,LSL#8
ADD             R0, R3, R3,LSL#7
AND             R12, R12, #0xFF00
ADD             R0, R0, R3,LSL#15
ORR             R2, R2, R12
MOV             R1, R1,LSL#16
BIC             R2, R2, #0xFF0000
AND             R1, R1, #0xFF0000
MOV             R0, R0,LSR#23
ORR             R1, R1, R2
BIC             R1, R1, #0xFF000000
ORR             R0, R1, R0,LSL#24
STR             R0, [R4]
LDRB            R1, [SP,#0x48+var_44]
LDRB            R2, [R4,#4]!
MOV             R0, #0xFF
LDRB            LR, [SP,#0x48+var_41]
ADD             R3, R2, R1
CMP             R3, #0xFF
MOVGT           R3, R0
LDRB            R0, [R4,#1]
LDRB            R1, [SP,#0x48+var_43]
LDRB            R2, [SP,#0x48+var_42]
AND             R3, R3, #0xFF
ADD             R0, R0, R1
CMP             R0, #0xFF
MOV             R1, #0xFF
MOVGT           R0, R1
LDRB            R1, [R4,#2]
ADD             R1, R1, R2
CMP             R1, #0xFF
MOV             R2, #0xFF
MOVGT           R1, R2
LDRB            R2, [R4,#3]
MOV             R1, R1,LSL#16
ADD             R2, R2, LR
CMP             R2, #0xFF
MOV             LR, #0xFF
MOVGT           R2, LR
BIC             LR, R12, #0xFF
MOV             R12, R0,LSL#8
ORR             R0, LR, R3
AND             R3, R12, #0xFF00
BIC             R0, R0, #0xFF00
ORR             R0, R0, R3
AND             R3, R1, #0xFF0000
BIC             R0, R0, #0xFF0000
ORR             R0, R0, R3
BIC             R0, R0, #0xFF000000
ORR             R0, R0, R2,LSL#24
STR             R0, [R4]
ADD             SP, SP, #0x2C ; ','
POP             {R4-R9,PC}
