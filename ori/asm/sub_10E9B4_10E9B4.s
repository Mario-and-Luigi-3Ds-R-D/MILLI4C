PUSH            {R4-R11,LR}
SUB             SP, SP, #0x44
MOV             R4, #0
MOV             R3, #1
MOV             R2, R3
MOV             R1, #0x7D0
ADD             R0, SP, #0x68+var_38
STR             R4, [SP,#0x68+var_68]
STR             R4, [SP,#0x68+var_64]
STR             R4, [SP,#0x68+var_60]
STR             R4, [SP,#0x68+var_5C]
BL              sub_119730
LDM             R0, {R1,R3}
ADD             R6, SP, #0x68+var_40
LDR             R0, =dword_6D2558
LDR             R12, =0xF4240
LDR             R7, =0xD7B634DB
LDR             R8, =0x431BDE82
LDR             R2, [R0]
LDR             R0, [R0,#(dword_6D255C - 0x6D2558)]
SUBS            R2, R1, R2
SBC             R1, R3, R0
UMULL           R0, R5, R2, R12
MOV             R3, #0
MLA             R1, R1, R12, R5
MOV             R5, #0x12
MLA             R1, R2, R3, R1
STR             R5, [SP,#0x68+var_68]
MOV             R2, R7
STRD            R0, R1, [SP,#0x68+var_40]
MOV             R3, R8
MOV             R0, R6
BL              sub_11EFDC
STR             R4, [SP,#0x68+var_5C]
STRD            R0, R1, [SP,#0x68+var_48]
MOV             R3, #1
LDR             R1, =0x834
MOV             R2, R3
ADD             R0, SP, #0x68+var_38
STR             R4, [SP,#0x68+var_68]
STR             R4, [SP,#0x68+var_64]
STR             R4, [SP,#0x68+var_60]
BL              sub_119730
MOV             R9, R0
MOV             R3, #1
MOV             R2, R3
MOV             R1, #0x7D0
ADD             R0, SP, #0x68+var_30
STR             R4, [SP,#0x68+var_68]
STR             R4, [SP,#0x68+var_64]
STR             R4, [SP,#0x68+var_60]
STR             R4, [SP,#0x68+var_5C]
BL              sub_119730
LDR             R2, [R9]
LDM             R0, {R3,R12}
LDR             R1, [R9,#4]
SUBS            R0, R2, R3
MOV             R3, #0
SBC             R2, R1, R12
LDR             R12, =0xF4240
UMULL           R1, R9, R0, R12
MLA             R2, R2, R12, R9
STR             R1, [SP,#0x68+var_40]
MLA             R0, R0, R3, R2
MOV             R2, R7
MOV             R3, R8
STR             R0, [SP,#0x68+var_3C]
MOV             R0, R6
STR             R5, [SP,#0x68+var_68]
BL              sub_11EFDC
LDR             R9, =0x1FF81000
STRD            R0, R1, [SP,#0x68+var_68]
NOP
SVC             0x28 ; '('
LDR             R3, [R9]
LDR             R2, =0x1FF81020
AND             R12, R3, #1
ADD             R10, R2, R12,LSL#5
LDM             R10, {R7,R8,R12}
LDR             R2, [R10,#0x10]
LDR             R5, [R10,#0x1C]
LDR             R6, [R10,#0x18]
LDR             R10, [R10,#0xC]
MCR             p15, 0, R4,c7,c10, 5
CMP             R3, R3
BNE             loc_10EAD4
SUBS            R9, R0, R12
SBC             R10, R1, R10
MOV             R3, R2,ASR#31
MOV             R0, #0
MOV             R1, #0x3E8
BL              sub_116AC0
UMULL           R3, R2, R9, R0
SMULL           R3, R12, R10, R1
UMULL           R12, LR, R10, R0
MOV             R11, R10,ASR#31
MOV             R4, #0
MLA             R0, R11, R0, LR
UMULL           R11, LR, R1, R9
MLA             R0, R10, R4, R0
MOV             R10, R1,ASR#31
MLA             R9, R10, R9, LR
MLA             R4, R1, R4, R9
ADDS            R1, R12, R11
ADD             R11, SP, #0x68+var_50
ADC             R12, R0, R4
MOV             R0, #0
MOV             R4, R0
ADDS            R0, R0, R2
ADC             R2, R3, R4
ADDS            R1, R1, R0
ADC             R0, R12, R2
ADDS            R4, R1, R7
LDR             R2, =off_36EE80
ADC             R9, R0, R8
SUBS            R0, R4, R7
SBC             R1, R9, R8
RSBS            R2, R0, R2
RSC             R1, R1, #0
MOV             R0, #0
MOV             R3, R0
STR             R2, [SP,#0x68+var_58]
STR             R1, [SP,#0x68+var_54]
STM             R11, {R0,R3}
MOV             R2, R0
LDR             R1, [SP,#0x68+var_58]
LDR             R0, [SP,#0x68+var_54]
MOV             R7, #0
SUBS            R1, R2, R1
SBCS            R0, R3, R0
LDR             R2, =off_36EE80
ADD             R1, SP, #0x68+var_58
ADD             R0, SP, #0x68+var_50
MOVLT           R0, R1
MOV             R3, R2,ASR#31
LDR             R1, [R0]
MOV             R0, R7
BL              sub_116AC0
UMULL           R3, R2, R6, R0
SMULL           R3, R12, R5, R1
UMULL           R12, R11, R5, R0
MOV             R10, R5,ASR#31
MOV             R8, #0
MLA             R0, R10, R0, R11
UMULL           R10, R11, R1, R6
MLA             R0, R5, R8, R0
MOV             R8, R1,ASR#31
MOV             R5, #0
MLA             R6, R8, R6, R11
MLA             R5, R1, R5, R6
ADDS            R1, R12, R10
ADC             R0, R0, R5
ADDS            R2, R2, R7
ADC             R3, R3, #0
ADDS            R1, R1, R2
ADC             R0, R0, R3
ADDS            R2, R1, R4
ADC             R3, R0, R9
LDRD            R0, R1, [SP,#0x68+var_48]
SUBS            R0, R2, R0
SBC             R1, R3, R1
LDRD            R2, R3, [SP,#0x68+var_68]
BL              sub_116AC0
LDRD            R0, R1, [SP,#0x68+var_48]
ADD             SP, SP, #0x44 ; 'D'
ADDS            R0, R0, R2
ADC             R1, R1, R3
POP             {R4-R11,PC}
