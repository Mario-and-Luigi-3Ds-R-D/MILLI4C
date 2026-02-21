PUSH            {R4,LR}
LDR             R2, =off_6B3D84
LDR             R1, [R0,#0xB8]
MOV             R4, R0
STR             R2, [R0]
CMP             R1, #0
MOVNE           R0, R1
BLNE            sub_533330
MOV             R0, R4
BL              sub_233754
POP             {R4,LR}
B               sub_300FD4
