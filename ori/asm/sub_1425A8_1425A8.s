PUSH            {R1-R11,LR}
SUB             R1, R0, #0x68 ; 'h'
LDM             R1!, {R2-R12,LR}
STM             R0!, {R2-R12,LR}
LDM             R1!, {R2-R12,LR}
STM             R0!, {R2-R12,LR}
LDM             R1!, {R2,R3}
STM             R0!, {R2,R3}
POP             {R1-R11,PC}
