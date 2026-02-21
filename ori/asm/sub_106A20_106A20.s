PUSH            {R4-R8,LR}
MOV             R4, R0
LDRB            R0, [R0]
CMP             R0, #0
BNE             locret_106B94
MOV             R0, #1
STRB            R0, [R4]
LDR             R0, [R4,#4]
LDR             R2, [R4,#0xC]
LDR             R7, =0x2AAAAAAB
MOV             R1, #0x20 ; ' '
SUB             R2, R2, R0
SMULL           R3, R2, R7, R2
MOV             R3, R2,ASR#1
SUB             R2, R3, R2,ASR#31
CMP             R2, #0x20 ; ' '
BCS             loc_106B4C
LDR             R2, [R4,#8]
SUB             R0, R2, R0
SMULL           R2, R0, R7, R0
MOV             R2, R0,ASR#1
SUB             R0, R2, R0,ASR#31
ADD             R2, R0, R0,LSR#1
ADD             R5, R2, R0,LSR#3
ADD             R0, R0, #0x20 ; ' '
CMP             R0, R5
MOVHI           R5, R0
CMP             R5, #0x20 ; ' '
MOVLS           R5, R1
MOV             R2, #0x10000
ADD             R0, R5, R5,LSL#1
MOV             R1, R0,LSL#2
LDR             R0, =dword_6ED9B8
LDR             R0, [R0]
LDR             R3, [R0,#0xC]
LDR             R0, =dword_6ED9B8
BLX             R3
ADD             R1, R4, #4
MOV             R6, R0
LDM             R1, {R1,R3}
CMP             R1, R3
BEQ             loc_106AF8
MOVS            R2, R0
BEQ             loc_106AE8
LDR             R12, [R1]
STR             R12, [R2]
LDR             R12, [R1,#4]
STR             R12, [R2,#4]
LDR             R12, [R1,#8]
STR             R12, [R0,#8]
ADD             R1, R1, #0xC
CMP             R1, R3
ADD             R0, R2, #0xC
BNE             loc_106AC8
LDRD            R0, R1, [R4,#4]
CMP             R0, R1
MOV             R2, R0
BEQ             loc_106B14
ADD             R0, R0, #0xC
CMP             R0, R1
BNE             loc_106B08
MOVS            R0, R2
BLNE            sub_110D10
LDR             R0, [R4,#8]
LDR             R1, [R4,#4]
STR             R6, [R4,#4]
SUB             R0, R0, R1
SMULL           R1, R0, R7, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
ADD             R1, R5, R5,LSL#1
ADD             R0, R0, R0,LSL#1
ADD             R1, R6, R1,LSL#2
ADD             R0, R6, R0,LSL#2
STRD            R0, R1, [R4,#8]
LDR             R2, [R4,#8]
LDR             R3, [R4,#4]
CMP             R3, R2
BEQ             locret_106B94
MOV             R1, R2
CMP             R3, R1
MOV             R0, R3
BEQ             loc_106B78
ADD             R0, R0, #0xC
CMP             R0, R1
BNE             loc_106B6C
SUB             R0, R2, R3
SMULL           R1, R0, R7, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R0, R2, R0,LSL#2
STR             R0, [R4,#8]
POP             {R4-R8,PC}
