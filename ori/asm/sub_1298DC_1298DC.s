PUSH            {R4}
MOV             R2, #0
STR             R1, [R0]
LDR             R1, [R0]
LDREX           R1, [R1]
AND             R3, R1, #0xFF
CMP             R3, #0xF
BICCS           R1, R1, #0xFF
ORRCS           R1, R1, R2
MOV             R3, R2,LSL#8
BIC             R1, R1, #0xFF00
AND             R3, R3, #0xFF00
ORR             R1, R1, R3
MOV             R12, R2,LSL#16
AND             R12, R12, #0xFF0000
BIC             R1, R1, #0xFF0000
LDR             R3, [R0]
ORR             R1, R1, R12
BIC             R1, R1, #0xFF000000
ORR             R1, R1, R2,LSL#24
STREX           R12, R1, [R3]
CMP             R12, #0
BNE             loc_1298E8
POP             {R4}
BX              LR
