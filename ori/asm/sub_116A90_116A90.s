PUSH            {R0,R4}
LDR             R0, [SP,#8+arg_0]
LDR             R4, [SP,#8+arg_4]
SVC             8
LDR             R2, [SP,#8+var_8]
STR             R1, [R2]
ADD             SP, SP, #4
POP             {R4}
BX              LR
