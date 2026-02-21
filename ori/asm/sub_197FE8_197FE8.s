PUSH            {R4-R8,LR}
MOV             R5, R0
VPUSH           {D8}
BL              sub_2004B8
LDR             R0, [R5,#0x218]
LDR             R1, [R0]
LDR             R1, [R1,#0x140]
BLX             R1
LDR             R0, [R5,#0x21C]
LDR             R1, [R0]
LDR             R1, [R1,#0x140]
BLX             R1
LDR             R1, [R5,#0x3D0]
LDR             R6, =off_6D1648
MOV             R0, #3
MOV             R7, #0
MOV             R1, R1,LSL#26
CMP             R0, R1,LSR#28
BNE             loc_1980F4
LDRB            R0, [R5,#0x3B4]
MOV             R4, #0
CMP             R0, #0
BLE             loc_19806C
ADD             R0, R5, R4,LSL#2
LDR             R0, [R0,#0x374]
MOV             R0, #0
CMP             R0, #0
NOP
BNE             loc_1980EC
LDRB            R0, [R5,#0x3B4]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_198044
LDR             R0, [R5]
LDR             R1, [R0,#0xB4]
MOV             R0, R5
BLX             R1
CMP             R0, #0
BNE             loc_1980EC
LDR             R0, [R5]
LDR             R1, [R0,#0xFC]
MOV             R0, R5
BLX             R1
CMP             R0, #0
BNE             loc_1980EC
LDR             R2, [R5,#0x3D0]
LDR             R1, =0x3CE
MOV             R0, #0xFFFFFFFF
BIC             R2, R2, #0x40 ; '@'
STR             R2, [R5,#0x3D0]
STRH            R0, [R1,R5]
MOV             R1, #0
MOV             R0, R5
BL              sub_1FF828
LDR             R0, [R6]
NOP
LDR             R0, [R0,#0xBC]
LDR             R1, =off_68BBB8
ADD             R0, R0, #0x15000
STR             R7, [R0,#0x1CC]
LDRD            R0, R1, [R1,#(off_68BBC8 - 0x68BBB8)]
STRD            R0, R1, [R5,#4]
LDR             R0, [R5,#0x3D0]
BIC             R0, R0, #0x3C ; '<'
STR             R0, [R5,#0x3D0]
VPOP            {D8}
POP             {R4-R8,PC}
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19B924
CMP             R0, #0
NOP
BEQ             loc_1980EC
LDRB            R0, [R5,#0x3B4]
MOV             R4, #0
CMP             R0, #0
BLE             loc_19814C
ADD             R0, R5, R4,LSL#2
LDR             R0, [R0,#0x374]
BL              sub_2C5064
CMP             R0, #0
NOP
BEQ             loc_1980EC
LDRB            R0, [R5,#0x3B4]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_198124
LDR             R0, [R5,#0x3D0]
BIC             R0, R0, #0x3C ; '<'
ORR             R0, R0, #0xC
STR             R0, [R5,#0x3D0]
LDR             R0, [R6]
BL              sub_1E4614
LDR             R1, [R5,#0x3D0]
BIC             R1, R1, #1
STR             R1, [R5,#0x3D0]
MOV             R1, #0
BL              sub_16CA4C
VLDR            S0, =0.0
MOV             R2, #0
LDR             R0, =0x208CB
VMOV.F32        S1, S0
MOV             R1, R2
BL              sub_1459F8
VLDR            S16, =20.0
VLDR            S0, =10.0
MOV             R1, #0
MOV             R0, R5
BL              loc_1977C4
LDR             R0, [R5]
VMOV.F32        S0, S16
MOV             R1, #0
LDR             R2, [R0,#0xE0]
MOV             R0, R5
VPOP            {D8}
POP             {R4-R8,LR}
BX              R2
