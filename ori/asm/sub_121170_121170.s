MOV             R12, R1
PUSH            {R4,R5}
LDR             R1, [R0,#0xA0]!
ADD             R0, R0, #0x28 ; '('
LDM             R0, {R3,R4}
AND             R0, R1, #0xF
MOV             R1, R1,LSR#4
CMP             R4, R0
BLE             loc_1211C4
ADD             R0, R0, R0,LSL#1
ADD             R0, R3, R0,LSL#2
LDR             R3, [R0,#4]
CMP             R3, R1
BLS             loc_1211C4
LDR             R0, [R0]
ADDS            R3, R0, R1
BEQ             loc_1211C4
POP             {R4,R5}
MOV             R1, R2
MOV             R0, R12
BX              R3
LDR             R0, =0xD8E12C04
POP             {R4,R5}
BX              LR
