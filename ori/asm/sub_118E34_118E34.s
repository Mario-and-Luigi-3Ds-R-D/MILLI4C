LDR             R1, =0x713000
CMP             R0, R1
BCC             locret_118E48
RSB             R1, R1, #0x8000000
ADD             R0, R0, R1
BX              LR
