PUSH            {R4,R5,LR}
SUB             SP, SP, #0xC
MOV             R12, #1
MOV             R5, #0
MOV             R4, #3
STMEA           SP, {R4,R5,R12}
BL              sub_20BE40
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
