LDR             R0, =off_6CE970
PUSH            {R4,LR}
LDR             R0, [R0]
ADD             R0, R0, #0x120000
ADD             R0, R0, #0xF70
LDR             R0, [R0]
CMP             R0, #0
BEQ             locret_20A810
BL              sub_2A393C
MOV             R0, #0
POP             {R4,PC}
