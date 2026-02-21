PUSH            {R4}
LDR             R12, [R0]
CMP             R12, R1
BNE             loc_119DE4
LDRH            R1, [R0,#4]
SUB             R12, R1, #0xFE00
SUBS            R12, R12, #0xFF
BNE             loc_119DE4
LDR             R1, [R0,#8]
MOV             R12, R2,LSR#24
CMP             R12, R1,LSR#24
BNE             loc_119DE4
MOV             R12, R2,LSL#8
MOV             R4, R1,LSL#8
MOV             R12, R12,LSR#24
MOV             R4, R4,LSR#24
CMP             R12, R4
BCC             loc_119DE4
MOV             R2, R2,LSL#24
CMP             R2, R1,LSL#24
BHI             loc_119DE4
LDR             R1, [R0,#0xC]
MOV             R2, #0x14
ADD             R2, R2, R3,LSL#3
CMP             R1, R2
LDRHCS          R0, [R0,#0x10]
CMPCS           R0, R3
MOVCS           R0, #1
BCS             loc_119DE8
MOV             R0, #0
POP             {R4}
BX              LR
