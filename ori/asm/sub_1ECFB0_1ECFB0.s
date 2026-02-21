PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0xBC]
SUB             SP, SP, #8
LDR             R1, [R0]
LDR             R1, [R1,#0x28]
BLX             R1
LDR             R0, [R4,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
CMP             R0, #0
BEQ             loc_1ED060
LDR             R0, [R4,#0x144]
BL              sub_3A1870
LDR             R0, =off_6CED48
MOV             R2, #0x20000
LDR             R0, [R0]
LDRB            R1, [R0,#0x98]
STRB            R1, [R4,#0x176]
LDRB            R0, [R0,#0x124]
LDR             R1, =dword_6E9820
STRB            R0, [R4,#0x177]
MOV             R0, SP
BL              sub_106C88
LDR             R1, =dword_6E9820
MOV             R2, #0x30000
MOV             R0, SP
BL              sub_106C88
LDR             R0, [R4,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x24]
BLX             R1
LDR             R0, [R4,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x44]
BLX             R1
LDR             R0, [R4]
MOV             R3, #0
LDR             R12, [R0,#0x28]
LDR             R0, =off_67E37C
LDM             R0, {R1,R2}
MOV             R0, R4
BLX             R12
LDR             R0, [R4]
LDR             R1, [R0,#0xD4]
ADD             SP, SP, #8
MOV             R0, R4
POP             {R4,LR}
BX              R1
