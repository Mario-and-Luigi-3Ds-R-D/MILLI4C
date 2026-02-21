PUSH            {R4,R5}
LDR             R4, [SP,#8+arg_0]
LDR             R5, [SP,#8+arg_4]
SVC             0x22 ; '"'
POP             {R4,R5}
BX              LR
