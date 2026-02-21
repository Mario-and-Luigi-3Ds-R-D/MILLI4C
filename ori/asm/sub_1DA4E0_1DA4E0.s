PUSH            {R4-R11,LR}
MOV             R6, R0
SUB             SP, SP, #0x1C
LDR             R8, =off_6CE970
LDR             R0, [R8]
BL              sub_528E64
MOV             R5, R0
LDR             R0, [R0,#0x18]
LDR             R4, [R5,#0x2A8]
STR             R0, [SP,#0x40+var_30]
BL              sub_47FFCC
CMP             R0, #0
CMPNE           R4, #0
BEQ             loc_1DA52C
MOV             R0, R4
BL              sub_5EC344
CMP             R0, #0
LDRNE           R0, [R4,#0x18]
BNE             loc_1DA530
MOV             R0, #0
LDR             R11, =unk_656B78
MOV             R4, #0
MOV             R7, #1
ADD             R9, SP, #0x40+var_30
MOV             R10, R4
STR             R0, [SP,#0x40+var_2C]
LDR             R0, [R9,R4,LSL#2]
CMP             R0, #0
BEQ             loc_1DA568
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
MOVNE           R7, #0
BEQ             loc_1DA610
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_1DA548
CMP             R7, #0
BEQ             loc_1DA774
LDR             R0, [R8]
BL              sub_5EE4C4
CMP             R0, #0
NOP
BEQ             loc_1DA5F8
LDR             R0, [R8]
BL              sub_5EE764
CMP             R0, #0
NOP
BNE             loc_1DA774
LDR             R7, =0x717
MOV             R4, #0
SUB             R11, R7, #0x184
LDR             R2, [R9,R4,LSL#2]
CMP             R2, #0
LDRBNE          R0, [R2,#0xF2]
CMPNE           R0, #0
BEQ             loc_1DA5EC
LDR             R0, [R8]
ADD             R3, R2, #0x50 ; 'P'
MOV             R1, R11
STMEA           SP, {R7,R10}
BL              sub_52C764
ADD             R1, R6, R4,LSL#2
ADD             R1, R1, #0x20800
ADD             R1, R1, #0x2DC
STR             R0, [R1]
STRH            R10, [R0,#0xA]
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_1DA5B0
LDR             R1, =loc_19CF44
LDR             R0, [R8]
LDR             R1, [R0,R1]
TST             R1, #0x80
BEQ             loc_1DA64C
B               loc_1DA740
LDR             R0, [R9,R4,LSL#2]
BL              sub_5C55B8
LDRB            R1, [R11,R4]
CMP             R0, R1
BEQ             loc_1DA568
LDR             R0, [R9,R4,LSL#2]
BL              sub_14D83C
LDRB            R1, [R11,R4]
LDR             R0, [R9,R4,LSL#2]
MOV             R3, #0x100
MOV             R2, #0
BL              sub_14C430
LDR             R0, [R9,R4,LSL#2]
STRB            R10, [R0,#0xF3]
B               loc_1DA568
ADD             R7, SP, #0x40+var_38
MOV             R4, #0
STR             R10, [SP,#0x40+var_38]
STR             R10, [SP,#0x40+var_34]
STR             R7, [SP,#0x40+var_40]
LDRB            R1, [R5,#0x495]
MOV             R11, R4
MOV             R3, #1
MOV             R2, #0x20 ; ' '
BL              sub_5EEC7C
LDR             R9, =0x3E7
CMP             R0, #0
BEQ             loc_1DA698
LDR             R1, [SP,#0x40+var_38]
MOV             R3, R9
MOV             R2, #0
MOV             R0, R4
BL              sub_47FEF8
MOV             R4, R0
LDR             R0, [R8]
STR             R7, [SP,#0x40+var_40]
LDRB            R1, [R5,#0x495]
MOV             R3, #1
MOV             R2, #0x21 ; '!'
BL              sub_5EEC7C
CMP             R0, #0
NOP
BEQ             loc_1DA6D4
LDR             R1, [SP,#0x40+var_38]
MOV             R3, R9
MOV             R2, #0
MOV             R0, R11
BL              sub_47FEF8
MOV             R11, R0
LDR             R0, [R8]
STR             R7, [SP,#0x40+var_40]
LDRB            R1, [R5,#0x495]
MOV             R3, #1
MOV             R2, #0x22 ; '"'
BL              sub_5EEC7C
CMP             R0, #0
NOP
BEQ             loc_1DA728
LDR             R1, [SP,#0x40+var_38]
MOV             R3, R9
MOV             R2, #0
MOV             R0, R4
BL              sub_47FEF8
MOV             R4, R0
LDR             R1, [SP,#0x40+var_34]
MOV             R3, R9
MOV             R2, #0
MOV             R0, R11
BL              sub_47FEF8
MOV             R11, R0
MOV             R3, #1
MOV             R2, R11
MOV             R1, R4
MOV             R0, R5
STR             R10, [SP,#0x40+var_40]
BL              sub_4F18FC
LDR             R0, [R8]
BL              sub_5EE8F4
ADD             R4, R6, #0x20000
ADD             R4, R4, #0xF00
STRH            R0, [R4,#8]
LDR             R0, [R8]
BL              sub_5EEA38
LDR             R2, =off_656B94
STRH            R0, [R4,#0xA]
ADD             R0, R6, #0x20800
ADD             R0, R0, #0x2BC
LDM             R2, {R1,R2}
STM             R0, {R1,R2}
ADD             SP, SP, #0x1C
POP             {R4-R11,PC}
