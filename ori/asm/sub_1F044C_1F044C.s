PUSH            {R4,LR}
MOV             R4, R0
MOV             R0, R1
LDR             R1, [R1]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #0
LDREQ           R0, [R4,#0x60]
ADDEQ           R0, R0, #0x540
MOVNE           R0, #0
POP             {R4,PC}
