ADD             R0, R0, R1,LSL#2
PUSH            {R4,LR}
LDR             R0, [R0,#4]
BL              sub_10AEA0
POP             {R4,LR}
NOP
