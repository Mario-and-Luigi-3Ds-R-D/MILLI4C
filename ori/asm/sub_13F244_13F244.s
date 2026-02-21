PUSH            {R4,LR}
SUBS            R4, R0, #0
CMPNE           R1, #0
CMPNE           R2, #0
BLE             loc_13F260
CMP             R0, R1
BLNE            sub_302870
MOV             R0, R4
POP             {R4,PC}
