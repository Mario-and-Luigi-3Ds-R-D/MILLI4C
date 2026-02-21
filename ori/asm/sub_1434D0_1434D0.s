PUSH            {R0}
LDR             R0, [SP,#4+arg_0]
SVC             0x1E
LDR             R2, [SP,#4+var_4]
STR             R1, [R2]
ADD             SP, SP, #4
BX              LR
