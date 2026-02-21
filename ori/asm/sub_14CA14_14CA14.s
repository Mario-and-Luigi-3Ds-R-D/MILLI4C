LDR             R0, [R1,#0x60]
CMP             R0, #0
BEQ             locret_14CA28
ADD             R0, R1, #0x54 ; 'T'
B               sub_528B1C
BX              LR
