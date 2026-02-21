PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6B3DD8
STR             R0, [R4]
MOV             R0, R4
BL              sub_29F4FC
LDR             R1, =off_6B7B40
MOV             R0, R4
STR             R1, [R4]
BL              sub_4A2244
MOV             R0, R4
POP             {R4,PC}
