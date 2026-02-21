PUSH            {R4,LR}
MOV             R4, R0
BL              sub_13DF78
CMP             R0, #0
MOVEQ           R0, #0xFFFFFFFF
BEQ             locret_13E5A4
LDR             R0, =0x131C
LDRH            R0, [R0,R4]
ADD             R0, R4, R0,LSL#2
ADD             R0, R0, #0x1000
LDR             R0, [R0,#0xA8]
LDRH            R0, [R0,#2]
POP             {R4,PC}
