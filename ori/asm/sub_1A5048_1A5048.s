LDR             R12, =unk_63F9C8
PUSH            {LR}
SUB             SP, SP, #0x14
LDM             R12, {R1-R3,R12}
STMEA           SP, {R1-R3,R12}
MOV             R1, SP
MOV             R2, #8
BL              sub_529204
ADD             SP, SP, #0x14
POP             {PC}
