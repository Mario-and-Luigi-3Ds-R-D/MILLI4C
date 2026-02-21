PUSH            {R4,LR}
SUB             SP, SP, #0x40
MOV             R4, R0
MOV             R0, SP
BL              sub_116A40
MOV             R1, SP
MOV             R0, R4
BL              sub_1E5C94
LDR             R0, [R4,#0xAA8]
CMP             R0, #0
BEQ             loc_1C7B84
LDR             R1, [R0]
LDR             R2, [R1,#0x28]
MOV             R1, SP
BLX             R2
ADD             SP, SP, #0x40 ; '@'
POP             {R4,PC}
