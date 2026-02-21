LDR             R2, =unk_63F9DC
PUSH            {LR}
SUB             SP, SP, #0xC
LDM             R2, {R1,R2}
STMEA           SP, {R1,R2}
MOV             R1, SP
MOV             R2, #4
BL              sub_529204
ADD             SP, SP, #0xC
POP             {PC}
