LDR             R3, =off_6CE970
PUSH            {R4,LR}
LDR             R3, [R3]
ADD             R3, R3, #0x190000
ADD             R3, R3, #0xCF00
LDRB            R12, [R3,#0x2A]
CMP             R12, #0
LDRSBNE         R3, [R3,#0x28]
LDRSBEQ         R3, [R3,#0x29]
CMP             R3, #0
MOVEQ           R0, #0
BEQ             locret_204198
CMP             R1, #0
ADDNE           R1, R1, #4
BL              sub_29D1B0
MOV             R0, #3
POP             {R4,PC}
