PUSH            {R4-R6,LR}
MOV             R5, R0
MOV             R4, R1
MOV             R0, R2
MOV             R1, #2
BL              sub_106BA0
RSB             R0, R0, R0,LSL#3
ADD             R0, R0, R0,LSL#2
ADD             R0, R4, R0,LSL#2
ADD             R1, R0, #0x14
MOV             R0, R5
POP             {R4-R6,LR}
NOP
LDRB            R2, [R1,#0x84]
ADD             R3, R1, R2,LSL#4
ADD             R2, R3, #4
ADD             R3, R3, #0x14
VLDR            S0, [R2]
LDR             R12, [R2,#8]
VSTR            S0, [R3,#4]
VSTR            S0, [R3]
STR             R12, [R3,#8]
LDR             R12, [R2]
ADD             R3, R3, #4
STR             R12, [R2,#8]
LDRB            R2, [R1,#0x84]
ADD             R2, R2, #1
STRB            R2, [R1,#0x84]
LDM             R3, {R1,R2}
STM             R0, {R1,R2}
BX              LR
