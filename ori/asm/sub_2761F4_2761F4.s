PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
VLDR            S2, =0.0039062
VPUSH           {D8}
SUB             SP, SP, #0xC
LDR             R0, [R0]
VLDR            S0, [R4,#0x98]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S1, R0
ADD             R0, R4, #0x100
VCVT.F32.S32    S1, S1
VMUL.F32        S0, S1, S0
VMUL.F32        S16, S0, S2
VMOV.F32        S0, S16
BL              sub_5A2484
LDM             R0, {R1,R2}
VMOV.F32        S0, S16
LDR             R0, [R0,#8]
ADD             R3, R4, #0x24 ; '$'
STR             R0, [R4,#0x2C]
ADD             R0, R4, #0x158
STM             R3, {R1,R2}
BL              sub_5A176C
VMOV.F32        S0, S16
ADD             R0, R4, #0x18C
BL              sub_5A176C
VMOV.F32        S0, S16
ADD             R0, R4, #0x1C0
BL              sub_5A2484
LDM             R0, {R1,R2}
VMOV.F32        S0, S16
LDR             R0, [R0,#8]
ADD             R3, R4, #0x44 ; 'D'
STR             R0, [R4,#0x4C]
ADD             R0, R4, #0x218
STM             R3, {R1,R2}
BL              sub_5A176C
VLDR            S1, =255.0
VMUL.F32        S0, S0, S1
VCVT.U32.F32    S0, S0
VMOV            R0, S0
STRB            R0, [R4,#0x9F]
LDRB            R0, [R4,#0x250]
CMP             R0, #0xB; switch 11 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_2762B0; jumptable 002762B0 default case, cases 0,4,9
DCD def_2762B0; jump table for switch statement
ADD             R0, R4, #0x18C; jumptable 002762B0 case 1
BL              sub_5F1964
CMP             R0, #0
NOP
BNE             def_2762B0; jumptable 002762B0 default case, cases 0,4,9
VLDR            S2, [R4,#0x190]
VLDR            S0, =1.0
VLDR            S1, =6.0
ADD             R0, R4, #0x18C
VSUB.F32        S0, S0, S2
MOV             R1, #0
VMOV.F32        S2, S0
BL              sub_5A1A08
MOV             R0, #2
STRB            R0, [R4,#0x250]
ADD             SP, SP, #0xC; jumptable 002762B0 default case, cases 0,4,9
VPOP            {D8}
POP             {R4,R5,PC}
ADD             R0, R4, #0x18C; jumptable 002762B0 case 2
BL              sub_5F1964
CMP             R0, #0
NOP
BNE             def_2762B0; jumptable 002762B0 default case, cases 0,4,9
ADD             R0, R4, #0x158
BL              sub_5F1964
CMP             R0, #0
NOP
BNE             def_2762B0; jumptable 002762B0 default case, cases 0,4,9
ADD             R0, R4, #0x100
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_2762B0; jumptable 002762B0 default case, cases 0,4,9
ADD             R0, R4, #0x1C0
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_2762B0; jumptable 002762B0 default case, cases 0,4,9
MOV             R1, #0
VLDR            S0, =32.0
ADD             R0, R4, #0x100
BL              sub_5A2708
MOV             R0, #3
NOP
B               loc_27640C
ADD             R0, R4, #0x100; jumptable 002762B0 case 3
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_2762B0; jumptable 002762B0 default case, cases 0,4,9
MOV             R1, #0
VLDR            S16, =0.0
VLDR            S1, =6.0
ADD             R0, R4, #0x18C
VMOV.F32        S0, S16
BL              sub_5A1598
LDRB            R0, [R4,#0x251]
CMP             R0, #0
BEQ             loc_2763E4
VMOV.F32        S0, S16
VLDR            S1, =10.0
MOV             R1, #0
ADD             R0, R4, #0x158
BL              sub_5A1598
VMOV.F32        S0, S16
VLDR            S1, =10.0
MOV             R1, #0
ADD             R0, R4, #0x218
BL              sub_5A1598
VLDR            S0, =4.0
MOV             R1, #0
ADD             R0, R4, #0x100
BL              sub_5A2708
MOV             R0, #5
STRB            R0, [R4,#0x250]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
ADD             R0, R4, #0x100; jumptable 002762B0 case 5
BL              sub_5F19B8
CMP             R0, #0
MOVEQ           R0, #6
BEQ             loc_27640C
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
ADD             R0, R4, #0x218; jumptable 002762B0 case 6
BL              sub_5F1964
CMP             R0, #0
NOP
BNE             def_2762B0; jumptable 002762B0 default case, cases 0,4,9
ADD             R0, R4, #0x158
BL              sub_5F1964
CMP             R0, #0
NOP
BNE             def_2762B0; jumptable 002762B0 default case, cases 0,4,9
ADD             R0, R4, #0x18C
BL              sub_5F1964
CMP             R0, #0
MOVEQ           R0, #0xA
BEQ             loc_27640C
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
LDR             R0, [R4]; jumptable 002762B0 case 10
LDR             R1, [R0,#4]
ADD             SP, SP, #0xC
MOV             R0, R4
VPOP            {D8}
POP             {R4,R5,LR}
BX              R1
ADD             R0, R4, #0x1C0; jumptable 002762B0 case 7
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_2762B0; jumptable 002762B0 default case, cases 0,4,9
LDRB            R0, [R4,#0x251]
CMP             R0, #1
MOVEQ           R1, #3
BEQ             loc_2764DC
CMP             R0, #2
MOVEQ           R1, #2
BEQ             loc_2764DC
CMP             R0, #3
MOVNE           R1, #0
MOVEQ           R1, #1
MOV             R3, #0x100
MOV             R2, #0
MOV             R0, R4
BL              sub_14C548
LDR             R0, [R4]
LDR             R1, =flt_6E1A48
LDR             R2, [R0,#0x38]
MOV             R0, R4
BLX             R2
BL              sub_4635D8
VLDR            S16, =6.0
MOV             R2, R0
MOV             R1, #0
VMOV.F32        S0, S16
ADD             R0, R4, #0x1C0
BL              sub_5A2074
ADD             R0, R4, #0x254
LDM             R0, {R0-R2}
STMEA           SP, {R0-R2}
LDR             R0, =flt_6E1A30
VLDR            S0, [SP,#0x20+var_20]
VLDR            S1, [R0]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x20+var_20]
VMOV            S0, R1
VLDR            S1, [R0,#(flt_6E1A34 - 0x6E1A30)]
ADD             R1, R4, #0x254
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x20+var_1C]
VMOV            S0, R2
VLDR            S1, [R0,#(flt_6E1A38 - 0x6E1A30)]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x20+var_18]
LDR             R0, [R4]
LDR             R2, [R0,#0x20]
MOV             R0, R4
BLX             R2
VMOV.F32        S0, S16
MOV             R2, SP
MOV             R1, #0
ADD             R0, R4, #0x100
BL              sub_5A2074
ADD             R5, R4, #0x158
VLDR            S16, =1.0
MOV             R0, R5
BL              sub_5A18EC
VSTR            S16, [R5,#0xC]
VSTR            S16, [R5,#4]
VLDR            S0, =2.0
MOV             R1, #0
ADD             R0, R4, #0x158
BL              sub_5A1924
ADD             R5, R4, #0x18C
VLDR            S16, =0.0
MOV             R0, R5
BL              sub_5A18EC
VSTR            S16, [R5,#0xC]
VSTR            S16, [R5,#4]
MOV             R0, #8
B               loc_27640C
DCFS 0.0039062
DCD off_6CE970
DCFS 255.0
DCFS 1.0
DCFS 6.0
DCFS 32.0
DCFS 0.0
DCFS 10.0
DCFS 4.0
DCD flt_6E1A48
DCD flt_6E1A30
DCFS 2.0
ADD             R0, R4, #0x158; jumptable 002762B0 case 8
BL              sub_5F1964
CMP             R0, #0
NOP
BNE             def_2762B0; jumptable 002762B0 default case, cases 0,4,9
VLDR            S0, [R4,#0x15C]
VLDR            S2, =1.2
VLDR            S16, =1.0
VLDR            S17, =6.0
VSUB.F32        S2, S2, S0
VSUB.F32        S0, S16, S0
VMOV.F32        S1, S17
ADD             R0, R4, #0x158
MOV             R1, #0
BL              sub_5A1A08
VLDR            S0, [R4,#0x190]
VMOV.F32        S1, S17
ADD             R0, R4, #0x18C
VSUB.F32        S0, S16, S0
MOV             R1, #0
VMOV.F32        S2, S0
BL              sub_5A1A08
MOV             R0, #2
NOP
B               loc_27640C
