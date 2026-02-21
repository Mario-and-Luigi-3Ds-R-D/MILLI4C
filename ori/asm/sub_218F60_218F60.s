LDR             R12, =off_6CE970
PUSH            {R4}
MOV             R4, #0
CMP             R3, #0
STRB            R4, [R0,#0xFD]
LDR             R12, [R12]
LDREQ           R3, =0x1835D8
ADDEQ           R3, R3, R12; loc_1835D8
CMP             R2, #0
LDREQ           R2, =0x19D678
STR             R3, [R0,#0x13C]
VSTR            S0, [R0,#0x140]
ADDEQ           R2, R2, R12
STR             R2, [R0,#0x144]
STRB            R1, [R0,#0xFE]
POP             {R4}
BX              LR
