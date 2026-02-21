PUSH            {R4-R6,LR}
SUBS            R5, R0, #0
LDRGT           R6, =unk_70A1B0
LDRGT           R4, [R6,#(dword_70A1BC - 0x70A1B0)]
BLE             loc_133C58
MOV             R0, R4
LDR             R0, [R0,#0xC]
CMP             R0, R5
NOP
BNE             loc_133C40
MOV             R0, R4
POP             {R4-R6,PC}
LDRD            R0, R1, [R6,#8]
ADD             R4, R4, #0x480
ADD             R0, R0, R0,LSL#3
ADD             R0, R1, R0,LSL#7
CMP             R0, R4
BHI             loc_133C24
MOV             R0, #0
POP             {R4-R6,PC}
