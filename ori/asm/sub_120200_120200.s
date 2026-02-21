PUSH            {R0}
SVC             0x2D ; '-'
LDR             R2, [SP,#4+var_4]
STR             R1, [R2]
ADD             SP, SP, #4
BX              LR
