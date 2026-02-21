PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R1]
MOV             R5, R1
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #0
LDRNE           R0, [R4,#0x60]
ADDNE           R0, R0, #0xCC0
BNE             locret_1CACE0
LDR             R0, [R5,#0x86C]
AND             R0, R0, #0xF
CMP             R0, #6
LDR             R0, [R4,#0x60]
ADDEQ           R0, R0, #0xC00
ADDNE           R0, R0, #0x5A0
POP             {R4-R6,PC}
