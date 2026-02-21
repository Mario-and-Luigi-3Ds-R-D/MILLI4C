PUSH            {R4,R5,R9-R11}
LDM             R1!, {R2,R3}
LDM             R1!, {R11,R12}
STM             R0!, {R2,R3}
STM             R0!, {R11,R12}
POP             {R4,R5,R9-R11}
BX              LR
