LDR             R1, =off_6B0A78
PUSH            {R4,LR}
MOV             R4, R0
STR             R1, [R0]
BL              sub_19CBFC
ADD             R0, R4, #0xF8
BL              sub_233754
POP             {R4,LR}
SUB             R0, R0, #0xF8
B               sub_300FD4
