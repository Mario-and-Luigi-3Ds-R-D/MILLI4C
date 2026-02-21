PUSH            {R4-R6,LR}
LDR             R4, =dword_70E660
MOV             R0, R4
BL              sub_13273C
LDR             R1, =dword_6D4B88
LDR             R0, [R1]
CMP             R0, #0
BLE             loc_119BD8
ADD             R0, R0, #1
STR             R0, [R1]
LDR             R5, =0x82067F9
MOV             R0, R4
BL              sub_1327BC
MOV             R0, R5
POP             {R4-R6,PC}
LDR             R0, =aSrv; "srv:"
BL              sub_10EDF8
MOV             R5, R0
MOV             R0, R4
BL              sub_1327BC
MOV             R0, R5
POP             {R4-R6,PC}
