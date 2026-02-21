ADD             R2, R2, #8
PUSH            {R4,LR}
LDM             R2, {R0-R2}
AND             R1, R1, #0xFF
CMP             R2, #0
UXTH            R0, R0
MOVNE           R4, #1
MOVEQ           R4, #0
BL              sub_20FED4
STRB            R4, [R0,#0x1AA]
MOV             R0, #0
POP             {R4,PC}
