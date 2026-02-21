PUSH            {R4-R11,LR}
MOV             R4, R0
SUB             SP, SP, #0x2C
MOV             R10, #0
MOV             R11, #1
STRD            R10, R11, [R4]
STR             R10, [R0,#8]
STR             R10, [R0,#0xC]!
STR             R10, [R0,#4]
STR             R10, [R0,#8]
LDR             R0, =off_6CE970
LDR             R0, [R0]
ADD             R0, R0, #0x68 ; 'h'
STR             R0, [R4]
LDR             R0, =off_6CE388
LDR             R0, [R0]
LDR             R0, [R0,#0x98]
LDR             R2, =dword_6D1F40
LDRD            R0, R1, [R0,#0x28]
BL              sub_47EADC
MOV             R8, R0
MOV             R1, R0
MOV             R0, R4
BL              sub_62373C
CMP             R8, #0
MOV             R5, #0
BLS             loc_1A6A58
LDR             R0, =dword_6D1F40
BL              sub_546DB0
ADD             R1, R4, #0x10
LDR             R3, [R4,#0xC]
LDM             R1, {R1,R2}
MOV             R0, R0,LSL#2
SUB             R3, R1, R3
MOV             R6, R0,LSR#16
ADD             R12, R3, #1
CMP             R12, R2
ADD             R0, R4, #0xC
BLS             loc_1A6748
LDM             R4, {R0,R2}
MOV             R1, R11
MOV             R7, R12
STR             R0, [SP,#0x50+var_40]
CMP             R2, #1
MOVHI           R1, R2
ADD             R2, SP, #0x50+var_38
MOV             R0, #0
STR             R1, [SP,#0x50+var_3C]
STM             R2, {R0,R10}
STR             R10, [SP,#0x50+var_30]
STR             R10, [SP,#0x50+var_2C]
LDR             R0, [R4,#0x14]
MOV             R0, R0,LSL#1
CMP             R0, R7
MOVCC           R0, R7
CMP             R0, #0
BLS             loc_1A6948
LDR             R1, [SP,#0x50+var_40]
CMP             R1, #0
BEQ             loc_1A67CC
LDR             R9, [SP,#0x50+var_3C]
MOV             R3, #0
LDR             R1, [SP,#0x50+var_40]
CMP             R9, #1
ADDHI           R0, R0, R9
SUBHI           R0, R0, #1
MOV             R2, R3
STR             R0, [SP,#0x50+var_50]
BL              sub_1143B4
CMP             R0, #0
STR             R0, [SP,#0x50+var_44]
BEQ             loc_1A67CC
CMP             R9, #1
BLS             loc_1A6760
MOV             R7, R0
LDR             R0, [SP,#0x50+var_50]
LDR             R1, [SP,#0x50+var_30]
LDR             R2, [SP,#0x50+var_34]
CMP             R9, R0
SUBLS           R0, R0, R9
ADDLS           R0, R0, #1
MOVHI           R0, R10
SUB             R1, R1, R2
CMP             R1, R0
BHI             loc_1A67B4
STR             R0, [SP,#0x50+var_2C]
MOV             R1, R9
MOV             R0, R7
BL              sub_2FEFCC
CMP             R1, #0
SUBNE           R0, R9, R1
ADDNE           R7, R7, R0
LDRD            R0, R1, [SP,#0x50+var_34]
MOV             R12, R7
CMP             R0, R1
BEQ             loc_1A673C
MOVS            R2, R7
LDRBNE          R3, [R0]
ADD             R0, R0, #1
STRBNE          R3, [R7]
CMP             R0, R1
ADD             R7, R2, #1
BNE             loc_1A6720
STR             R7, [SP,#0x50+var_30]
STR             R12, [SP,#0x50+var_34]
B               loc_1A67B4
CMP             R1, #0
STRBNE          R6, [R1]
LDR             R1, [R0,#4]
ADD             R1, R1, #1
STR             R1, [R0,#4]
B               loc_1A6A4C
LDR             R2, [SP,#0x50+var_30]
LDR             R3, [SP,#0x50+var_34]
LDR             R1, [SP,#0x50+var_50]
SUB             R2, R2, R3
CMP             R2, R1
BHI             loc_1A67B4
LDR             R2, [SP,#0x50+var_30]
STR             R1, [SP,#0x50+var_2C]
MOV             LR, R0
CMP             R3, R2
MOV             R1, R3
BEQ             loc_1A67AC
MOVS            R3, R0
LDRBNE          R12, [R1]
ADD             R1, R1, #1
STRBNE          R12, [R0]
CMP             R1, R2
ADD             R0, R3, #1
BNE             loc_1A6790
STR             R0, [SP,#0x50+var_30]
STR             LR, [SP,#0x50+var_34]
LDR             R0, [SP,#0x50+var_38]
LDR             R1, [SP,#0x50+var_44]
CMP             R0, #0
STR             R1, [SP,#0x50+var_38]
BEQ             loc_1A6948
B               loc_1A6940
LDR             R0, [SP,#0x50+var_2C]
CMP             R0, R7
BCS             loc_1A6948
LDR             R0, [SP,#0x50+var_40]
CMP             R0, #0
BEQ             loc_1A68A8
LDR             R9, [SP,#0x50+var_3C]
MOV             R3, #0
LDR             R1, [SP,#0x50+var_40]
CMP             R9, #1
ADDHI           R0, R7, R9
SUBHI           R7, R0, #1
MOV             R2, R3
MOV             R0, R7
BL              sub_1143B4
CMP             R0, #0
STR             R0, [SP,#0x50+var_4C]
BEQ             loc_1A68B0
CMP             R9, #1
BLS             loc_1A68DC
LDR             R1, [SP,#0x50+var_30]
LDR             R2, [SP,#0x50+var_34]
CMP             R9, R7
STR             R0, [SP,#0x50+var_50]
SUBLS           R0, R7, R9
ADDLS           R0, R0, #1
MOVHI           R0, R10
SUB             R1, R1, R2
CMP             R1, R0
BHI             loc_1A692C
STR             R0, [SP,#0x50+var_2C]
LDR             R0, [SP,#0x50+var_50]
MOV             R1, R9
BL              sub_2FEFCC
CMP             R1, #0
LDREQ           R0, [SP,#0x50+var_50]
BEQ             loc_1A6870
LDR             R0, [SP,#0x50+var_50]
SUB             R1, R9, R1
ADD             R0, R0, R1
STR             R0, [SP,#0x50+var_50]
ADD             R3, SP, #0x50+var_34
MOV             R7, R0
LDM             R3, {R1,R2}
CMP             R1, R2
BEQ             loc_1A68A0
MOVS            R3, R0
LDRBNE          R12, [R1]
ADD             R1, R1, #1
STRBNE          R12, [R0]
CMP             R1, R2
ADD             R0, R3, #1
BNE             loc_1A6884
STR             R7, [SP,#0x50+var_34]
B               loc_1A6928
CMP             R7, #0
BEQ             loc_1A6948
LDR             R0, [SP,#0x50+var_38]
STR             R10, [SP,#0x50+var_2C]
STR             R10, [SP,#0x50+var_34]
CMP             R0, #0
STR             R10, [SP,#0x50+var_30]
STR             R10, [SP,#0x50+var_38]
BLNE            sub_2FF5D4
LDR             R0, [SP,#0x50+var_38]
CMP             R0, #0
BEQ             loc_1A6A4C
B               loc_1A6A44
LDR             R1, [SP,#0x50+var_30]
LDR             R2, [SP,#0x50+var_34]
SUB             R1, R1, R2
CMP             R1, R7
BHI             loc_1A692C
MOV             R1, R2
LDR             R2, [SP,#0x50+var_30]
MOV             LR, R0
STR             R7, [SP,#0x50+var_2C]
CMP             R1, R2
BEQ             loc_1A6924
MOVS            R3, R0
LDRBNE          R12, [R1]
ADD             R1, R1, #1
STRBNE          R12, [R0]
CMP             R1, R2
ADD             R0, R3, #1
BNE             loc_1A6908
STR             LR, [SP,#0x50+var_34]
STR             R0, [SP,#0x50+var_30]
LDR             R0, [SP,#0x50+var_38]
LDR             R1, [SP,#0x50+var_4C]
CMP             R0, #0
STR             R1, [SP,#0x50+var_38]
BEQ             loc_1A6948
NOP
BL              sub_2FF5D4
LDRD            R0, R1, [R4,#0xC]
LDR             R3, [SP,#0x50+var_2C]
ADD             R12, SP, #0x50+var_34
SUB             R2, R1, R0
CMP             R2, R3
BHI             loc_1A6994
CMP             R0, R1
LDREQ           R0, [SP,#0x50+var_34]
LDRNE           R2, [SP,#0x50+var_34]
STREQ           R0, [SP,#0x50+var_30]
BEQ             loc_1A6994
CMP             R2, #0
LDRBNE          R3, [R0]
ADD             R0, R0, #1
STRBNE          R3, [R2]
CMP             R0, R1
ADD             R2, R2, #1
BNE             loc_1A6974
STR             R2, [R12,#4]
LDR             R1, [SP,#0x50+var_30]
LDR             R2, [SP,#0x50+var_34]
LDR             R0, [SP,#0x50+var_2C]
SUB             R1, R1, R2
ADD             R1, R1, #1
CMP             R1, R0
BHI             loc_1A69C8
LDR             R0, [SP,#0x50+var_30]
CMP             R0, #0
STRBNE          R6, [R0]
LDR             R0, [SP,#0x50+var_30]
ADD             R0, R0, #1
STR             R0, [SP,#0x50+var_30]
LDRD            R6, R7, [SP,#0x50+var_40]
LDM             R4, {R3,R9}
ADD             R12, R4, #0x14
STR             R3, [SP,#0x50+var_40]
STR             R9, [SP,#0x50+var_3C]
STRD            R6, R7, [R4]
LDR             R6, [R4,#8]
LDR             R2, [SP,#0x50+var_38]
STR             R6, [SP,#0x50+var_38]
STR             R2, [R4,#8]
LDR             R2, [R4,#0xC]
LDR             R1, [SP,#0x50+var_34]
STR             R2, [SP,#0x50+var_34]
STR             R1, [R4,#0xC]
LDR             R1, [R4,#0x10]
LDR             R0, [SP,#0x50+var_30]
STR             R1, [SP,#0x50+var_30]
STR             R0, [R4,#0x10]
LDR             R0, [SP,#0x50+var_2C]
LDR             R1, [R4,#0x14]
STR             R0, [R12]
LDR             R0, [SP,#0x50+var_38]
STR             R10, [SP,#0x50+var_2C]
STR             R10, [SP,#0x50+var_34]
CMP             R0, #0
STR             R10, [SP,#0x50+var_30]
STR             R10, [SP,#0x50+var_38]
BLNE            sub_2FF5D4
LDR             R0, [SP,#0x50+var_38]
CMP             R0, #0
BEQ             loc_1A6A4C
NOP
BL              sub_2FF5D4
ADD             R5, R5, #1
CMP             R5, R8
BCC             loc_1A660C
ADD             SP, SP, #0x2C ; ','
MOV             R0, R4
POP             {R4-R11,PC}
