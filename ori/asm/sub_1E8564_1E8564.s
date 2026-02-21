PUSH            {R4,LR}
BL              sub_1E9F04
LDRB            R12, [R0,#0x17D]
LDR             R3, =off_6B233C
MOV             R2, #0xFF
STRB            R2, [R0,#0x17C]
MOV             R1, #0
STR             R3, [R0]
BIC             R2, R12, #6
STRB            R1, [R0,#0x17E]
STRB            R2, [R0,#0x17D]
STR             R1, [R0,#0x180]
POP             {R4,PC}
