PUSH            {R4-R7,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0x14
LDRB            R0, [R0,#0x272]
CMP             R0, #0
BNE             def_2A12B4; jumptable 002A12B4 default case, cases 8,11,12,15,17,18
LDR             R0, [R4,#0x7C]
ADD             R3, R4, #0x24 ; '$'
CMP             R0, R3
BEQ             def_2A12B4; jumptable 002A12B4 default case, cases 8,11,12,15,17,18
CMP             R1, #0x14; switch 20 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_2A12B4; jumptable 002A12B4 default case, cases 8,11,12,15,17,18
DCD loc_2A13BC; jump table for switch statement
LDRB            R0, [R4,#0x10]; jumptable 002A12B4 case 1
CMP             R0, #1
BEQ             loc_2A1330
CMP             R0, #0
BNE             def_2A12B4; jumptable 002A12B4 default case, cases 8,11,12,15,17,18
LDR             R0, [R4,#4]
LDR             R0, [R0]
CMP             R0, R2
BNE             def_2A12B4; jumptable 002A12B4 default case, cases 8,11,12,15,17,18
LDR             R0, [R4,#4]
LDR             R0, [R0]
LDRB            R0, [R0,#0x554]
CMP             R0, #1
BNE             loc_2A1398
ADD             R1, SP, #0x30+var_2C
MOV             R0, R4
BL              sub_5CE2A4
LDR             R0, [R4,#4]
MOV             R1, #0xFFFFFFFC
LDR             R0, [R0,#8]
ADD             R2, R0, #0xA00
LDR             R0, [R0,#0xAE0]
LDRH            R2, [R2,#0xE4]
ADD             R1, R1, R2,LSL#2
LDR             R0, [R0,R1]
BL              sub_5D0480
LDR             R0, =off_6CE970
VSTR            S0, [SP,#0x30+var_28]
MOV             R1, #0
MOV             R3, #1
LDR             R0, [R0]
STR             R1, [SP,#0x30+var_30]
ADD             R2, SP, #0x30+var_2C
MOV             R1, #0x73 ; 's'
BL              sub_52AEA8
LDR             R0, [R4,#0x7C]
MOV             R6, #0
ADD             R5, R4, #0x1C
CMP             R0, #0
BEQ             loc_2A18A0
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
B               loc_2A18A0
MOV             R0, #1; jumptable 002A12B4 cases 0,2,14,19
STRB            R0, [SP,#0x30+var_30]
LDR             R0, =off_6CDFD8
LDR             R1, =dword_6D1F40
LDR             R0, [R0]
ADD             R2, R0, #0x400
VLDR            S16, [R0,#0x3FC]
VLDR            S17, [R2]
MOV             R0, R1
BL              sub_546DB0
VMOV            S0, R0
VLDR            S1, =0.000015259
VSUB.F32        S2, S17, S16
MOV             R6, SP
ADD             R5, R4, #0x24 ; '$'
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S2
VADD.F32        S0, S16, S0
VSTR            S0, [SP,#0x30+var_2C]
LDR             R0, [R4,#0x7C]
CMP             R0, #0
BEQ             loc_2A1424
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
STR             R5, [R4,#0x7C]
LDR             R0, [R5]
MOV             R1, R6
LDR             R2, [R0,#8]
MOV             R0, R5
BLX             R2
ADD             SP, SP, #0x14; jumptable 002A12B4 default case, cases 8,11,12,15,17,18
VPOP            {D8}
POP             {R4-R7,PC}
CMP             R0, #0; jumptable 002A12B4 case 3
MOV             R6, #0
ADD             R5, R4, #0x4C ; 'L'
BEQ             loc_2A18A0
B               loc_2A13AC
CMP             R0, #0; jumptable 002A12B4 case 16
MOV             R6, #0
ADD             R5, R4, #0x70 ; 'p'
BEQ             loc_2A18A0
B               loc_2A13AC
ADD             R1, R4, #0x4C ; 'L'; jumptable 002A12B4 case 7
CMP             R0, R1
BNE             loc_2A14EC
LDR             R0, =off_6CDFE0
MOV             R5, #0
MOV             R3, #0x100
MOV             R2, R5
LDR             R0, [R0]
ADD             R1, R0, #0x1400
ADD             R1, R1, #0x274
ADD             R0, R0, #0xC00
LDR             R1, [R1]
ADD             R0, R0, #0xE4
CMP             R1, R0
MOVEQ           R0, #2
STRBEQ          R0, [R4,#0x54]
LDR             R4, [R4,#0x50]
MOV             R0, #0x24 ; '$'
LDRB            R1, [R4,#0x26E]
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #1
AND             R6, R0, #0xFF
MOV             R1, R6
ADD             R0, R4, #0x80
BL              sub_11DCDC
LDR             R0, [R4,#8]
CMP             R0, #0
BNE             loc_2A1720
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R7,PC}
ADD             R1, R4, #0x58 ; 'X'
CMP             R0, R1
BNE             loc_2A1540
LDR             R4, [R4,#0x5C]
MOV             R0, #0x24 ; '$'
MOV             R6, #0
MOV             R3, #0x100
LDRB            R1, [R4,#0x26E]
MOV             R2, R6
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #1
AND             R5, R0, #0xFF
MOV             R1, R5
ADD             R0, R4, #0x80
BL              sub_11DCDC
LDR             R0, [R4,#8]
CMP             R0, #0
BNE             loc_2A1914
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R7,PC}
ADD             R1, R4, #0x1C
CMP             R0, R1
BNE             loc_2A15F0
CMP             R0, #0
MOV             R6, #0
ADD             R5, R4, #0x4C ; 'L'
BEQ             loc_2A1568
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
STR             R5, [R4,#0x7C]
LDR             R0, [R5]
MOV             R1, R6
LDR             R2, [R0,#8]
MOV             R0, R5
BLX             R2
LDR             R0, =off_6CDFE0
MOV             R6, #0
MOV             R3, #0x100
MOV             R2, R6
LDR             R0, [R0]
ADD             R1, R0, #0x1400
ADD             R1, R1, #0x274
ADD             R0, R0, #0xC00
LDR             R1, [R1]
ADD             R0, R0, #0xE4
CMP             R1, R0
MOVEQ           R0, #2
STRBEQ          R0, [R4,#0x54]
LDR             R4, [R4,#0x50]
MOV             R0, #0x24 ; '$'
LDRB            R1, [R4,#0x26E]
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #1
AND             R5, R0, #0xFF
MOV             R1, R5
ADD             R0, R4, #0x80
BL              sub_11DCDC
LDR             R0, [R4,#8]
CMP             R0, #0
BNE             loc_2A1914
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R7,PC}
ADD             R1, R4, #0x70 ; 'p'
CMP             R0, R1
BNE             def_2A12B4; jumptable 002A12B4 default case, cases 8,11,12,15,17,18
LDR             R4, [R4,#0x74]
MOV             R0, #0x24 ; '$'
MOV             R6, #0
MOV             R3, #0x100
LDRB            R1, [R4,#0x26E]
MOV             R2, R6
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #1
AND             R5, R0, #0xFF
MOV             R1, R5
ADD             R0, R4, #0x80
BL              sub_11DCDC
LDR             R0, [R4,#8]
CMP             R0, #0
BEQ             def_2A12B4; jumptable 002A12B4 default case, cases 8,11,12,15,17,18
B               loc_2A1914
ADD             R1, R4, #0x4C ; 'L'; jumptable 002A12B4 case 4
CMP             R0, R1
BNE             loc_2A16D4
MOV             R0, R1
LDR             R1, =off_6CDFE0
MOV             R5, #1
MOV             R3, #0x100
LDR             R1, [R1]
ADD             R2, R1, #0x1400
ADD             R2, R2, #0x274
ADD             R1, R1, #0xC00
LDR             R2, [R2]
ADD             R1, R1, #0xE4
CMP             R2, R1
MOVEQ           R1, #2
MOVNE           R1, #1
STRB            R1, [R0,#8]
LDR             R4, [R0,#4]
MOV             R1, #0x24 ; '$'
MOV             R2, R5
LDRB            R0, [R4,#0x26E]
ADD             R0, R1, R0,LSL#2
ADD             R0, R0, #2
AND             R6, R0, #0xFF
MOV             R1, R6
ADD             R0, R4, #0x80
BL              sub_11DCDC
LDR             R0, [R4,#8]
CMP             R0, #0
BNE             loc_2A1720
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R7,PC}
DCD off_6CE970
DCD off_6CDFD8
DCD dword_6D1F40
DCFS 0.000015259
DCD off_6CDFE0
ADD             R1, R4, #0x70 ; 'p'
CMP             R0, R1
BNE             def_2A12B4; jumptable 002A12B4 default case, cases 8,11,12,15,17,18
MOV             R2, #1
STRB            R2, [R4,#0x78]
LDR             R4, [R4,#0x74]
MOV             R0, #0x24 ; '$'
MOV             R5, R2
MOV             R3, #0x100
LDRB            R1, [R4,#0x26E]
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #2
AND             R6, R0, #0xFF
MOV             R1, R6
ADD             R0, R4, #0x80
BL              sub_11DCDC
LDR             R0, [R4,#8]
CMP             R0, #0
BEQ             def_2A12B4; jumptable 002A12B4 default case, cases 8,11,12,15,17,18
ADD             SP, SP, #0x14
MOV             R2, R5
VPOP            {D8}
MOV             R1, R6
POP             {R4-R7,LR}
MOV             R3, #0x100
B               sub_14C548
MOV             R0, #1; jumptable 002A12B4 case 5
STRB            R0, [R4,#0x276]
LDR             R1, [R4,#4]
LDR             R1, [R1]
LDRB            R1, [R1,#0x400]
CMP             R1, #1
BEQ             loc_2A179C
LDR             R1, [R4,#0x7C]
ADD             R2, R4, #0x1C
CMP             R1, R2
BNE             def_2A12B4; jumptable 002A12B4 default case, cases 8,11,12,15,17,18
STRB            R0, [R4,#0x272]
STRB            R0, [R4,#0x274]
LDR             R0, [R4,#8]
CMP             R0, #0
BEQ             def_2A12B4; jumptable 002A12B4 default case, cases 8,11,12,15,17,18
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
MOV             R0, #0
STR             R0, [R4,#8]
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R7,PC}
LDR             R0, [R4,#0x7C]
MOV             R6, #0
ADD             R5, R4, #0x58 ; 'X'
CMP             R0, #0
BNE             loc_2A13AC
B               loc_2A18A0
ADD             R1, R4, #0x58 ; 'X'; jumptable 002A12B4 case 13
CMP             R0, R1
BNE             def_2A12B4; jumptable 002A12B4 default case, cases 8,11,12,15,17,18
LDR             R4, [R4,#0x5C]
MOV             R0, #0x24 ; '$'
MOV             R6, #0
MOV             R3, #0x100
LDRB            R1, [R4,#0x26E]
MOV             R2, R6
ADD             R0, R0, R1,LSL#2
AND             R5, R0, #0xFF
MOV             R1, R5
ADD             R0, R4, #0x80
BL              sub_11DCDC
LDR             R0, [R4,#8]
CMP             R0, #0
BNE             loc_2A1914
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R7,PC}
ADD             R1, R4, #0x58 ; 'X'; jumptable 002A12B4 case 6
CMP             R0, R1
BNE             def_2A12B4; jumptable 002A12B4 default case, cases 8,11,12,15,17,18
LDR             R5, [R4,#0x5C]
MOV             R0, #0x24 ; '$'
MOV             R6, #1
MOV             R3, #0x100
LDRB            R1, [R5,#0x26E]
MOV             R2, R6
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #2
AND             R7, R0, #0xFF
MOV             R1, R7
ADD             R0, R5, #0x80
BL              sub_11DCDC
LDR             R0, [R5,#8]
CMP             R0, #0
BEQ             loc_2A185C
MOV             R3, #0x100
MOV             R2, R6
MOV             R1, R7
BL              sub_14C548
MOV             R0, #1
STRB            R0, [R4,#0x60]
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R7,PC}
LDR             R0, [R4,#4]; jumptable 002A12B4 case 9
LDR             R0, [R0]
LDRB            R0, [R0,#0x400]
CMP             R0, #1
LDRBEQ          R0, [R4,#0x10]
CMPEQ           R0, #1
BNE             def_2A12B4; jumptable 002A12B4 default case, cases 8,11,12,15,17,18
LDR             R0, [R4,#0x7C]
MOV             R6, #0
ADD             R5, R4, #0x64 ; 'd'
CMP             R0, #0
BNE             loc_2A13AC
STR             R5, [R4,#0x7C]
LDR             R0, [R5]
MOV             R1, R6
LDR             R2, [R0,#8]
ADD             SP, SP, #0x14
MOV             R0, R5
VPOP            {D8}
POP             {R4-R7,LR}
BX              R2
LDR             R0, [R4,#4]; jumptable 002A12B4 case 10
LDR             R0, [R0]
LDRB            R0, [R0,#0x400]
CMP             R0, #1
LDRBEQ          R0, [R4,#0x10]
CMPEQ           R0, #1
BNE             def_2A12B4; jumptable 002A12B4 default case, cases 8,11,12,15,17,18
LDRB            R0, [R4,#0x26E]
MOV             R1, #0x24 ; '$'
MOV             R6, #0
MOV             R3, #0x100
ADD             R0, R1, R0,LSL#2
AND             R5, R0, #0xFF
MOV             R2, R6
MOV             R1, R5
ADD             R0, R4, #0x80
BL              sub_11DCDC
LDR             R0, [R4,#8]
CMP             R0, #0
BEQ             def_2A12B4; jumptable 002A12B4 default case, cases 8,11,12,15,17,18
ADD             SP, SP, #0x14
MOV             R2, R6
VPOP            {D8}
MOV             R1, R5
POP             {R4-R7,LR}
MOV             R3, #0x100
B               sub_14C548
