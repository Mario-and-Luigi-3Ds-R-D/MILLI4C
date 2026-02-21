PUSH            {R0-R2,R4-R11,LR}
SUB             SP, SP, #0x18
MOV             R4, R0
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x10]
LDR             R0, =off_6CE388
LDR             R0, [R0]
LDR             R0, [R0,#0x98]
LDR             R2, =dword_6D1F40
LDRD            R0, R1, [R0,#0x48]
BL              sub_47EADC
MOV             R7, R0
ADD             R1, R0, #3
MOV             R0, R4
BL              sub_623404
ADD             R1, SP, #0x48+var_2C
MOV             R0, R4
BL              sub_623540
CMP             R7, #0
MOV             R5, #0
BLS             loc_19DFE0
MOV             R10, #1
MOV             R9, #0
MOV             R11, SP
LDR             R0, =dword_6D1F40
BL              sub_546DB0
TST             R0, #1
LDR             R0, [R4,#0x10]
LDRB            R0, [R0,#-1]
BEQ             loc_19DE60
ADD             R0, R0, #1
CMP             R0, #4
MOVCS           R6, R9
ANDCC           R6, R0, #0xFF
ADD             R1, R4, #0x10
LDR             R2, [R4,#0xC]
LDM             R1, {R1,R3}
ADD             R0, R4, #0xC
SUB             R2, R1, R2
ADD             R12, R2, #1
CMP             R12, R3
BLS             loc_19DE74
LDM             R4, {R1,R3}
MOV             R0, R10
ADD             R2, SP, #0x48+var_44
STR             R1, [SP,#0x48+var_48]
CMP             R3, #1
MOVHI           R0, R3
MOV             R1, #0
STM             R2, {R0,R1,R9}
MOV             R8, R12
STR             R9, [SP,#0x48+var_38]
STR             R9, [SP,#0x48+var_34]
LDR             R0, [R4,#0x14]
MOV             R1, R0,LSL#1
CMP             R1, R8
MOVCC           R1, R8
MOV             R0, SP
BL              sub_623404
CMP             R0, #0
NOP
BNE             loc_19DEA4
B               loc_19DE8C
CMP             R0, #0
SUBNE           R0, R0, #1
ANDNE           R6, R0, #0xFF
MOVEQ           R6, #3
B               loc_19DDEC
CMP             R1, #0
STRBNE          R6, [R1]
LDR             R1, [R0,#4]
ADD             R1, R1, #1
STR             R1, [R0,#4]
B               loc_19DFD4
MOV             R1, R8
MOV             R0, SP
BL              sub_623404
CMP             R0, #0
NOP
BEQ             loc_19DED4
LDRD            R0, R1, [R4,#0xC]
LDR             R3, [SP,#0x48+var_34]
ADD             R8, R11, #0xC
SUB             R2, R1, R0
CMP             R2, R3
BHI             loc_19DF20
CMP             R0, R1
LDREQ           R0, [SP,#0x48+var_3C]
LDRNE           R2, [SP,#0x48+var_3C]
STREQ           R0, [SP,#0x48+var_38]
BNE             loc_19DF00
B               loc_19DF20
LDR             R0, [SP,#0x48+var_40]
STR             R9, [SP,#0x48+var_34]
STR             R9, [SP,#0x48+var_3C]
CMP             R0, #0
STR             R9, [SP,#0x48+var_38]
STR             R9, [SP,#0x48+var_40]
BLNE            sub_2FF5D4
LDR             R0, [SP,#0x48+var_40]
CMP             R0, #0
BEQ             loc_19DFD4
B               loc_19DFCC
MOVS            R3, R2
LDRBNE          R12, [R0]
ADD             R0, R0, #1
STRBNE          R12, [R2]
CMP             R0, R1
ADD             R2, R3, #1
BNE             loc_19DF00
STR             R2, [R8,#4]
LDR             R1, [SP,#0x48+var_38]
LDR             R2, [SP,#0x48+var_3C]
LDR             R0, [SP,#0x48+var_34]
SUB             R1, R1, R2
ADD             R1, R1, #1
CMP             R1, R0
BHI             loc_19DF54
LDR             R0, [SP,#0x48+var_38]
CMP             R0, #0
STRBNE          R6, [R0]
LDR             R0, [SP,#0x48+var_38]
ADD             R0, R0, #1
STR             R0, [SP,#0x48+var_38]
ADD             R1, R4, #0x14
VLDM            R4, {S2-S3}
VLDMEA          SP, {S0-S1}
VSTMEA          SP, {S2-S3}
VSTM            R4, {S0-S1}
LDR             R12, [R4,#8]
LDR             R0, [SP,#0x48+var_40]
STR             R12, [SP,#0x48+var_40]
STR             R0, [R4,#8]
LDR             R0, [R4,#0xC]
LDR             R3, [SP,#0x48+var_3C]
STR             R0, [SP,#0x48+var_3C]
STR             R3, [R4,#0xC]
LDR             R0, [R4,#0x10]
LDR             R2, [SP,#0x48+var_38]
STR             R0, [SP,#0x48+var_38]
STR             R2, [R4,#0x10]
LDR             R0, [SP,#0x48+var_34]
LDR             R2, [R4,#0x14]
STR             R0, [R1]
LDR             R0, [SP,#0x48+var_40]
STR             R9, [SP,#0x48+var_34]
STR             R9, [SP,#0x48+var_3C]
CMP             R0, #0
STR             R9, [SP,#0x48+var_38]
STR             R9, [SP,#0x48+var_40]
BLNE            sub_2FF5D4
LDR             R0, [SP,#0x48+var_40]
CMP             R0, #0
BEQ             loc_19DFD4
NOP
BL              sub_2FF5D4
ADD             R5, R5, #1
CMP             R5, R7
BCC             loc_19DDC4
LDR             R0, [R4,#0x10]
SUB             R1, R0, #1
MOV             R0, R4
BL              sub_623540
ADD             SP, SP, #0x24 ; '$'
POP             {R4-R11,PC}
