LDR             R1, =off_6ACEEC
PUSH            {R4,LR}
MOV             R4, R0
MOV             R0, #0
STR             R1, [R4]
STRB            R0, [R4,#0x1C]
STR             R0, [R4,#0x20]
ADD             R0, R4, #4
MOV             R2, #0x18
MOV             R1, #0
BL              sub_110BE4
MOV             R0, R4
POP             {R4,PC}
