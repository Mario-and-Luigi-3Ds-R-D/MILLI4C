PUSH            {R4-R6,LR}
MOV             R1, R2
LDR             R2, [R0]
ADD             R4, R3, #8
LDR             R3, [R3,#8]
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R3
BLX             R12
LDR             R5, [R4,#4]
ADD             R3, R0, #0x640
MOV             R1, #7
LDM             R3, {R2,R12}
ADD             R5, R5, R5,LSL#1
ADD             R0, R0, #0x640
MVN             R1, R1,LSL R5
MOV             R5, R1,ASR#31
AND             R1, R1, R2
AND             R2, R12, R5
ADD             R12, R4, #4
STM             R0, {R1,R2}
LDM             R12, {R0,R12}
CMP             R12, #0
AND             R12, R0, #0xFF
LDR             R0, [R4,#0xC]
MOVNE           R5, #1
MOVEQ           R5, #0
CMP             R0, #0
LDR             R0, [R4,#0x10]
MOVNE           R6, #1
MOVEQ           R6, #0
CMP             R0, #0
MOVNE           R0, #1
ORR             R4, R5, R6,LSL#1
ADD             R12, R12, R12,LSL#1
ORR             R0, R4, R0,LSL#2
MOV             R0, R0,LSL R12
MOV             R12, R0,ASR#31
ORR             R0, R0, R1
ORR             R1, R12, R2
STRD            R0, R1, [R3]
MOV             R0, #0
POP             {R4-R6,PC}
