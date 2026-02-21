MOV             R2, #0xFFFFFFFF
PUSH            {R4,LR}
STM             R0, {R1,R2}
ADD             R0, R0, #0xC
BL              sub_107C2C
SUB             R0, R0, #0xC
MOV             R3, #1
STRB            R3, [R0,#0x30]
MOV             R1, #0xFFFFFFFF
ADD             R3, R0, #0x38 ; '8'
MOV             R2, R1
STM             R3, {R1,R2}
POP             {R4,PC}
