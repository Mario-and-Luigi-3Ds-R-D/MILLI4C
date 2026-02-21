PUSH            {R4,R5,LR}
MOV             R5, R1
LDR             R1, =byte_6D4A28
MOV             R4, R0
LDR             R0, =0xC8A0A7F8
SUB             SP, SP, #0xC
LDR             R12, [R1,#(dword_6D4A30 - 0x6D4A28)]
CMP             R12, #0
MOVEQ           R1, #0
STRHEQ          R1, [R3]
BEQ             loc_128578
STRD            R2, R3, [SP,#0x18+var_18]
MOV             R3, R5
MOV             R2, #0
MOV             R1, R4
MOV             R0, R12
BL              sub_132ACC
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
