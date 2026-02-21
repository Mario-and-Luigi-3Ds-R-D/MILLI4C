PUSH            {R4,LR}
MOV             R4, R0
LDRB            R0, [R0,#0x414]
CMP             R0, #1
BNE             locret_24CF70
ADD             R0, R4, #0x1FC
BL              sub_5F19B8
CMP             R0, #0
BNE             locret_24CF70
MOV             R1, #1
MOV             R0, #2
STRB            R1, [R4,#0x1D]
STRB            R0, [R4,#0x414]
POP             {R4,PC}
