ADD             R2, R2, #8
PUSH            {R4,LR}
LDM             R2, {R0,R2}
AND             R4, R2, #0xFF
MOV             R1, R0,LSL#16
MOVS            R1, R1,LSR#16
MOVEQ           R0, #0
BEQ             loc_213B70
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F480
MOV             R1, R4
BL              sub_500BA0
MOV             R0, #0
POP             {R4,PC}
