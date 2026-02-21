PUSH            {R4-R11,LR}
MOV             R4, R0
SUB             SP, SP, #0x14C
MOV             R5, #1
MOV             R6, R1
LDR             R0, [R0,#0xC]
LDR             R11, =0xFF000001
CMP             R0, #0
STREQ           R5, [R4,#0xC]
BEQ             loc_10CD0C
MOV             R0, #0x58 ; 'X'
BL              sub_2FEF68
CMP             R0, #0
BEQ             loc_10CDA8
ADD             R1, R4, #0xC
ADD             R8, R0, #0xC
LDM             R1, {R1-R3,R7,R12}
ADD             R9, R0, #0x20 ; ' '
STM             R8, {R1-R3,R7,R12}
ADD             R1, R4, #0x20 ; ' '
LDM             R1, {R1-R3,R7,R8,R12}
STM             R9, {R1-R3,R7,R8,R12}
ADD             R1, R4, #0x38 ; '8'
ADD             R7, R0, #0x38 ; '8'
LDM             R1, {R1-R3,R12}
STM             R7, {R1-R3,R12}
STR             R0, [R4,#0xC]
ADD             R1, R6, #4
ADD             R7, R6, #0x14
LDR             R0, [R6,#0x3C]
LDM             R1, {R1-R3,R12}
LDM             R7, {R7-R10}
STR             R0, [R6,#0x40]
ADD             R0, SP, #0x170+var_16C
STM             R0, {R1-R3,R12}
ADD             R0, SP, #0x170+var_15C
STM             R0, {R7-R10}
ADD             R0, R6, #0x24 ; '$'
ADD             R10, SP, #0x170+var_14C
LDM             R0, {R0-R3,R7-R9,R12}
STM             R10, {R0-R3,R7-R9,R12}
MOV             R7, #0
LDR             R8, =0
LDR             R9, =0
LDR             R10, =0
STRB            R5, [SP,#0x170+var_170]
STRB            R5, [SP,#0x170+var_16F]
LDR             R0, [SP,#0x170+var_130]
SUB             R0, R0, #2
BL              sub_11F18C
CMP             R0, #0
NOP
BEQ             loc_10CDC4
LDR             R1, [R0]
MOV             R1, R1,LSL#1
ADD             R2, R0, R1,ASR#1
STR             R2, [R4,#0x48]
LDR             R1, [R0,#4]
CMP             R1, #1
BEQ             loc_10CDE4
TST             R1, #0x80000000
BEQ             loc_10CE04
ADD             R2, R4, #0x4C ; 'L'
ADD             R1, R0, #4
STM             R2, {R1,R5}
B               loc_10CE18
MOV             R2, #5
MOV             R1, R11
MOV             R0, R4
BLX             nullsub_353
ADD             SP, SP, #0x14C
MOV             R0, #9
POP             {R4-R11,PC}
MOV             R2, #4
MOV             R1, R11
MOV             R0, R4
STR             R7, [R4,#0x14]
BLX             nullsub_353
NOP
NOP
B               loc_10CE6C
MOV             R2, #2
MOV             R1, R11
MOV             R0, R4
STR             R7, [R4,#0x14]
BLX             nullsub_353
NOP
NOP
B               loc_10CE6C
MOV             R1, R1,LSL#1
ADD             R2, R4, #0x4C ; 'L'
ADD             R0, R0, R1,ASR#1
ADD             R1, R0, #4
STM             R2, {R1,R7}
LDR             R0, [R1]
TST             R0, #0x80000000
BEQ             loc_10CE90
MOV             R0, R0,LSL#4
MOVS            R0, R0,LSR#28
MOVEQ           R0, R4
STREQ           R8, [R4,#0x14]
BEQ             loc_10CEA0
CMP             R0, #1
MOVEQ           R0, R4
STREQ           R9, [R4,#0x14]
BEQ             loc_10CEA0
CMP             R0, #2
MOVEQ           R0, R4
STREQ           R10, [R4,#0x14]
BEQ             loc_10CEA0
MOV             R2, #1
MOV             R1, R11
MOV             R0, R4
STR             R7, [R4,#0x14]
BLX             nullsub_353
LDRB            R0, [SP,#0x170+var_170]
MOV             R4, SP
CMP             R0, #0
ADDEQ           R0, R4, #0x48 ; 'H'
VLDMEQ          R0, {D0-D15}
LDRB            R0, [SP,#0x170+var_16F]
CMP             R0, #0
BNE             loc_10CEEC
B               loc_10CEE4
MOV             R0, R0,LSL#1
ADD             R1, R1, R0,ASR#1
MOV             R0, R4
STR             R1, [R4,#0x14]
LDR             R3, [R4,#0x14]
MOV             R1, R0
MOV             R2, SP
MOV             R0, #0
BLX             R3
CMP             R0, #6
BEQ             loc_10CEF8
CMP             R0, #8
BEQ             loc_10CD5C
LDRB            R0, [SP,#0x170+var_170]
MOV             R4, SP
CMP             R0, #0
ADDEQ           R0, R4, #0x48 ; 'H'
VLDMEQ          R0, {D0-D15}
LDRB            R0, [SP,#0x170+var_16F]
CMP             R0, #0
BNE             loc_10CEEC
ADD             R0, R4, #0xC8
BL              sub_116A6C
ADD             SP, SP, #0x14C
MOV             R0, #9
POP             {R4-R11,PC}
LDRB            R0, [SP,#0x170+var_170]
MOV             R5, SP
CMP             R0, #0
ADDEQ           R0, R5, #0x48 ; 'H'
VLDMEQ          R0, {D0-D15}
LDRB            R0, [SP,#0x170+var_16F]
CMP             R0, #0
ADDEQ           R0, R5, #0xC8
BLEQ            sub_116A6C
MOV             R1, R6
MOV             R0, R4
BL              loc_10CF28
LDR             R11, =0xFF000001
LDR             R8, =0
LDR             R9, =0
LDR             R10, =0
MOV             R4, R0
MOV             R5, R1
MOV             R7, #1
MOV             R6, #0
LDR             R0, [R5,#0x40]
SUB             R0, R0, #2
BL              sub_11F18C
CMP             R0, #0
NOP
BEQ             loc_10CF94
LDR             R1, [R0]
MOV             R1, R1,LSL#1
ADD             R2, R0, R1,ASR#1
STR             R2, [R4,#0x48]
LDR             R1, [R0,#4]
CMP             R1, #1
BEQ             loc_10CFB4
TST             R1, #0x80000000
BEQ             loc_10CFD4
ADD             R2, R4, #0x4C ; 'L'
ADD             R1, R0, #4
STM             R2, {R1,R7}
B               loc_10CFE8
MOV             R2, #4
MOV             R1, R11
MOV             R0, R4
STR             R6, [R4,#0x14]
BLX             nullsub_353
NOP
NOP
B               loc_10D074
MOV             R2, #2
MOV             R1, R11
MOV             R0, R4
STR             R6, [R4,#0x14]
BLX             nullsub_353
NOP
NOP
B               loc_10D074
MOV             R1, R1,LSL#1
ADD             R2, R4, #0x4C ; 'L'
ADD             R0, R0, R1,ASR#1
ADD             R1, R0, #4
STM             R2, {R1,R6}
LDR             R0, [R1]
TST             R0, #0x80000000
BEQ             loc_10D03C
MOV             R0, R0,LSL#4
MOVS            R0, R0,LSR#28
STREQ           R8, [R4,#0x14]
BEQ             loc_10D048
CMP             R0, #1
STREQ           R9, [R4,#0x14]
BEQ             loc_10D048
CMP             R0, #2
STREQ           R10, [R4,#0x14]
BEQ             loc_10D048
MOV             R2, #1
MOV             R1, R11
MOV             R0, R4
STR             R6, [R4,#0x14]
BLX             nullsub_353
NOP
NOP
B               loc_10D074
MOV             R0, R0,LSL#1
ADD             R1, R1, R0,ASR#1
STR             R1, [R4,#0x14]
LDR             R0, [R5,#0x40]
MOV             R2, R5
MOV             R1, R4
STR             R0, [R4,#0x10]
LDR             R3, [R4,#0x14]
MOV             R0, #1
BLX             R3
CMP             R0, #7
BEQ             loc_10D07C
CMP             R0, #8
BEQ             loc_10CF48
NOP
BL              sub_2FE484
ADD             R0, R5, #4
BL              sub_116A74
