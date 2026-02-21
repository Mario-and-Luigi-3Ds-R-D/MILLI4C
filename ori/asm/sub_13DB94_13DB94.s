PUSH            {R4-R12,LR}
MOV             R8, #0
ADD             R12, R1, #4
LDRB            R4, [R1]
ADD             R4, R4, R4,LSL#1
ADD             R4, R12, R4,LSL#2
SUB             LR, R4, R12
CMP             LR, #0xB
BLE             loc_13DC54
LDR             R5, =0x2AAAAAAB
LDR             R4, =unk_65867C
ADD             R7, R1, #0x4C ; 'L'
ADD             R6, R12, #8
SMULL           R5, R9, R5, LR
ADD             R5, R12, #4
MOV             R10, R9,ASR#1
SUB             R9, R10, R9,ASR#31
MOV             R10, #0
LDR             R11, [R12]
STR             R11, [R0],#4
LDRH            R11, [R4],#2
ORR             R11, R11, #0x80000000
ORR             R11, R11, #0x4F0000
STR             R11, [R0],#4
LDR             R11, [R5]
STR             R11, [R0],#4
LDR             R11, [R6]
STR             R11, [R0],#4
LDRB            R11, [R7]
CMP             R11, #0xFF
STREQ           R10, [R0]
BEQ             loc_13DC20
ADD             R11, R2, R11,LSL#2
LDR             R11, [R11]
STR             R11, [R0]
STR             R10, [R0,#4]!
SUBS            R9, R9, #1
ADD             R12, R12, #0xC
ADD             R5, R5, #0xC
ADD             R6, R6, #0xC
ADD             R7, R7, #1
ADD             R0, R0, #4
BNE             loc_13DBDC
LDR             R12, =0x2AAAAAAB
SMULL           R4, R12, R12, LR
MOV             R4, R12,ASR#1
SUB             R12, R4, R12,ASR#31
ADD             R8, R8, R12
LDRB            R12, [R1,#0x52]
CMP             R12, #0xFF
BEQ             loc_13DC74
ADD             R12, R2, R12,LSL#2
LDR             R2, =0xF00FD
LDR             R12, [R12]
STR             R12, [R0],#4
STR             R2, [R0],#4
LDRB            R12, [R1,#0x53]
LDR             R2, =0x200E0
MOV             R12, R12,LSL#8
STR             R12, [R0],#4
STR             R2, [R0],#4
MOV             R4, R0
LDRB            R0, [R1]
CMP             R0, R3
BGE             loc_13DCC0
SUB             R0, R3, R0
LDR             R1, =unk_658688
ADD             R0, R0, R0,LSL#1
MOV             R5, R0,LSL#1
MOV             R2, R0,LSL#3
ADD             R0, R8, R8,LSL#1
ADD             R1, R1, R0,LSL#3
MOV             R0, R4
BL              sub_1273D0
ADD             R4, R4, R5,LSL#2
MOV             R0, R4
POP             {R4-R12,PC}
