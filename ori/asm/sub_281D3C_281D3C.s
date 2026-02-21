PUSH            {R4-R8,LR}
MOV             R5, R0
LDRB            R0, [R0]
CMP             R0, #0
BEQ             loc_281D98
CMP             R0, #1
MOV             R4, #0
MOV             R6, #1
MOV             R7, #3
BEQ             loc_281F64
CMP             R0, #2
BNE             locret_281F44
LDR             R0, [R5,#0x20]
BL              sub_282400
LDR             R0, [R5,#0x20]
ADD             R0, R0, #0x400
LDRB            R1, [R0,#0x20]
CMP             R1, #0
BEQ             locret_281F44
LDRB            R0, [R0,#0x19]
CMP             R0, #0
BNE             loc_281FC0
B               loc_282010
LDR             R0, [R5,#0x18]
LDR             R4, [R5,#0x14]
CMP             R0, R4
BEQ             loc_281DF0
LDR             R0, [R4]
BL              sub_281AC0
LDR             R0, [R4]
LDRB            R1, [R0,#4]
CMP             R1, #5
BNE             loc_281DE0
LDR             R2, [R5,#0x2C]
CMP             R2, #0
BEQ             loc_281DE0
LDR             R1, [R2]
LDR             R3, [R1,#8]
ADD             R1, R0, #0x2C ; ','
MOV             R0, R2
BLX             R3
LDR             R0, [R5,#0x18]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_281DA8
ADD             R0, R5, #0x14
LDM             R0, {R0,R6}
CMP             R0, R6
BEQ             loc_281E14
LDR             R1, [R0]
LDRB            R1, [R1,#4]
CMP             R1, #5
ADDNE           R0, R0, #0xC
BNE             loc_281DF8
CMP             R0, R6
BEQ             loc_281EC4
ADD             R4, R0, #0xC
CMP             R4, R6
MOV             R7, R0
BEQ             loc_281EC0
LDR             R0, [R4]
LDRB            R1, [R0,#4]
CMP             R1, #5
BEQ             loc_281EB4
LDR             R1, [R7]
CMP             R1, R0
BEQ             loc_281EB0
LDR             R2, [R7,#8]
ADD             R3, R7, #4
CMP             R2, R3
BNE             loc_281F48
CMP             R1, #0
BEQ             loc_281E74
ADD             R0, R1, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDR             R3, [R4]
ADD             R1, R4, #4
ADD             R0, R7, #4
CMP             R1, R0
STR             R3, [R7]
LDRNE           R2, [R1,#4]
CMPNE           R2, R0
BEQ             loc_281EB0
LDM             R0, {R3,R12}
STR             R12, [R3,#4]
STR             R3, [R12]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [R1,#4]
STR             R1, [R0]
ADD             R7, R7, #0xC
ADD             R4, R4, #0xC
CMP             R4, R6
BNE             loc_281E2C
MOV             R0, R7
LDR             R6, [R5,#0x18]
CMP             R0, R6
BEQ             locret_281F44
LDR             R1, =0x2AAAAAAB
SUB             R0, R6, R0
SMULL           R1, R0, R1, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R7, R6, R0,LSL#2
CMP             R7, R6
BEQ             loc_281F40
SUB             R6, R6, #0xC
ADD             R1, R6, #4
LDR             R0, [R6,#8]
MOV             R4, R6
CMP             R0, R1
BNE             loc_281F2C
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_281F2C
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R6
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_281EF4
STR             R7, [R5,#0x18]
POP             {R4-R8,PC}
LDR             R1, [R7,#4]
ADD             R0, R7, #4
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R0, [R7,#4]
STR             R0, [R7,#8]
B               loc_281E74
LDR             R0, [R5,#0x20]
BL              sub_282400
LDR             R1, [R5,#0x20]
LDRB            R0, [R1,#4]
CMP             R0, #5
BNE             loc_281FA0
LDR             R0, [R5,#0x2C]
CMP             R0, #0
BEQ             loc_281F98
LDR             R2, [R0]
ADD             R1, R1, #0x2C ; ','
LDR             R2, [R2,#0xC]
BLX             R2
MOV             R0, #2
STRB            R0, [R5]
LDR             R0, [R5,#0x20]
ADD             R0, R0, #0x400
LDRB            R1, [R0,#0x20]
CMP             R1, #0
BEQ             locret_281F44
LDRB            R0, [R0,#0x19]
CMP             R0, #0
BEQ             loc_281FD4
MOV             R1, #0
ADD             R0, R5, #0x20 ; ' '
BL              sub_629488
STRB            R7, [R5]
POP             {R4-R8,PC}
MOV             R1, #0
ADD             R0, R5, #0x20 ; ' '
STRB            R6, [R5,#0x34]
BL              sub_629488
LDR             R0, =dword_6D1F40
NOP
BL              sub_546DB0
MOV             R0, R0,LSL#1
MOV             R1, R0,LSR#16
LDR             R0, [R5,#0x30]
ADD             R0, R0, R1,LSL#2
LDR             R0, [R0,#0x10]
STR             R0, [R5,#4]
STRB            R4, [R5]
POP             {R4-R8,PC}
MOV             R1, #0
ADD             R0, R5, #0x20 ; ' '
STRB            R6, [R5,#0x34]
BL              sub_629488
LDR             R0, =dword_6D1F40
NOP
BL              sub_546DB0
MOV             R0, R0,LSL#1
LDR             R1, [R5,#0x30]
MOV             R0, R0,LSR#16
ADD             R0, R1, R0,LSL#2
LDR             R0, [R0,#0x10]
STR             R0, [R5,#4]
STRB            R4, [R5]
POP             {R4-R8,PC}
