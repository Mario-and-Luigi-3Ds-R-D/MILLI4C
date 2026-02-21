PUSH            {R4-R8,LR}
MOV             R4, R0
ADD             R0, SP, #0x18+arg_0
LDM             R0, {R5-R7}
ADD             R0, R4, #4
STM             R0, {R1-R3}
MOV             R0, R1
LDRB            R1, [R1,#2]
MOV             R2, #0x40 ; '@'
CMP             R1, #0
ADDNE           R1, R0, #0x20 ; ' '
LDREQ           R0, =dword_6CEF18
LDREQ           R1, [R0,#(off_6CEF28 - 0x6CEF18)]; unk_658260
ADD             R0, R4, #0x7C ; '|'
BL              sub_1273D0
MOV             R3, R7
MOV             R2, R6
MOV             R1, R5
MOV             R0, R4
BL              sub_11DCDC
LDR             R0, [R4,#0xC]
VLDR            S0, =1.0
CMP             R0, #0
VSTR            S0, [R4,#0x74]
VSTR            S0, [R4,#0x78]
MOVNE           R0, #1
STRB            R0, [R4,#0x72]
POP             {R4-R8,PC}
