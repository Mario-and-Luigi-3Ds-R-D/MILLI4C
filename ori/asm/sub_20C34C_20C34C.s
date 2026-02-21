LDR             R0, =off_6CE970
PUSH            {R4,LR}
ADD             R1, R2, #0x68 ; 'h'
LDR             R0, [R0]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x21000
LDR             R0, [R0,#0x9C]
LDR             R2, [R0]
LDR             R2, [R2,#0x20]
BLX             R2
MOV             R0, #0
POP             {R4,PC}
