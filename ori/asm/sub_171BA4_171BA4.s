PUSH            {R4,LR}
MOV             R4, R0
ADD             R0, R0, #0x2400
ADD             R0, R0, #0x2DC
BL              sub_5A1BAC
ADD             R4, R4, #0x2400
ADD             R4, R4, #0x2B8
MOV             R0, #1
STRB            R0, [R4]
POP             {R4,PC}
