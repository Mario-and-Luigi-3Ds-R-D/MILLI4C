PUSH            {R4-R11,LR}
MOV             R6, R0
MOV             R7, R1
MOV             R8, R2
VPUSH           {D8}
SUB             SP, SP, #0x3C
LDRB            R0, [R0,#0x4F]
CMP             R0, #0
BNE             def_1DE234; jumptable 001DE234 default case, case 0
LDRB            R0, [R6,#0x53]
LDR             R9, =flt_6E34B0
MOV             R10, #0
CMP             R0, #0
VLDRGT          S16, =0.0
VLDRGT          S17, =1.0
MOV             R11, #2
MOV             R4, R10
BLE             loc_1DE180
ADD             R0, R6, R4,LSL#2
CMP             R4, R7
LDR             R5, [R0,#0x54]
BNE             loc_1DE134
ADD             R1, SP, #0x68+var_50
ADD             R2, R9, #0x24 ; '$'
VSTM            R1, {S16-S17}
VMOV.F32        S0, S16
VSTR            S16, [SP,#0x68+var_48]
ADD             R0, R5, #0x3FC
VLDM            R2, {S1-S2}
BL              sub_5A331C
LDR             R0, [R9,#(dword_6E34E0 - 0x6E34B0)]
VSTR            S16, [SP,#0x68+var_44]
ADD             R2, SP, #0x68+var_44
STR             R0, [SP,#0x68+var_40]
VSTR            S16, [SP,#0x68+var_3C]
VLDR            S0, [R9,#(flt_6E34F4 - 0x6E34B0)]
MOV             R1, #0
ADD             R0, R5, #0x100
VCVT.F32.U32    S0, S0
BL              sub_5A2074
LDR             R0, [R9,#(dword_6E3500 - 0x6E34B0)]
MOV             R1, SP
STRB            R0, [SP,#0x68+var_68]
STRB            R0, [SP,#0x68+var_67]
STRB            R0, [SP,#0x68+var_66]
STRB            R10, [SP,#0x68+var_65]
LDR             R0, [R5]
LDR             R2, [R0,#0x40]
MOV             R0, R5
BLX             R2
REV             R0, R10
ADD             R1, SP, #0x68+var_38
STR             R0, [SP,#0x68+var_38]
VLDR            S0, [R9,#(flt_6E3504 - 0x6E34B0)]
ADD             R0, R5, #0x364
VCVT.F32.U32    S0, S0
BL              sub_4E6784
LDR             R0, [R5,#0x45C]
CMP             R0, #0
BLNE            sub_533330
STRB            R11, [R5,#0x3F4]
NOP
B               loc_1DE170
LDR             R0, [R9,#(dword_6E34F8 - 0x6E34B0)]
MOV             R1, SP
STRB            R0, [SP,#0x68+var_68]
STRB            R0, [SP,#0x68+var_67]
STRB            R0, [SP,#0x68+var_66]
STRB            R10, [SP,#0x68+var_65]
VLDR            S0, [R9,#(flt_6E34E8 - 0x6E34B0)]
ADD             R0, R5, #0x32C
VCVT.F32.U32    S0, S0
BL              sub_4E6784
LDR             R0, [R5,#0x45C]
CMP             R0, #0
BLNE            sub_533330
MOV             R0, #4
STRB            R0, [R5,#0x3F4]
LDRB            R0, [R6,#0x53]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_1DE080
LDR             R0, =0x20AC8
STRB            R10, [R6,#0x50]
LDR             R7, =off_6CE970
MOV             R1, #1
LDR             R0, [R0,R6]
LDR             R5, =0x19DFE8
ADD             R0, R0, #0x400
STRH            R8, [R0,#0x98]
STRB            R1, [R6,#0x4F]
LDR             R0, [R7]
LDR             R0, [R0,R5]
BL              sub_1CCAC4
MOV             R0, #0xFFFFFF00
VLDR            S0, [R9,#(flt_6E371C - 0x6E34B0)]
REV             R0, R0
ADD             R4, R6, #0x10800
STR             R0, [SP,#0x68+var_64]
ADD             R0, R6, #0x10000
ADD             R4, R4, #0x3A8
ADD             R1, SP, #0x68+var_64
ADD             R0, R0, #0xD00
BL              sub_4E665C
ADD             R0, R6, #0x1F000
ADD             R0, R0, #0x820
STRB            R11, [R4,#0xFD]
BL              sub_338AA4
ADD             R4, R6, #0x1FC00
ADD             R0, R6, #0x1F000
ADD             R4, R4, #0x154
VLDR            S0, [R9,#(flt_6E37C4 - 0x6E34B0)]
ADD             R2, R9, #0x304
MOV             R1, #0
ADD             R0, R0, #0xF30
BL              sub_5A2298
MOV             R0, #0xFFFFFF00
ADD             R1, SP, #0x68+var_64
REV             R0, R0
STR             R0, [SP,#0x68+var_64]
VLDR            S0, [R9,#(flt_6E37C4 - 0x6E34B0)]
ADD             R0, R4, #0x32C
BL              sub_4E665C
MOV             R0, #3
STRB            R0, [R4,#0x3F4]
AND             R0, R8, #0x7F
CMP             R0, #9; switch 9 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1DE234; jumptable 001DE234 default case, case 0
DCD def_1DE234; jump table for switch statement
MOV             R3, #0; jumptable 001DE234 case 1
MOV             R2, #1
MOV             R1, R3
MOV             R0, R6
BL              sub_1DDD98
LDR             R0, [R7]
LDR             R1, =byte_19CF35
LDRB            R1, [R1,R0]; byte_19CF35
CMP             R1, #0
BEQ             def_1DE234; jumptable 001DE234 default case, case 0
BL              sub_528E64
LDR             R4, [R7]
MOV             R6, R0
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_1DE2B8
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R4]; byte_19CF30
CMP             R0, #0
LDREQ           R1, =0xD002
BEQ             loc_1DE344
MOV             R1, #0xD000
B               loc_1DE344
LDR             R4, [R7]; jumptable 001DE234 case 2
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_1DE2E8
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R4]; byte_19CF30
CMP             R0, #0
MOVEQ           R1, #1
BEQ             loc_1DE2EC
MOV             R1, #0
MOV             R3, #0
MOV             R2, #1
MOV             R0, R6
BL              sub_1DDD98
LDR             R0, [R7]
LDR             R1, =byte_19CF35
LDRB            R1, [R1,R0]; byte_19CF35
CMP             R1, #0
BEQ             def_1DE234; jumptable 001DE234 default case, case 0
BL              sub_528E64
LDR             R4, [R7]
MOV             R6, R0
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_1DE340
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R4]; byte_19CF30
CMP             R0, #0
LDREQ           R1, =0xD003
BEQ             loc_1DE344
LDR             R1, =0xD001
LDR             R0, [R7]
LDRB            R2, [R6,#0x495]
LDR             R0, [R0,R5]
ADD             SP, SP, #0x3C ; '<'
VPOP            {D8}
POP             {R4-R11,LR}
B               sub_1CC63C
DCD flt_6E34B0
DCFS 0.0
DCFS 1.0
DCD 0x20AC8
DCD off_6CE970
DCD 0x19DFE8
DCD byte_19CF35
DCD byte_19CF30
DCD 0xD002
DCD 0xD003
DCD 0xD001
LDR             R0, [R7]; jumptable 001DE234 case 3
MOV             R1, #5
BL              sub_529274
ADD             SP, SP, #0x3C ; '<'
MOV             R0, R6
VPOP            {D8}
POP             {R4-R11,LR}
B               sub_1DDC10
ADD             SP, SP, #0x3C ; '<'; jumptable 001DE234 cases 4-7
MOV             R0, R6
VPOP            {D8}
POP             {R4-R11,LR}
B               sub_1DE480
LDR             R0, [R7]; jumptable 001DE234 case 8
AND             R1, R8, #0xFF
BL              sub_52A450
ADD             SP, SP, #0x3C ; '<'
MOV             R0, R6
VPOP            {D8}
POP             {R4-R11,LR}
B               sub_1DDC10
ADD             SP, SP, #0x3C ; '<'; jumptable 001DE234 default case, case 0
VPOP            {D8}
POP             {R4-R11,PC}
