PUSH            {R4-R11,LR}
MOV             R6, R0
SUB             SP, SP, #0x1C
MOV             R10, #1
LDRB            R0, [R0,#0x1E2]
LDR             R8, =off_6CE970
ADD             R0, R0, #1
STRB            R0, [R6,#0x1E2]
LDR             R0, =0x10D4D8
LDR             R2, [R8]
LDRB            R1, [R6,#0x1E1]
ADD             R0, R0, R2; loc_10D4D8
LDRB            R2, [R0,#(loc_10D96C+1 - 0x10D4D8)]
TST             R1, R10,LSL R2
BEQ             loc_21C794
BL              sub_5EC344
CMP             R0, #0
BEQ             loc_21C794
LDR             R0, =0x10E0A4
LDR             R2, [R8]
LDRB            R1, [R6,#0x1E1]
ADD             R0, R0, R2; loc_10E0A4
LDRB            R2, [R0,#(loc_10E538+1 - 0x10E0A4)]
TST             R1, R10,LSL R2
BEQ             loc_21C794
BL              sub_5EC344
CMP             R0, #0
MOVNE           R0, #2
BNE             loc_21C798
MOV             R0, #1
LDRB            R1, [R6,#0x1E2]
CMP             R0, R1
BNE             loc_21C968
MOV             R0, R6
BL              sub_21C264
LDR             R0, =0x10645C
LDR             R1, [R8]
MOV             R7, #0
ADD             R0, R0, R1; loc_10645C
LDR             R0, [R0,#(loc_106460 - 0x10645C)]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R4, #0
ADDNE           R4, R0, #0x1AC
CMP             R4, #0
MOVNE           R9, R7
ADDNE           R11, SP, #0x40+var_38
BEQ             loc_21C968
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
LDRB            R1, [R6,#0x1E1]
LDRB            R2, [R0,#0x495]
MOV             R5, R0
TST             R1, R10,LSL R2
BEQ             loc_21C95C
BL              sub_5EC344
CMP             R0, #0
STRNE           R9, [SP,#0x40+var_38]
STRNE           R9, [SP,#0x40+var_34]
BEQ             loc_21C95C
LDR             R0, [R8]
BL              sub_5EE458
CMP             R0, #0x1000
SUBNE           R1, R0, #0x1000
SUBSNE          R1, R1, #1
BEQ             loc_21C854
SUB             R1, R0, #0x1000
SUBS            R1, R1, #2
SUBNE           R1, R0, #0x1000
SUBSNE          R1, R1, #3
BEQ             loc_21C854
SUB             R1, R0, #0x1000
SUBS            R1, R1, #0x10
SUBNE           R1, R0, #0x1000
SUBSNE          R1, R1, #0x11
BNE             loc_21C8B8
LDR             R0, [R8]
STR             R11, [SP,#0x40+var_40]
LDRB            R1, [R5,#0x495]
MOV             R3, #1
MOV             R2, #0x35 ; '5'
BL              sub_5EEC7C
CMP             R0, #0
NOP
BEQ             loc_21C8B8
ADD             R0, SP, #0x40+var_30
MOV             R1, #0
MOV             R2, #1
BL              sub_1CCBB4
MOV             R2, #1
MOV             R1, #7
ADD             R0, SP, #0x40+var_30
BL              sub_1CCBB4
LDR             R1, [SP,#0x40+var_38]
MOV             R0, #0x64 ; 'd'
STRB            R0, [SP,#0x40+var_2F]
STRH            R1, [SP,#0x40+var_28]
MOV             R2, #0
ADD             R1, SP, #0x40+var_30
ADD             R0, R5, #0x40 ; '@'
BL              sub_1CE4EC
LDR             R0, [R8]
BL              sub_5EE458
CMP             R0, #0x1000
SUBNE           R1, R0, #0x1000
SUBSNE          R1, R1, #1
BEQ             loc_21C8F8
SUB             R1, R0, #0x1000
SUBS            R1, R1, #2
SUBNE           R1, R0, #0x1000
SUBSNE          R1, R1, #3
BEQ             loc_21C8F8
SUB             R1, R0, #0x1000
SUBS            R1, R1, #0x10
SUBNE           R1, R0, #0x1000
SUBSNE          R1, R1, #0x11
BNE             loc_21C95C
LDR             R0, [R8]
STR             R11, [SP,#0x40+var_40]
LDRB            R1, [R5,#0x495]
MOV             R3, #1
MOV             R2, #0x36 ; '6'
BL              sub_5EEC7C
CMP             R0, #0
NOP
BEQ             loc_21C95C
ADD             R0, SP, #0x40+var_30
MOV             R1, #0
MOV             R2, #1
BL              sub_1CCBB4
MOV             R2, #1
MOV             R1, #8
ADD             R0, SP, #0x40+var_30
BL              sub_1CCBB4
LDR             R0, [SP,#0x40+var_38]
MOV             R1, #0x64 ; 'd'
STRB            R1, [SP,#0x40+var_2F]
STRH            R0, [SP,#0x40+var_28]
MOV             R2, #0
ADD             R1, SP, #0x40+var_30
ADD             R0, R5, #0x40 ; '@'
BL              sub_1CE4EC
LDR             R4, [R4,#8]
CMP             R4, R7
BNE             loc_21C7E0
ADD             SP, SP, #0x1C
POP             {R4-R11,PC}
