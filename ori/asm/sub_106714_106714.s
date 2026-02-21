PUSH            {R4,LR}
LDM             R0, {R1,R2}
LDR             R0, =0x7CFC8400
LDR             R3, =0x395F
ADDS            R0, R0, R1
ADC             R1, R2, R3
LDR             R2, =0x5265C00
MOV             R3, #0
BL              sub_116AC0
LDR             R0, =0x10624DD3
SMULL           R1, R0, R0, R2
MOV             R1, #0xFFFFFF83
MOV             R3, R0,ASR#6
SUB             R0, R3, R0,ASR#31
MUL             R0, R0, R1
ADD             R0, R2, R0,LSL#3
POP             {R4,PC}
