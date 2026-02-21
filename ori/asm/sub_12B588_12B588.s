PUSH            {R4,LR}
SUBS            R4, R0, #0
MOV             R0, R1
MOV             R1, R2
CMPNE           R1, #0
BLE             loc_12B5AC
AND             R2, R0, #0xFF
MOV             R0, R4
BL              sub_116B10
MOV             R0, R4
POP             {R4,PC}
