PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6B0A78
STR             R0, [R4]
MOV             R0, R4
BL              sub_19CBFC
ADD             R0, R4, #0xF8
BL              sub_233754
SUB             R0, R0, #0xF8
POP             {R4,PC}
