MOV             R3, R0
PUSH            {R4,LR}
LDR             R0, [R2,#8]
VLDR            S0, =0.0
AND             R0, R0, #0xFF
CMP             R0, #0xE
BHI             loc_2062A0
LDR             R12, =off_6CE970
LDR             R12, [R12]
ADD             R0, R12, R0,LSL#2
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
VLDR            S0, [R0,#0x118]
CMP             R1, #0
LDRH            R0, [R2,#2]
ADDNE           R1, R1, #4
MOV             R2, R1
MOV             R1, R3
BL              sub_145730
MOV             R0, #0
POP             {R4,PC}
