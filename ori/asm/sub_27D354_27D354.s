LDR             R0, [R0,#0x71C]
CMP             R0, #0
BEQ             locret_27D36C
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BX              R1
BX              LR
