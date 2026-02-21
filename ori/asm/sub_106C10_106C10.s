PUSH            {R4,LR}
MOV             R4, R0
MOV             R0, R1
MOV             R1, #2
BL              sub_106BA0
RSB             R0, R0, R0,LSL#3
ADD             R0, R0, R0,LSL#2
ADD             R0, R4, R0,LSL#2
POP             {R4,LR}
ADD             R0, R0, #0x14
NOP
PUSH            {R4}
LDRB            R1, [R0,#0x84]
ADD             R2, R0, R1,LSL#4
ADD             R1, R2, #4
LDR             R3, [R2,#0xC]
LDR             R4, [R2,#8]
LDR             R12, [R2,#-4]
SUB             R3, R3, R4
ADD             R3, R3, R12
STR             R3, [R2,#-4]
MOV             R2, #0
STR             R2, [R1,#8]
STR             R2, [R1,#4]
STR             R2, [R1]
LDRB            R1, [R0,#0x84]
SUB             R1, R1, #1
STRB            R1, [R0,#0x84]
POP             {R4}
BX              LR
