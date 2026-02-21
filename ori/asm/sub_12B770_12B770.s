PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
MOV             R5, R1
CMP             R0, #0
CMNNE           R4, #0x2C4
BEQ             loc_12B868
LDR             R0, [R0,#0x10]
CMP             R0, #0x12C
LDRCS           R1, =0x12E
CMPCS           R1, R0
ADDCS           R0, R4, #0x2C4
ADDCS           R2, R4, #0x2D4
BCC             loc_12B868
LDR             R1, [R0]
CMP             R1, #0
BEQ             loc_12B85C
MOV             R0, R1
BL              sub_13FC04
CMP             R0, #4
NOP
BGE             loc_12B868
LDR             R0, [R4,#0x40]
LDR             R1, [R4,#0x47C]
MOV             R2, #0
LDR             R3, [R0,#0x10]
CMP             R1, R3
BGE             loc_12B854
LDR             R12, =0x92492493
MOV             R3, R2
LDRSB           R6, [R0,#0x1E]
SMLAL           R3, R1, R12, R1
MOV             R3, R1,ASR#3
SUB             R1, R3, R1,ASR#31
MUL             R1, R1, R6
MOV             R1, R1,LSL#3
MOV             R3, R1,ASR#31
STM             R5, {R1,R3}
LDRSB           R6, [R0,#0x1F]
CMP             R6, #0
BGT             loc_12B844
LDR             R6, [R0,#0x10]
LDR             R4, [R4,#0x47C]
LDRSB           R0, [R0,#0x1E]
SUB             R4, R6, R4
ADD             R4, R4, #0xD
SMLAL           R2, R4, R12, R4
MOV             R2, R4,ASR#3
SUB             R2, R2, R4,ASR#31
MUL             R0, R2, R0
MOV             R2, R0,LSL#3
CMP             R2, #0x8000
BLE             loc_12B848
MOV             R2, #0x8000
ADDS            R0, R1, #0x1000
ADC             R1, R3, #0
STRD            R0, R1, [R5]
MOV             R0, R2
POP             {R4-R6,PC}
ADD             R0, R0, #4
CMP             R0, R2
BNE             loc_12B7A8
MOV             R0, #0
MOV             R1, R0
STRD            R0, R1, [R5]
POP             {R4-R6,PC}
