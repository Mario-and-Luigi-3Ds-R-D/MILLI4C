PUSH            {R4,LR}
SUB             SP, SP, #0x10
MOV             R12, #1
MOV             R4, #0
MOV             R3, #2
STMEA           SP, {R3,R4,R12}
MOV             R3, R12
BL              sub_20BE40
ADD             SP, SP, #0x10
POP             {R4,PC}
