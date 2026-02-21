LDR             R1, =sub_3A30E4
MOV             R3, #2
MOV             R2, #6
ADD             R0, R0, #0x4C ; 'L'
PUSH            {R4,LR}
BLX             sub_1002F4
SUB             R0, R0, #0x4C ; 'L'
POP             {R4,PC}
