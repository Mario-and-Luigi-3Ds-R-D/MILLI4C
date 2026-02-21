PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
LDRB            R1, [R0,#0xDE]
BIC             R1, R1, #1
STRB            R1, [R0,#0xDE]
LDR             R0, [R4,#8]
LDR             R1, [R0]
LDR             R2, [R1,#0x84]
MOV             R1, #0
BLX             R2
LDR             R1, =off_67ECA8
LDRD            R0, R1, [R1]
STRD            R0, R1, [R4]
POP             {R4,PC}
