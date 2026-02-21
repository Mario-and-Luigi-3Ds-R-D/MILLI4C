PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D00
LDRH            R0, [R0,#4]
BL              sub_2AF718
LDR             R6, =off_6D1648
MOV             R5, R0
LDR             R0, [R6]
LDR             R0, [R0,#0xC8]
TST             R0, #7
BNE             loc_193BE8
LDR             R0, [R4]
MOV             R1, #1
LDR             R2, [R0,#0x204]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
MOV             R1, #0
LDR             R2, [R0,#0x208]
MOV             R0, R4
BLX             R2
LDR             R0, [R6]
BL              sub_5C8540
CMP             R0, #0
LDREQ           R0, =dword_6E7CD0
BLEQ            sub_586D74
LDR             R0, [R5]
TST             R0, #1
VLDREQ          S0, =0.4
VLDRNE          S0, =0.5
ADD             R0, R4, #0x14400
VSTR            S0, [R0,#0x210]
LDR             R0, [R5]
MOV             R0, R0,LSL#23
MOV             R1, R0,LSR#24
LDR             R0, =dword_6E7CD0
BL              sub_5870D4
LDR             R0, [R4]
MOV             R3, #0
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DC1C
LDM             R0, {R1,R2}
MOV             R0, R4
POP             {R4-R6,LR}
BX              R12
