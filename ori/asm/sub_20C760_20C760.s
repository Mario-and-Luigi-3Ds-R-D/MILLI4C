PUSH            {R4,LR}
LDR             R3, [R2,#8]!
LDR             R0, =off_6CE970
LDR             R1, [R2,#4]!
ADD             R2, R2, #0x64 ; 'd'
UXTH            R3, R3
CMP             R3, #0x1000
LDR             R0, [R0]
LDREQ           R3, =0x11915C
AND             R1, R1, #0xFF
BEQ             loc_20C7A0
SUB             R3, R3, #0x1000
SUBS            R3, R3, #1
LDREQ           R3, =0x1194B8
MOVNE           R0, #0
BNE             locret_20C7AC
ADD             R0, R0, R3
BL              sub_2A43F8
MOV             R0, #0
POP             {R4,PC}
