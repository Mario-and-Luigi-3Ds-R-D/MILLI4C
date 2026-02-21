AND             R3, R1, #0xFF
MOV             R1, R2
PUSH            {R0,LR}
ORR             R2, R3, R3,LSL#8
ORR             R2, R2, R2,LSL#16
BL              loc_120390
POP             {R0,PC}
