PUSH            {R4,R5,R9-R11}
LDM             R1!, {R2-R5}
PLD             [R1,#0x40]
LDM             R1!, {R9-R12}
STM             R0!, {R2-R5}
STM             R0!, {R9-R12}
LDM             R1!, {R2-R5}
PLD             [R1,#0x40]
LDM             R1!, {R9-R12}
STM             R0!, {R2-R5}
STM             R0!, {R9-R12}
LDM             R1!, {R2-R5}
LDM             R1!, {R11,R12}
STM             R0!, {R2-R5}
STM             R0!, {R11,R12}
POP             {R4,R5,R9-R11}
BX              LR
