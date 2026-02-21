MOV             R1, #0
MOV             R0, #0x580000
PUSH            {R4,LR}
BL              sub_108178
LDR             R0, =dword_6EA200
POP             {R4,LR}
B               sub_104420
