LDR             R1, =off_6CE970
PUSH            {R4,LR}
LDR             R0, =0x120F74
LDR             R3, [R1]
ADD             R1, R2, #0x68 ; 'h'
LDR             R0, [R3,R0]
CMP             R0, #0
BEQ             locret_208B24
LDR             R2, [R0]
LDR             R2, [R2,#0x20]
BLX             R2
MOV             R0, #0
POP             {R4,PC}
