PUSH            {R4,LR}
MOV             R4, R0
ADD             R0, R0, #0x34 ; '4'
BL              sub_123CE8
ADD             R4, R4, #0x34 ; '4'
LDR             R0, [R4,#0x18]
CMP             R0, #0
BEQ             locret_25383C
MOV             R0, R4
BL              sub_4857C8
LDR             R2, [R4]
LDRB            R1, [R4,#0x1C]
LDR             R0, [R4,#0x18]
MOV             R2, R2,LSL#8
MOV             R2, R2,LSR#16
BL              sub_5D1DCC
STRB            R0, [R4,#0x1D]
POP             {R4,PC}
