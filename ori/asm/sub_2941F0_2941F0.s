PUSH            {R4-R7,LR}
MOV             R6, R1
SUB             SP, SP, #0xC
MOV             R1, #0
STRB            R1, [R0,#4]
LDR             R1, =off_6BC58C
MOV             R7, R2
MOV             R2, #0
STR             R1, [R0]
ADD             R1, R0, #0xC
STR             R2, [R0,#8]
STR             R1, [R0,#0x10]
STR             R1, [R0,#0xC]!
STR             R6, [R0,#8]!
ADD             R0, R0, #4
BL              sub_14F198
SUB             R4, R0, #0x18
LDR             R0, [R0,#-4]
BL              sub_5CDC70
CMP             R0, #0
BNE             loc_294364
LDR             R0, [R4,#0x14]
BL              sub_286EA4
CMP             R0, #0
BEQ             loc_294364
MOV             R0, #2
STRB            R0, [R4,#0x40C]
LDR             R0, =off_6CE970
MOV             R3, #0
ADD             R5, R4, #8
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x28 ; '('
BL              sub_10A358
CMP             R0, #0
MOVEQ           R6, #0
BEQ             loc_294298
MOV             R2, R7
MOV             R1, R6
BL              sub_293678
MOV             R6, R0
LDR             R0, [R5,#8]
ADD             R1, R5, #4
CMP             R0, R1
BNE             loc_294348
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_2942C0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R6, [R5]
LDR             R2, [R4,#8]
ADD             R0, R4, #0xC
STR             R0, [SP,#0x20+var_1C]
STR             R2, [SP,#0x20+var_20]
LDR             R3, [R4,#0x10]
ADD             R2, SP, #0x20+var_1C
MOV             R1, SP
STR             R3, [SP,#0x20+var_18]
STR             R2, [R3]
STR             R2, [R4,#0x10]
LDR             R0, [R4,#0x14]
BL              sub_2928C8
LDR             R1, [SP,#0x20+var_18]
ADD             R0, SP, #0x20+var_1C
CMP             R1, R0
BNE             loc_29431C
LDR             R0, [SP,#0x20+var_20]
CMP             R0, #0
BEQ             loc_29431C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x20+var_1C]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#0x14]
LDR             R1, [R0,#0x14]
VLDR            S0, [R1,#0xC8]
MOV             R1, #3
BL              sub_287E48
NOP
NOP
B               loc_29436C
LDR             R2, [R5,#4]
ADD             R1, R5, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R5,#4]
STR             R1, [R5,#8]
B               loc_2942C0
MOV             R0, #3
STRB            R0, [R4,#0x40C]
ADD             SP, SP, #0xC
MOV             R0, R4
POP             {R4-R7,PC}
