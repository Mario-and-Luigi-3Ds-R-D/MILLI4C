PUSH            {R4,R5,R9-R11}
LDM             R1!, {R2}
LDM             R1!, {R3}
STM             R0!, {R2}
STM             R0!, {R3}
POP             {R4,R5,R9-R11}
BX              LR
