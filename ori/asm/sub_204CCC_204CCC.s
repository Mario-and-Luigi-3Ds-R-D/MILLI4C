PUSH            {R4-R8,LR}
MOV             R6, R0
SUB             SP, SP, #0x20
LDR             R0, [R2,#0x68]
MOV             R4, R2
MOV             R5, R1
STR             R0, [SP,#0x38+var_28]
LDR             R0, [R2,#0x6C]
LDR             R7, =off_6CE970
LDR             R8, =0x102
STR             R0, [SP,#0x38+var_24]
LDR             R0, [R2,#0x70]
STR             R0, [SP,#0x38+var_20]
LDRD            R0, R1, [R4,#0x14]
LDR             R2, [R7]
AND             R0, R0, #0xFF
AND             R1, R1, #0xFF
ORR             R3, R1, R0,LSL#8
CMP             R3, R8
ADD             R12, R2, #0x10C000
ADD             R12, R12, #0x214
SUB             R8, R3, R8
BEQ             loc_204E14
BGT             loc_204D48
CMP             R3, #1
BEQ             loc_204DFC
CMP             R3, #2
BEQ             loc_204E60
CMP             R3, #0x100
BNE             loc_204D5C
B               loc_204DE4
CMP             R8, #0xFE
MOV             R2, #1
BEQ             loc_204E78
CMP             R8, #0xFF
BEQ             loc_204E3C
CMP             R0, R1
BNE             loc_204D74
ADD             R3, SP, #0x38+var_28
LDM             R3, {R0-R2}
ADD             R3, SP, #0x38+var_34
STM             R3, {R0-R2}
CMP             R5, #0
LDRH            R0, [R4,#2]
ADDNE           R2, R5, #4
MOVEQ           R2, #0
VLDR            S0, [SP,#0x38+var_34]
MOV             R1, R6
BL              sub_145730
LDRH            R0, [R4,#2]
CMP             R5, #0
ADDNE           R2, R5, #4
ADD             R0, R0, #1
MOVEQ           R2, #0
UXTH            R0, R0
VLDR            S0, [SP,#0x38+var_30]
MOV             R1, R6
BL              sub_145730
LDRH            R0, [R4,#2]
CMP             R5, #0
ADDNE           R2, R5, #4
ADD             R0, R0, #2
MOVEQ           R2, #0
UXTH            R0, R0
VLDR            S0, [SP,#0x38+var_2C]
MOV             R1, R6
BL              sub_145730
ADD             SP, SP, #0x20 ; ' '
MOV             R0, #0
POP             {R4-R8,PC}
ADD             R1, SP, #0x38+var_28
ADD             R0, SP, #0x38+var_34
BL              sub_4800C0
NOP
NOP
B               loc_204D74
ADD             R1, SP, #0x38+var_28
ADD             R0, SP, #0x38+var_34
BL              sub_480160
NOP
NOP
B               loc_204D74
ADD             R1, SP, #0x38+var_28
ADD             R0, SP, #0x38+var_34
BL              sub_4800C0
LDR             R0, [R7]
MOV             R3, #1
ADD             R2, SP, #0x38+var_28
ADD             R0, R0, #0x10C000
ADD             R1, SP, #0x38+var_34
ADD             R0, R0, #0x214
B               loc_204E70
STR             R2, [SP,#0x38+var_38]
ADD             R3, SP, #0x38+var_28
MOV             R2, #0
ADD             R1, SP, #0x38+var_34
MOV             R0, R12
BL              sub_5F12C4
NOP
NOP
B               loc_204DFC
MOV             R3, #1
ADD             R2, SP, #0x38+var_28
ADD             R1, SP, #0x38+var_34
MOV             R0, R12
BL              sub_5F1314
B               loc_204D74
STR             R2, [SP,#0x38+var_38]
ADD             R3, SP, #0x38+var_28
MOV             R2, #0
ADD             R1, SP, #0x38+var_34
MOV             R0, R12
BL              sub_5F12C4
NOP
NOP
B               loc_204D74
