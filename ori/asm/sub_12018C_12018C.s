PUSH            {R4,LR}
BL              sub_118B10
BL              sub_118B8C
POP             {R4,LR}
NOP
MOV             R0, #0x3000000
VMSR            FPSCR, R0
BX              LR
