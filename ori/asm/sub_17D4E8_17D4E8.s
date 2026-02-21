LDR             R0, =unk_6E7EC0
MOV             R2, #0x60 ; '`'
MOV             R1, #0xFFFFFFFF
PUSH            {R4,LR}
BL              sub_110BE4
MOV             R0, #0
POP             {R4,PC}
