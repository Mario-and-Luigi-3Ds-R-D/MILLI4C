PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0xB8]
LDR             R1, =off_6B3D84
CMP             R0, #0
STR             R1, [R4]
BLNE            sub_533330
MOV             R0, R4
POP             {R4,LR}
B               sub_233754
