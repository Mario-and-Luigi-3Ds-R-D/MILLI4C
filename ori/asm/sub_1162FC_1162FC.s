LDR             R0, =off_6D2420
PUSH            {R4}
LDR             R4, =0x8D51
MOV             R12, #0
LDR             R0, [R0]
CMP             R1, R4
SUB             R3, R1, R4
LDR             R0, [R0,#0xC]
BEQ             loc_1163CC
BGE             loc_11637C
SUB             R4, R4, #0xE
CMP             R1, R4
LDREQ           R0, [R0,#0x10]
SUB             R3, R1, R4
BEQ             loc_1163C0
BGT             loc_116364
SUB             R1, R1, #0x6700
SUBS            R1, R1, #0x92
LDREQ           R0, [R0]
BEQ             loc_1163C0
SUB             R1, R1, #0x2000
SUBS            R1, R1, #0x5B0
LDREQ           R0, [R0,#0xC]
BEQ             loc_1163C0
POP             {R4}
BX              LR
CMP             R3, #1
LDREQ           R0, [R0,#0x14]
BEQ             loc_1163C0
CMP             R3, #0xD
BNE             loc_11635C
B               loc_1163CC
CMP             R3, #1
CMPNE           R3, #2
BEQ             loc_1163CC
CMP             R3, #3
CMPNE           R3, #4
BNE             loc_11635C
LDR             R3, [R0,#0x14]
SUB             R4, R3, #0x8100
SUBS            R4, R4, #0xA5
SUBNE           R4, R3, #0x8100
SUBSNE          R4, R4, #0xA6
SUBNE           R4, R3, #0x8000
SUBSNE          R4, R4, #0x8F0
BEQ             loc_116428
STR             R12, [R2]
POP             {R4}
BX              LR
STR             R0, [R2]
POP             {R4}
BX              LR
LDR             R3, [R0,#0x14]
SUB             R4, R3, #0x8000
SUBS            R4, R4, #0x58 ; 'X'
SUBNE           R4, R3, #0x8000
SUBSNE          R4, R4, #0x57 ; 'W'
BEQ             loc_11640C
SUB             R4, R3, #0x8D00
SUBS            R4, R4, #0x62 ; 'b'
SUBNE           R4, R3, #0x8000
SUBSNE          R4, R4, #0x56 ; 'V'
BEQ             loc_11640C
SUB             R4, R3, #0x1800
SUBS            R4, R4, #0x108
SUBNE           R4, R3, #0x1900
SUBSNE          R4, R4, #7
BNE             loc_1163B4
ADD             R0, R0, R1,LSL#2
SUB             R0, R0, #0x23400
SUB             R0, R0, #0x11C
LDR             R0, [R0]
STR             R0, [R2]
POP             {R4}
BX              LR
ADD             R0, R0, R1,LSL#2
SUB             R0, R0, #0x23400
SUB             R0, R0, #0x12C
LDR             R0, [R0]
STR             R0, [R2]
POP             {R4}
BX              LR
