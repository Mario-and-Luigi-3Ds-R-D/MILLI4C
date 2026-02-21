LDR             R2, [R0]
MOV             R3, #0x3E8
LDR             R1, =0xD6853CC1
LDRB            R0, [R0,#0xC]
MUL             R2, R2, R3
UMULL           R2, R1, R1, R2
MOVS            R1, R1,LSR#12
MOVEQ           R1, #1
CMP             R0, #0
MOVNE           R0, #4
MOVEQ           R0, #2
MUL             R0, R0, R1
ADD             R0, R0, R0,LSL#2
MOV             R0, R0,LSL#7
BX              LR
