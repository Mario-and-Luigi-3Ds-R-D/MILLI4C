MOV             R3, #0
LDR             R1, =dword_6ED9B8
LDR             R0, =0x61ED8
MOV             R2, R3
PUSH            {R4,LR}
BL              sub_10A358
CMP             R0, #0
BLNE            sub_108798
MOV             R1, R0
LDR             R0, =off_6CF9F0
POP             {R4,LR}
B               sub_109238
