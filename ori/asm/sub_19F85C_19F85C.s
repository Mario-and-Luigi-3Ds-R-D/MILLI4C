PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#4]
LDR             R0, [R0,#0x410]
BL              sub_5C6830
CMP             R0, #0
BNE             locret_19F884
LDR             R0, [R4,#4]
ADD             R0, R0, #0x3F4
BL              sub_61E3C4
POP             {R4,PC}
