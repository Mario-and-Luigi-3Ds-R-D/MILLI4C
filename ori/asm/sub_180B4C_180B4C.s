PUSH            {R4,LR}
LDR             R0, [R0,#4]
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x18]
ADD             R0, R0, #0xA8
BL              sub_5A26D0
MOV             R0, #0
POP             {R4,PC}
