PUSH            {R4,LR}
MOV             R4, R0
LDRB            R0, [R0,#0x3E]
CMP             R0, #0
BEQ             loc_1F1DF0
LDRSB           R0, [R4,#0x3C]
MOV             R1, #0
CMN             R0, #1
BEQ             loc_1F1DE0
ADD             R0, R4, R0,LSL#2
STRB            R1, [R4,#0x3D]
LDR             R0, [R0,#0x34]
BL              sub_10AEA0
BL              sub_6123FC
BL              sub_10C868
LDRSB           R0, [R4,#0x3C]
EOR             R0, R0, #1
ADD             R0, R4, R0,LSL#2
LDR             R0, [R0,#0x34]
BL              sub_10AEA0
NOP
NOP
BL              sub_612240
NOP
NOP
B               loc_1F1E04
MOV             R0, #1
STRB            R0, [R4,#0x3D]
STRB            R1, [R4,#0x3C]
B               loc_1F1DB4
LDR             R0, [R4,#0x34]
BL              sub_10AEA0
NOP
NOP
BL              sub_612240
LDR             R0, =0x402
BL              sub_6121AC
STR             R0, [R4,#0x40]
POP             {R4,PC}
