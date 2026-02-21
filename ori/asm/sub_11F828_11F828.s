PUSH            {R4-R6,LR}
SUB             SP, SP, #0x10
ADD             LR, SP, #0x20+arg_0
LDM             LR, {R4-R6,R12}
STMEA           SP, {R4-R6,R12}
BL              sub_122924
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
