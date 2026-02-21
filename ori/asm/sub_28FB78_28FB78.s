PUSH            {R4-R9,LR}
MOV             R4, R0
SUB             SP, SP, #0x2C
MOV             R9, #0
LDR             R0, [R0,#4]
ADD             R0, R0, #0x12C00
ADD             R0, R0, #0x1C
STRB            R9, [R0]
LDR             R0, [R4,#4]
ADD             R7, R0, #0xE4
ADD             R5, R0, #0x12400
ADD             R6, R0, #0x64 ; 'd'
ADD             R5, R5, #0x3A8
MOV             R1, R7
ADD             R0, SP, #0x48+var_44
BL              sub_29835C
LDR             R0, [SP,#0x48+var_44]
LDR             R1, [R5]
ADD             R8, SP, #0x48+var_44
CMP             R1, R0
BEQ             loc_28FC30
LDR             R0, [R5,#8]
ADD             R2, R5, #4
CMP             R0, R2
BNE             loc_28FE30
CMP             R1, #0
MOVNE           R0, R1
BEQ             loc_28FBF4
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R0, [SP,#0x48+var_44]
STR             R0, [R5],#4
ADD             R0, R8, #4
CMP             R0, R5
LDRNE           R1, [SP,#0x48+var_3C]
CMPNE           R1, R5
BEQ             loc_28FC30
MOV             R3, R1
LDM             R5, {R1,R2}
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R3, [R5,#4]
STR             R5, [R3]
STR             R5, [SP,#0x48+var_3C]
STR             R0, [R5]
LDR             R1, [SP,#0x48+var_3C]
ADD             R0, SP, #0x48+var_40
CMP             R1, R0
BNE             loc_28FC58
LDR             R0, [SP,#0x48+var_44]
CMP             R0, #0
BEQ             loc_28FC58
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x48+var_40]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             R0, R7, #0x12400
ADD             R0, R0, #0x2C4
ADD             R1, SP, #0x48+var_38
LDR             R2, [R0],#4
STR             R0, [SP,#0x48+var_34]
STR             R2, [SP,#0x48+var_38]
LDR             R3, [R0,#4]
ADD             R2, SP, #0x48+var_34
STR             R3, [SP,#0x48+var_30]
STR             R2, [R3]
STR             R2, [R0,#4]
LDR             R0, [R6,#0x7C]
LDR             R3, [R6,#0x78]
LDR             R2, =0x2AAAAAAB
SUB             R3, R0, R3
SMULL           R3, R2, R2, R3
MOV             R3, R2,ASR#1
SUB             R2, R3, R2,ASR#31
ADD             R2, R2, #1
CMP             R2, #0xA
BHI             loc_28FCEC
CMP             R0, #0
BEQ             loc_28FCE0
LDR             R2, [SP,#0x48+var_38]
ADD             R1, R1, #4
STR             R2, [R0],#4
STR             R1, [R0]
LDR             R1, [SP,#0x48+var_30]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [SP,#0x48+var_30]
LDR             R0, [R6,#0x7C]
ADD             R0, R0, #0xC
STR             R0, [R6,#0x7C]
LDR             R0, [SP,#0x48+var_38]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
LDR             R1, [SP,#0x48+var_30]
ADD             R0, SP, #0x48+var_34
CMP             R1, R0
BNE             loc_28FD24
LDR             R0, [SP,#0x48+var_38]
CMP             R0, #0
BEQ             loc_28FD24
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x48+var_34]
ADD             R7, R7, #0x12400
MOV             R5, #1
ADD             R7, R7, #0x2B8
STR             R1, [R0,#4]
STR             R0, [R1]
STRB            R5, [R7]
LDR             R0, [R4,#8]
MOV             R1, R5
BL              sub_14C450
LDR             R0, [R4,#8]
STRB            R5, [R0,#0xF1]
LDR             R0, [R4,#8]
LDR             R1, [R4,#4]
LDR             R2, [R0]
LDR             R1, [R1,#0x14]
LDR             R2, [R2,#0x20]
ADD             R1, R1, #0x4C ; 'L'
BLX             R2
ADD             R0, R4, #4
LDM             R0, {R0,R5}
ADD             R0, R0, #0xE4
BL              sub_5CDD40
LDR             R2, [R5]
MOV             R1, R0
MOV             R0, R5
LDR             R3, [R2,#0x58]
MOV             R2, #0
BLX             R3
LDR             R0, [R4,#8]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #9
BL              sub_14C548
LDR             R0, [R4,#8]
MOV             R1, #0
BL              sub_14C3E8
LDR             R7, =off_6CE970
LDR             R0, [R4,#4]
LDR             R1, [R7]
LDR             R0, [R0,#0x14]
ADD             R5, R1, #0x10C000
ADD             R5, R5, #0x330
ADD             R6, R0, #0x80
MOV             R0, R5
BL              sub_5A26D0
LDM             R6, {R0-R2}
ADD             R3, R5, #0x1C
ADD             R5, R5, #4
STM             R3, {R0-R2}
STM             R5, {R0-R2}
LDR             R0, [R4,#4]
LDR             R1, [R7]
LDR             R0, [R0,#0x14]
ADD             R5, R1, #0x10C000
ADD             R5, R5, #0x3D8
ADD             R6, R0, #0x8C
MOV             R0, R5
BL              sub_5A26D0
LDM             R6, {R0-R2}
ADD             R3, R5, #0x1C
ADD             R5, R5, #4
STM             R3, {R0-R2}
STM             R5, {R0-R2}
STRB            R9, [R4,#0x894]
ADD             SP, SP, #0x2C ; ','
POP             {R4-R9,PC}
LDR             R2, [R5,#4]
ADD             R1, R5, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R5,#4]
STR             R1, [R5,#8]
B               loc_28FBF4
