LDR             R3, =off_6CE970
PUSH            {R4,LR}
LDR             R3, [R3]
ADD             R3, R3, #0x138000
ADD             R3, R3, #0xF60
LDRB            R3, [R3,#0x12]
CMP             R3, #0
CMPNE           R3, #0xFF
MOVEQ           R0, #0
BEQ             locret_2088C4
CMP             R1, #0
ADDNE           R1, R1, #4
BL              sub_29D1B0
MOV             R0, #3
POP             {R4,PC}
