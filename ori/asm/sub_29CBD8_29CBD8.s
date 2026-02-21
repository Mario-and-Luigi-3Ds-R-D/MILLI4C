PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0x190]
CMP             R0, #0
BLE             loc_29CBFC
SUB             R0, R0, #1
CMP             R0, #0
STR             R0, [R4,#0x190]
BGT             locret_29CC14
ADD             R1, R4, #0x248
MOV             R0, R4
BL              sub_29C814
LDR             R1, =off_67E548
LDRD            R0, R1, [R1,#(off_67E568 - 0x67E548)]
STRD            R0, R1, [R4]
POP             {R4,PC}
