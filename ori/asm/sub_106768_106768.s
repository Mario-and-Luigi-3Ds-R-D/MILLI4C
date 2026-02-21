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
LDR             R3, =0x88888889
SMULL           R1, R0, R0, R2
MOV             R2, #0
MOV             R1, R0,ASR#6
SUB             R0, R1, R0,ASR#31
MOV             R1, R0
SMLAL           R2, R1, R3, R0
MOV             R2, R1,ASR#5
SUB             R1, R2, R1,ASR#31
SUB             R1, R1, R1,LSL#4
ADD             R0, R0, R1,LSL#2
POP             {R4,PC}
