PUSH            {R4-R6,LR}
ADD             R2, R0, #0x400
ADD             R2, R2, #0x358
MOV             R4, R0
MOV             R5, R1
MOV             R0, R2
BL              sub_1E8FFC
LDR             R0, [R4]
MOV             R1, R5
LDR             R2, [R0,#0x320]
MOV             R0, R4
POP             {R4-R6,LR}
BX              R2
