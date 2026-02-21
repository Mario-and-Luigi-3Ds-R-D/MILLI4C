PUSH            {R4-R11,LR}
MOV             R4, R0
SUB             SP, SP, #0x24
LDR             R0, [R0,#8]
LDR             R10, =off_6CE970
LDR             R6, [R0,#0x18]
LDR             R0, [R10]
BL              sub_52FC34
MOV             R11, R0
LDR             R0, [R0]
LDR             R1, [R0,#0x40]
MOV             R0, R11
BLX             R1
MOV             R1, #0x1E4
MOV             R8, R0
LDRH            R1, [R1,R11]
MOV             R0, #3
MOV             R5, #0
MOV             R9, #0
MOV             R1, R1,LSL#26
CMP             R0, R1,LSR#30
LDRSB           R0, [R4,#0x14]
MOVNE           R7, #1
MOVEQ           R7, #0
CMN             R0, #1
BEQ             loc_153B60
CMP             R0, #3
BEQ             loc_153AFC
LDR             R0, =dword_6E26C4
LDR             R1, [R0,#(dword_6E273C - 0x6E26C4)]
STRH            R1, [SP,#0x48+var_44]; float
LDR             R1, [R0,#(dword_6E2740 - 0x6E26C4)]
STRH            R1, [SP,#0x48+var_44+2]
LDR             R0, [R0,#(dword_6E2744 - 0x6E26C4)]
STRH            R0, [SP,#0x48+var_40]
LDR             R0, [R10]
STR             R0, [SP,#0x48+var_3C]
BL              sub_4635D8
MOV             R3, R0
LDR             R0, [SP,#0x48+var_3C]
MOV             R2, R6
MOV             R1, #0x11
STR             R9, [SP,#0x48+var_48]
BL              sub_52AE88
CMP             R7, #0
BEQ             loc_153A44
LDR             R5, [R10]
BL              sub_4635D8
MOV             R3, R0
MOV             R2, R8
MOV             R1, #0x12
MOV             R0, R5
STR             R9, [SP,#0x48+var_48]
BL              sub_52B72C
MOV             R5, R0
LDRSB           R0, [R4,#0x14]
LDR             R2, =unk_63FC24
ADD             R1, SP, #0x48+var_44
ADD             R1, R1, R0,LSL#1
LDRB            R6, [R2,R0]
LDRSH           R0, [R1]
CMP             R5, #0
BEQ             loc_153A70
LDR             R1, [R5,#0x19C]
ORR             R1, R1, #0x100000
STR             R1, [R5,#0x19C]
ADD             R2, SP, #0x48+var_38
MOV             R1, #1
STR             R9, [SP,#0x48+var_40]; int
STR             R9, [SP,#0x48+var_3C]; char
STM             R2, {R1,R9}
CMP             R6, #0
MOVEQ           R1, #0
STRD            R0, R1, [SP,#0x48+var_48]; int
LDR             R1, [R4,#8]; int
MOV             R3, R11; int
MOV             R2, #2; int
ADD             R0, SP, #0x48+var_30; int
BL              sub_4F1E18
CMP             R6, #0
NOP
BEQ             loc_153ABC
MOV             R1, R6
MOV             R0, R4
BL              sub_151F00
LDRB            R0, [R4,#0x1A]
CMP             R0, #0
BNE             loc_153AF4
LDR             R0, [R10]
MOV             R2, #1
MOV             R1, R6
BL              sub_52C6FC
LDRB            R0, [R4,#0x17]
CMP             R0, #0
BEQ             loc_153AF4
MOV             R0, R11
BL              sub_5EC730
CMP             R0, #0
STRBNE          R9, [R4,#0x17]
ADD             SP, SP, #0x24 ; '$'
POP             {R4-R11,PC}
LDR             R0, [R10]
STR             R0, [SP,#0x48+var_44]
BL              sub_4635D8
MOV             R3, R0
LDR             R0, [SP,#0x48+var_44]
MOV             R2, R6
MOV             R1, #0xE
STR             R9, [SP,#0x48+var_48]
BL              sub_52AE88
CMP             R7, #0
NOP
BEQ             loc_153B50
LDR             R5, [R10]
BL              sub_4635D8
MOV             R3, R0
MOV             R2, R8
MOV             R1, #0xF
MOV             R0, R5
STR             R9, [SP,#0x48+var_48]
BL              sub_52B72C
MOV             R5, R0
LDR             R0, =dword_6E26C4
MOV             R6, #4
LDR             R0, [R0,#(dword_6E2748 - 0x6E26C4)]
B               loc_153A5C
LDR             R0, [R10]
STR             R0, [SP,#0x48+var_44]
BL              sub_4635D8
MOV             R3, R0
LDR             R0, [SP,#0x48+var_44]
MOV             R2, R6
MOV             R1, #0x14
STR             R9, [SP,#0x48+var_48]
BL              sub_52AE88
CMP             R7, #0
NOP
BEQ             loc_153BB4
LDR             R5, [R10]
BL              sub_4635D8
MOV             R3, R0
MOV             R2, R8
MOV             R1, #0x15
MOV             R0, R5
STR             R9, [SP,#0x48+var_48]
BL              sub_52B72C
MOV             R5, R0
LDR             R0, =dword_6E26C4
MOV             R6, #0
LDR             R0, [R0,#(dword_6E274C - 0x6E26C4)]
B               loc_153A5C
