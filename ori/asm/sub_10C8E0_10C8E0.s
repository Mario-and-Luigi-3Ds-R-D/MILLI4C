PUSH            {R4,LR}
MOV             R4, R0
LDRB            R0, [R0,#0x3E]
CMP             R0, #0
BEQ             loc_10C958
LDRB            R0, [R4,#0x3D]
CMP             R0, #0
LDRSB           R0, [R4,#0x3C]
BEQ             loc_10C940
EOR             R1, R0, #1
ADD             R0, R4, R0,LSL#2
ADD             R2, R4, R1,LSL#2
LDR             R1, [R0,#0x34]
LDR             R0, [R2,#0x34]
BL              sub_6122D0
LDRSB           R0, [R4,#0x3C]
ADD             R0, R4, R0,LSL#2
LDR             R0, [R0,#0x34]
BL              sub_10AEA0
BL              sub_6123FC
BL              sub_10C868
BL              sub_10C984
POP             {R4,LR}
B               sub_612240
ADD             R0, R4, R0,LSL#2
LDR             R0, [R0,#0x34]
BL              sub_10AEA0
POP             {R4,LR}
NOP
B               sub_10C984
LDR             R0, [R4,#0x34]
BL              sub_10AEA0
NOP
NOP
BL              sub_1164E4
NOP
NOP
BL              sub_10C868
POP             {R4,LR}
NOP
NOP
