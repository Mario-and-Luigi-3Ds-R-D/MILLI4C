PUSH            {R4,R5,LR}
SUB             SP, SP, #0xC
ADD             LR, SP, #0x18+arg_0
LDM             LR, {R4,R5,R12}
STMEA           SP, {R4,R5,R12}
BL              sub_122F00
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
