PUSH            {R4,LR}
MOV             R4, R0
MOV             R0, R1
LDR             R1, [R1]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #0
LDR             R0, [R4,#0x60]
ADDEQ           R0, R0, #0x5A0
ADDNE           R0, R0, #0xA20
POP             {R4,PC}
