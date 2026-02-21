PUSH            {R3-R11,LR}
MOV             R4, #0
MOV             R7, R0
MOV             R5, R4
BL              sub_47FFCC
MOVS            R1, R0
LDR             R0, =0x120F8C
MOV             R9, #0
ADD             R6, R7, R0
BEQ             loc_1D4DC4
BL              sub_48004C
LDR             R10, =dword_6E2378
CMP             R0, #0
BNE             loc_1D4CC0
LDRB            R0, [R10,#(byte_6E2385 - 0x6E2378)]
CMP             R0, #0
BEQ             loc_1D4CC0
LDRB            R0, [R10,#(byte_6E2384 - 0x6E2378)]
CMP             R0, #0
BNE             loc_1D4D18
MOV             R1, #0x1000
MOV             R0, R7
BL              sub_52F72C
MOV             R2, #0
MOV             R4, R0
MOV             R3, #0x100
MOV             R1, R2
STR             R9, [SP,#0x28+var_28]
BL              sub_4E3CA0
LDR             R8, [R4,#0x18]
LDRH            R0, [R4,#0x10]
BL              sub_4E2ADC
LDR             R2, [R8]
MOV             R1, R0
MOV             R0, R8
LDR             R2, [R2,#0x20]
BLX             R2
MOV             R0, R4
BL              sub_4F18BC
ADD             R1, R4, #0x2B0
MOV             R0, R6
BL              sub_2E8744
NOP
BL              sub_47FFCC
CMP             R0, #0
NOP
BEQ             loc_1D4D98
LDRB            R0, [R10,#(byte_6E2385 - 0x6E2378)]
CMP             R0, #0
LDRBNE          R0, [R10,#(byte_6E2384 - 0x6E2378)]
CMPNE           R0, #1
BNE             loc_1D4D98
LDR             R1, =0x1001
MOV             R0, R7
BL              sub_52F72C
MOV             R2, #0
MOV             R5, R0
MOV             R3, #0x100
MOV             R1, R2
STR             R9, [SP,#0x28+var_28]
BL              sub_4E3CA0
LDR             R7, [R5,#0x18]
LDRH            R0, [R5,#0x10]
BL              sub_4E2ADC
LDR             R2, [R7]
MOV             R1, R0
MOV             R0, R7
LDR             R2, [R2,#0x20]
BLX             R2
MOV             R0, R5
BL              sub_4F18BC
ADD             R1, R5, #0x2B0
MOV             R0, R6
BL              sub_2E8744
CMP             R4, #0
CMPNE           R5, #0
BEQ             loc_1D4E48
MOV             R0, R4
BL              sub_4E3F08
MOV             R0, R5
NOP
BL              sub_4E3F08
NOP
NOP
B               loc_1D4E48
NOP
BL              sub_48004C
CMP             R0, #0
NOP
BEQ             loc_1D4E48
MOV             R1, #0x1000
MOV             R0, R7
BL              sub_52F72C
MOV             R2, #0
MOV             R4, R0
MOV             R3, #0x100
MOV             R1, R2
STR             R9, [SP,#0x28+var_28]
BL              sub_4E3CA0
LDR             R5, [R4,#0x18]
LDRH            R0, [R4,#0x10]
BL              sub_4E2ADC
LDR             R2, [R5]
MOV             R1, R0
MOV             R0, R5
LDR             R2, [R2,#0x20]
BLX             R2
MOV             R0, R4
BL              sub_4F18BC
ADD             R1, R4, #0x2B0
MOV             R0, R6
BL              sub_2E8744
LDR             R0, =0x10E0A4
ADD             R5, R7, R0
MOV             R0, R5
BL              sub_5710F4
STR             R9, [R4,#0x2A8]
STR             R9, [R5,#0x2A8]
MOV             R0, R6
POP             {R3-R11,LR}
B               sub_2E86C8
