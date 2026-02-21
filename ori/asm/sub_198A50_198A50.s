PUSH            {R4-R6,LR}
MOV             R5, R0
VPUSH           {D8}
BL              sub_2004B8
LDRB            R0, [R5,#0x254]
ADD             R0, R5, R0,LSL#2
LDR             R0, [R0,#0x218]
LDR             R1, [R0]
LDR             R1, [R1,#0x140]
BLX             R1
ADD             R1, R5, #0x300
LDR             R6, =off_6D1648
LDRH            R0, [R1,#0xCE]
SUB             R2, R0, #0xFF00
SUBS            R2, R2, #0xFF
BEQ             loc_198C10
CMP             R0, #0
SUBNE           R0, R0, #1
STRHNE          R0, [R1,#0xCE]
BNE             loc_198C98
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19B924
CMP             R0, #0
BEQ             loc_198C98
LDRB            R0, [R5,#0x3B4]
MOV             R4, #0
CMP             R0, #0
BLE             loc_198AF4
ADD             R0, R5, R4,LSL#2
LDR             R0, [R0,#0x374]
BL              sub_2C5064
CMP             R0, #0
NOP
BEQ             loc_198C98
LDRB            R0, [R5,#0x3B4]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_198ACC
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
LDR             R0, [R0,#0x1B4]
AND             R0, R0, #0x100000
MOVS            R0, R0,LSR#20
BNE             loc_198C98
LDR             R0, [R6]
LDR             R0, [R0,#0xC8]
TST             R0, #0x10
BEQ             loc_198C98
LDR             R0, [R5,#0x3D0]
VLDR            S0, =0.0
LDR             R4, =off_68BBB8
BIC             R0, R0, #0x3C ; '<'
VMOV.F32        S1, S0
ORR             R0, R0, #0xC
VLDR            S17, =10.0
VLDR            S16, =20.0
MOV             R2, #0
TST             R0, #2
MOV             R1, R2
STR             R0, [R5,#0x3D0]
BEQ             loc_198BB4
LDR             R0, =0x208CA
BL              sub_1459F8
VMOV.F32        S0, S17
MOV             R1, #3
MOV             R0, R5
BL              loc_1977C4
LDR             R0, [R5]
VMOV.F32        S0, S16
MOV             R1, #1
LDR             R2, [R0,#0xE0]
MOV             R0, R5
BLX             R2
LDR             R0, [R6]
BL              sub_1E4614
LDR             R1, [R5,#0x3D0]
ORR             R2, R1, #1
MOV             R1, #1
STR             R2, [R5,#0x3D0]
BL              sub_16CA4C
ADD             R4, R4, #0x40 ; '@'
LDM             R4, {R1,R2}
STMIB           R5, {R1,R2}
B               loc_198C98
LDR             R0, =0x208CB
BL              sub_1459F8
VMOV.F32        S0, S17
MOV             R1, #2
MOV             R0, R5
BL              loc_1977C4
LDR             R0, [R5]
VMOV.F32        S0, S16
MOV             R1, #0
LDR             R2, [R0,#0xE0]
MOV             R0, R5
BLX             R2
LDR             R0, [R6]
BL              sub_1E4614
LDR             R1, [R5,#0x3D0]
BIC             R1, R1, #1
STR             R1, [R5,#0x3D0]
MOV             R1, #0
BL              sub_16CA4C
ADD             R4, R4, #0x48 ; 'H'
LDM             R4, {R1,R2}
STMIB           R5, {R1,R2}
B               loc_198C98
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
LDR             R0, [R0,#0x1B4]
TST             R0, #1
BEQ             loc_198C98
LDR             R0, [R6]
VLDR            S2, [R5,#0x94]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
ADD             R0, R0, #0x108
VLDM            R0, {S0-S1}
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_198C88
VLDR            S2, [R5,#0x98]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_198C88
VMOV.F32        S0, S1
VLDR            S2, [R5,#0x9C]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_198C88
VLDR            S0, [R5,#0xA0]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_198C98
LDR             R0, [R5,#0x19C]
TST             R0, #8
MOVEQ           R0, R5
BLEQ            sub_1999E0
VPOP            {D8}
MOV             R0, R5
POP             {R4-R6,LR}
MOV             R1, #1
B               sub_21D12C
