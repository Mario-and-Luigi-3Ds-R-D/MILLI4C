PUSH            {R4,R5,LR}
MOV             R4, R0
SUB             SP, SP, #0xC
MOV             R5, #0
STR             R1, [R4]
MOV             R12, #0x80
STRH            R5, [R4,#4]
STRH            R12, [R4,#6]
MOV             R2, #0xFFFFFFFF
ADD             R12, R4, #0x4C ; 'L'
STRB            R5, [R4,#0x48]
MOV             R3, R2
MOV             R0, R2
STRB            R5, [R4,#0x49]
STM             R12, {R0,R2,R3}
BL              sub_10E8B0
STRH            R5, [R4,#8]
STRH            R5, [R4,#0xA]
STRH            R5, [R4,#0xC]
STRH            R5, [R4,#0xE]
STRH            R5, [R4,#0x10]
MOV             R0, R4
STRH            R5, [R4,#0x12]
BL              sub_10E3EC
STRB            R5, [R4,#0x48]
MOV             R3, #1
ADD             R2, SP, #0x18+var_10
MOV             R1, SP
MOV             R0, R4
STRB            R5, [R4,#0x49]
BL              sub_10E494
ADD             SP, SP, #0xC
MOV             R0, R4
POP             {R4,R5,PC}
