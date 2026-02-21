PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, R1
MOV             R6, R2
BL              sub_13DF78
CMP             R0, #0
BEQ             locret_141B4C
ADD             R1, R4, #0x1300
LDRH            R2, [R6,#0x12]
LDRH            R0, [R1,#0x1A]
LDRH            R1, [R1,#0x1C]
AND             R0, R0, #1
ADD             R1, R1, R1,LSL#1
ADD             R0, R0, R0,LSL#1
ADD             R1, R4, R1,LSL#5
ADD             R1, R1, R5,LSL#2
ADD             R1, R1, #0x1000
ADD             R0, R4, R0,LSL#5
LDR             R1, [R1,#0x170]
ADD             R0, R0, R5,LSL#2
ADD             R0, R0, #0x1000
LDRH            R1, [R1,#8]
LDR             R0, [R0,#0xB0]
CMP             R1, R2
BNE             loc_141B48
STRH            R2, [R0,#0xBE]
LDRSB           R12, [R6,#0x10]
LDRH            R2, [R0,#0xBC]
MOV             R3, #2
AND             R3, R3, R12,LSL#1
BIC             R2, R2, #2
ORR             R2, R2, R3
STRH            R2, [R0,#0xBC]
LDR             R2, [R6,#4]
MOV             R2, R2,ROR#16
STR             R2, [R0,#0xB0]
LDR             R1, [R0]
ORR             R1, R1, #8
STR             R1, [R0]
MOV             R0, #1
POP             {R4-R6,PC}
