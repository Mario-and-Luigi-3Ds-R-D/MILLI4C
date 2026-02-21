MOV             R0, R1
LDR             R1, =off_6D1648
MOV             R12, R2
PUSH            {R4,LR}
LDR             R2, =0x4228
LDR             R1, [R1]
LDRB            R2, [R2,R1]
CMP             R2, #0
CMPNE           R2, #1
BEQ             loc_17EEAC
CMP             R2, #2
ADDEQ           R0, R1, #0x4000
ADDEQ           R0, R0, #0x180
BLEQ            sub_1E85B0
MOV             R0, #0
POP             {R4,PC}
MOV             R2, R3
MOV             R1, R12
BL              sub_29D1B0
MOV             R0, #3
POP             {R4,PC}
