PUSH            {R4,R5,LR}
SUB             SP, SP, #0xC
MOV             R4, R0
BL              sub_1E51BC
ADD             R2, R4, #0x58 ; 'X'
LDR             R0, [R4,#0xB8]
ADD             R5, R4, #0x1C
VLDM            R2, {S0-S2}
MOV             R1, SP
VSTMEA          SP, {S0-S2}
BL              sub_4C56EC
LDR             R0, [R4,#0xB8]
MOV             R1, R5
BL              sub_4C57D8
LDR             R0, [R4,#0xB8]
LDR             R1, [R4,#4]
STR             R1, [R0,#0x98]
LDR             R1, [R4,#8]
STR             R1, [R0,#0xA8]
LDR             R1, [R4,#0xC]
STR             R1, [R0,#0xB8]
LDR             R0, [R4,#0xB8]
BL              sub_4C5864
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
