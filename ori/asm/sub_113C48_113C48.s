PUSH            {R3-R7,LR}
MOV             R4, R0
MOV             R0, R1
LDR             R1, [R4,#4]
MOV             R6, #1
LDRB            R2, [R4,#0x298]
ADD             R1, R6, R1,ASR#31
BL              sub_11834C
LDR             R1, [R4,#4]
MOV             R5, #0
CMP             R1, #0
BLT             loc_113D38
LDR             R1, =0xF029B
STR             R5, [R0],#4
MOV             R2, #0x29C
STR             R1, [R0],#4
MOV             R1, R0
LDR             R0, [R4,#0x90]
STR             R0, [SP,#0x18+var_18]
LDR             R3, [R4,#0x8C]
MOV             R0, R4
BL              sub_11E478
LDR             R1, =0xF028F
STR             R6, [R0],#4
LDR             R2, =0x2A6
STR             R1, [R0],#4
ADD             R1, R1, #0x16
STR             R5, [R0],#4
ADD             R3, R4, #0x94
STR             R1, [R0],#4
MOV             R1, R0
LDR             R0, [R4,#0x294]
STR             R0, [SP,#0x18+var_18]
MOV             R0, R4
BL              sub_11E478
MOV             R7, R0
LDR             R0, [R4,#4]
ADD             R2, R6, #0x124
ADD             R1, R4, R0,LSL#2
ADD             R1, R1, #0x12800
ADD             R1, R1, #0x68 ; 'h'
MUL             R0, R0, R2
LDR             R1, [R1]
ADD             R0, R4, R0,LSL#3
MOV             R2, R1,LSL#2
ADD             R1, R0, #0x368
MOV             R0, R7
BL              sub_127EB8
LDR             R0, [R4,#4]
LDR             R2, [R4,#0x2A0]
LDR             R1, =0xF0280
ADD             R0, R4, R0,LSL#2
ADD             R0, R0, #0x12800
ADD             R0, R0, #0x68 ; 'h'
ORR             R2, R2, #0x7F000000
LDR             R0, [R0]
ORR             R2, R2, #0xFF0000
ADD             R0, R7, R0,LSL#2
STR             R2, [R0],#4
STR             R1, [R0],#4
LDR             R1, =0xF02CB
STR             R5, [R0],#4
MOV             R2, #0x2CC
STR             R1, [R0],#4
LDR             R3, [R4,#0x90]
MOV             R1, R0
MOV             R0, R4
CMP             R3, #0x200
MOVCS           R3, #0x200
STR             R3, [SP,#0x18+var_18]
LDR             R3, [R4,#0x8C]
BL              sub_11E478
LDR             R1, =0xF02BF
STR             R6, [R0],#4
LDR             R2, =0x2D6
STR             R1, [R0]
ADD             R1, R0, #4
LDR             R0, =0xF02D5
STR             R5, [R1],#4
ADD             R3, R4, #0x94
STR             R0, [R1],#4
LDR             R0, [R4,#0x294]
STR             R0, [SP,#0x18+var_18]
MOV             R0, R4
BL              sub_11E478
MOV             R5, R0
LDR             R0, [R4]
LDR             R2, =0x125
ADD             R1, R4, R0,LSL#2
ADD             R1, R1, #0x12800
ADD             R1, R1, #0x68 ; 'h'
MUL             R0, R0, R2
LDR             R1, [R1]
ADD             R0, R4, R0,LSL#3
MOV             R2, R1,LSL#2
ADD             R1, R0, #0x368
MOV             R0, R5
BL              sub_127EB8
LDR             R0, [R4]
LDR             R1, [R4,#0x29C]
ADD             R0, R4, R0,LSL#2
ADD             R0, R0, #0x12800
ADD             R0, R0, #0x68 ; 'h'
ORR             R1, R1, #0x7F000000
LDR             R0, [R0]
ORR             R1, R1, #0xFF0000
ADD             R5, R5, R0,LSL#2
LDR             R0, =0xF02B0
STR             R1, [R5],#4
LDR             R1, =0x20229
STR             R0, [R5],#4
LDRB            R0, [R4,#0x298]
CMP             R0, #3
MOV             R0, #0x100
MOVNE           R0, #0
STR             R0, [R5],#4
MOV             R0, #0x100
STR             R1, [R5],#4
LDRB            R1, [R4,#0x298]
CMP             R1, #3
LDR             R1, =0x20253
MOVNE           R0, #0
STRD            R0, R1, [R5],#8
LDR             R0, [R4,#0x364]
ADD             R1, R4, #0x2A4
MOV             R2, R0,LSL#2
MOV             R0, R5
BL              sub_127EB8
LDR             R0, [R4,#0x364]
ADD             R0, R5, R0,LSL#2
POP             {R3-R7,PC}
