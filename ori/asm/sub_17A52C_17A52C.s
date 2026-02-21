PUSH            {R4,LR}
CMP             R2, #0x75; switch 117 cases
MOV             R4, R2
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_17A538; jumptable 0017A538 default case
DCD loc_17A714, loc_17A728, loc_17A728, loc_17A728; jump table for switch statement
LDRB            R0, [R1,#0xDE]; jumptable 0017A538 case 0
AND             R0, R0, #1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
CMP             R2, #0x22; jumptable 0017A538 cases 1-33
MOV             R0, R1
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_17A730; jumptable 0017A730 default case, case 0
DCD def_17A730; jump table for switch statement
LDR             R1, [R0]; jumptable 0017A730 case 1
LDR             R1, [R1,#0x80]
BLX             R1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
VLDR            S0, [R1,#0x108]; jumptable 0017A730 case 2
POP             {R4,PC}
VLDR            S0, [R1,#0x10C]; jumptable 0017A730 case 3
POP             {R4,PC}
VLDR            S0, [R1,#0x110]; jumptable 0017A730 case 4
POP             {R4,PC}
VLDR            S0, [R1,#0x140]; jumptable 0017A730 case 5
POP             {R4,PC}
VLDR            S0, [R1,#0x144]; jumptable 0017A730 case 6
POP             {R4,PC}
VLDR            S0, [R1,#0x130]; jumptable 0017A730 case 7
POP             {R4,PC}
VLDR            S0, [R1,#0x134]; jumptable 0017A730 case 8
POP             {R4,PC}
VLDR            S0, [R1,#0xE4]; jumptable 0017A730 case 9
POP             {R4,PC}
VLDR            S0, [R1,#0xE8]; jumptable 0017A730 case 10
POP             {R4,PC}
VLDR            S0, [R1,#0xEC]; jumptable 0017A730 case 11
POP             {R4,PC}
VLDR            S0, [R1,#0xF0]; jumptable 0017A730 case 12
VLDR            S1, =57.296
VMUL.F32        S0, S0, S1
POP             {R4,PC}
VLDR            S0, [R1,#0xF4]; jumptable 0017A730 case 13
VLDR            S1, =57.296
VMUL.F32        S0, S0, S1
POP             {R4,PC}
VLDR            S0, [R1,#0xF8]; jumptable 0017A730 case 14
VLDR            S1, =57.296
VMUL.F32        S0, S0, S1
POP             {R4,PC}
VLDR            S0, [R1,#0xFC]; jumptable 0017A730 case 15
POP             {R4,PC}
VLDR            S0, [R1,#0x100]; jumptable 0017A730 case 16
POP             {R4,PC}
VLDR            S0, [R1,#0x104]; jumptable 0017A730 case 17
POP             {R4,PC}
ADD             R0, R1, #0x400; jumptable 0017A730 case 18
VLDR            S1, =0.5
VLDR            S0, [R0,#0x7C]
B               loc_17A88C
ADD             R0, R1, #0x400; jumptable 0017A730 case 19
VLDR            S1, =0.25
VLDR            S0, [R0,#0x84]
VMUL.F32        S0, S0, S1
POP             {R4,PC}
ADD             R0, R1, #0x400; jumptable 0017A730 case 20
VLDR            S1, =0.5
VLDR            S0, [R0,#0x8C]
B               loc_17A88C
ADD             R0, R1, #0x400; jumptable 0017A730 case 21
VLDR            S1, =0.25
VLDR            S0, [R0,#0x94]
B               loc_17A88C
ADD             R0, R1, #0x400; jumptable 0017A730 case 22
VLDR            S1, =57.296
VLDR            S0, [R0,#0x74]
B               loc_17A88C
LDR             R0, [R1,#0x464]; jumptable 0017A730 case 23
AND             R0, R0, #0xF
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x464]; jumptable 0017A730 case 24
MOV             R0, R0,LSL#14
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x464]; jumptable 0017A730 case 25
MOV             R0, R0,LSL#13
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
VLDR            S1, [R0,#0x124]; jumptable 0017A730 case 26
VLDR            S0, =0.0
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
VLDREQ          S1, [R0,#0x128]
VCMPEQ.F32      S1, S0
VMRSEQ          APSR_nzcv, FPSCR
VLDREQ          S1, [R0,#0x12C]
VCMPEQ.F32      S1, S0
VMRSEQ          APSR_nzcv, FPSCR
BNE             loc_17A958
LDR             R1, [R0,#0x164]
TST             R1, #7
BNE             loc_17A958
LDRB            R1, [R0,#0x1AC]
TST             R1, #1
BNE             loc_17A958
LDRB            R0, [R0,#0x1F4]
TST             R0, #1
BEQ             locret_17A724
VLDR            S0, =1.0
POP             {R4,PC}
LDR             R0, =0x4B6; jumptable 0017A730 case 27
LDRH            R0, [R0,R1]
MOV             R0, R0,LSL#30
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, =0x46C; jumptable 0017A730 case 28
LDRH            R0, [R0,R1]
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
VLDR            S0, [R1,#0x150]; jumptable 0017A730 case 29
POP             {R4,PC}
VLDR            S0, [R1,#0x15C]; jumptable 0017A730 case 30
POP             {R4,PC}
VLDR            S0, [R0,#0x154]; jumptable 0017A730 case 31
VLDR            S1, [R1,#0x150]
B               loc_17A9BC
VLDR            S0, [R1,#0x160]; jumptable 0017A730 case 32
POP             {R4,PC}
VLDR            S0, [R0,#0x15C]; jumptable 0017A730 case 33
VLDR            S1, [R1,#0x158]
VSUB.F32        S0, S0, S1
POP             {R4,PC}
SUB             R2, R2, #0x22 ; '"'; jumptable 0017A538 cases 34-87
CMP             R2, #0x36; switch 54 cases
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_17A730; jumptable 0017A730 default case, case 0
DCD loc_17AAAC, loc_17AAB8, loc_17AAD0, loc_17AAE8; jump table for switch statement
ADD             R0, R1, #0x400; jumptable 0017A9CC case 0
VLDR            S0, [R0,#0xB8]
POP             {R4,PC}
LDR             R0, [R1,#0x4EC]; jumptable 0017A9CC case 1
MOV             R0, R0,LSL#23
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x4EC]; jumptable 0017A9CC case 2
MOV             R0, R0,LSL#22
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x4EC]; jumptable 0017A9CC case 3
MOV             R0, R0,LSL#27
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x5E0]; jumptable 0017A9CC case 4
MOV             R0, R0,LSL#28
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
DCFS 57.296
DCFS 0.5
DCFS 0.25
DCFS 0.0
DCFS 1.0
DCD 0x4B6
DCD 0x46C
LDR             R0, [R1,#0x4EC]; jumptable 0017A9CC case 5
MOV             R0, R0,LSL#24
MOV             R0, R0,LSR#29
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x658]; jumptable 0017A9CC case 6
MOV             R0, R0,LSL#8
MOV             R0, R0,LSR#26
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x4EC]; jumptable 0017A9CC case 7
MOV             R0, R0,LSL#21
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x4EC]; jumptable 0017A9CC case 8
MOV             R0, R0,LSL#16
MOV             R0, R0,LSR#28
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x5E0]; jumptable 0017A9CC case 9
AND             R0, R0, #1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x5E0]; jumptable 0017A9CC case 10
MOV             R0, R0,LSL#30
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x648]; jumptable 0017A9CC case 11
MOV             R0, R0,LSL#26
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x648]; jumptable 0017A9CC case 12
AND             R0, R0, #1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x648]; jumptable 0017A9CC case 13
MOV             R0, R0,LSL#30
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x648]; jumptable 0017A9CC case 14
MOV             R0, R0,LSL#29
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x648]; jumptable 0017A9CC case 15
MOV             R0, R0,LSL#28
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x648]; jumptable 0017A9CC case 16
MOV             R0, R0,LSL#27
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
ADD             R0, R1, #0x400; jumptable 0017A9CC case 17
VLDR            S1, =0.5
VLDR            S0, [R0,#0xD4]
B               loc_17A88C
ADD             R0, R1, #0x400; jumptable 0017A9CC case 18
VLDR            S1, =0.25
VLDR            S0, [R0,#0xDC]
B               loc_17A88C
ADD             R0, R1, #0x400; jumptable 0017A9CC case 19
VLDR            S1, =0.5
VLDR            S0, [R0,#0xE4]
B               loc_17A88C
LDR             R0, [R1,#0x4EC]; jumptable 0017A9CC case 20
MOV             R0, R0,LSL#20
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R0,#4]; jumptable 0017A9CC case 21
LDR             R2, [R1,#0x650]
LDR             R1, [R1,#0x654]
ADD             R0, R0, #0x14000
LDRB            R3, [R0,#0x28D]
MOV             R0, #0
CMP             R3, #0
BLE             loc_17AD0C
TST             R2, #1
BEQ             loc_17ACC8
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4,PC}
MOVS            R1, R1,LSR#1
ADD             R0, R0, #1
MOV             R2, R2,RRX
CMP             R3, R0
BGT             loc_17ACB4
B               loc_17AD0C
LDR             R0, [R1,#0x740]; jumptable 0017A9CC case 22
CMP             R0, #0
BNE             loc_17ACFC
B               loc_17AD0C
LDR             R0, [R1,#0x748]; jumptable 0017A9CC case 23
CMP             R0, #0
BEQ             loc_17AD0C
LDRB            R0, [R0,#0xDC]
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
VLDR            S0, =-1.0
POP             {R4,PC}
LDR             R0, [R1,#0x648]; jumptable 0017A9CC case 24
MOV             R0, R0,LSL#8
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x648]; jumptable 0017A9CC case 25
MOV             R0, R0,LSL#7
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x658]; jumptable 0017A9CC case 26
MOV             R0, R0,LSR#30
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x5E0]; jumptable 0017A9CC case 27
MOV             R0, R0,LSL#17
MOV             R0, R0,LSR#26
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x658]; jumptable 0017A9CC case 28
AND             R0, R0, #0x3F ; '?'
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x4EC]; jumptable 0017A9CC case 29
AND             R0, R0, #1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x4EC]; jumptable 0017A9CC case 30
MOV             R0, R0,LSL#28
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x4F0]; jumptable 0017A9CC case 31
AND             R0, R0, #1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x4F0]; jumptable 0017A9CC case 32
MOV             R0, R0,LSL#29
MOV             R0, R0,LSR#30
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x4F0]; jumptable 0017A9CC case 33
MOV             R0, R0,LSL#28
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x4F0]; jumptable 0017A9CC case 34
MOV             R0, R0,LSL#27
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x4F0]; jumptable 0017A9CC case 35
MOV             R0, R0,LSL#26
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x4F0]; jumptable 0017A9CC case 36
MOV             R0, R0,LSL#25
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x4F0]; jumptable 0017A9CC case 37
MOV             R0, R0,LSL#24
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x4F0]; jumptable 0017A9CC case 38
MOV             R0, R0,LSL#23
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x648]; jumptable 0017A9CC case 39
MOV             R0, R0,LSL#6
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x66C]; jumptable 0017A9CC case 40
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x670]; jumptable 0017A9CC case 41
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, =0x676; jumptable 0017A9CC case 42
LDRH            R0, [R0,R1]
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
ADD             R0, R1, #0x400; jumptable 0017A9CC case 43
VLDR            S0, [R0,#0x1BC]
POP             {R4,PC}
ADD             R0, R1, #0x400; jumptable 0017A9CC case 44
VLDR            S0, [R0,#0x1C8]
POP             {R4,PC}
ADD             R0, R1, #0x400; jumptable 0017A9CC case 45
VLDR            S0, [R0,#0x1C0]
VLDR            S1, [R0,#0x1BC]
B               loc_17A9BC
ADD             R0, R1, #0x400; jumptable 0017A9CC case 46
VLDR            S0, [R0,#0x1CC]
POP             {R4,PC}
ADD             R0, R1, #0x400; jumptable 0017A9CC case 47
VLDR            S0, [R0,#0x1C8]
VLDR            S1, [R0,#0x1C4]
B               loc_17A9BC
ADD             R0, R1, #0x400; jumptable 0017A9CC case 48
VLDR            S0, [R0,#0x224]
POP             {R4,PC}
ADD             R0, R1, #0x400; jumptable 0017A9CC case 49
VLDR            S0, [R0,#0x230]
POP             {R4,PC}
ADD             R0, R1, #0x400; jumptable 0017A9CC case 50
VLDR            S0, [R0,#0x228]
VLDR            S1, [R0,#0x224]
B               loc_17A9BC
ADD             R0, R1, #0x400; jumptable 0017A9CC case 51
VLDR            S0, [R0,#0x234]
POP             {R4,PC}
ADD             R0, R1, #0x400; jumptable 0017A9CC case 52
VLDR            S0, [R0,#0x230]
VLDR            S1, [R0,#0x22C]
B               loc_17A9BC
LDR             R0, [R1,#0x648]; jumptable 0017A9CC case 53
MOV             R0, R0,LSL#5
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
CMP             R4, #0x58 ; 'X'; jumptable 0017A538 cases 88-90
BEQ             loc_17AF74
CMP             R4, #0x59 ; 'Y'
BEQ             loc_17AF84
CMP             R2, #0x5A ; 'Z'
BNE             def_17A730; jumptable 0017A730 default case, case 0
B               loc_17AF94
ADD             R0, R1, #0x800
VLDR            S1, =0.25
VLDR            S0, [R0,#0x30]
B               loc_17A88C
ADD             R0, R1, #0x800
VLDR            S1, =0.5
VLDR            S0, [R0,#0x34]
B               loc_17A88C
LDR             R0, [R1,#0x86C]
AND             R0, R0, #0xF
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
SUB             R0, R2, #0x5B ; '['; jumptable 0017A538 cases 91-95
CMP             R0, #5; switch 5 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_17A730; jumptable 0017A730 default case, case 0
DCD loc_17AFCC; jump table for switch statement
LDR             R0, =0xAA8; jumptable 0017AFB0 case 0
LDRH            R0, [R0,R1]
MOV             R0, R0,LSL#24
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
DCFS -1.0
DCD 0x676
DCFS 0.25
DCFS 0.5
DCD 0xAA8
LDR             R0, =0xAA8; jumptable 0017AFB0 case 1
LDRH            R0, [R0,R1]
MOV             R0, R0,LSL#28
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, =0xAA8; jumptable 0017AFB0 case 2
LDRH            R0, [R0,R1]
MOV             R0, R0,LSL#27
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, =0xAA8; jumptable 0017AFB0 case 3
LDRH            R0, [R0,R1]
MOV             R0, R0,LSL#26
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R1,#0x658]; jumptable 0017AFB0 case 4
LDR             R12, =byte_6EBCB4
MOV             R3, #0
ADD             R4, R1, #0x800
MOV             R0, R0,LSL#2
ADD             R2, R12, R3,LSL#5
LDRB            LR, [R2]
CMP             LR, R0,LSR#26
BNE             loc_17B10C
VLDR            S0, [R1,#0xF0]
VLDR            S1, [R2,#4]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_17B10C
VLDR            S0, [R1,#0xF4]
VLDR            S1, [R2,#8]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_17B10C
VLDR            S0, [R1,#0xF8]
VLDR            S1, [R2,#0xC]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_17B10C
VLDR            S0, [R4,#0x2BC]
VLDR            S1, [R2,#0x10]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_17B10C
ADD             LR, R1, #0xAC0
VLDR            S1, [R2,#0x14]
VLDR            S0, [LR]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_17B10C
VLDR            S0, [LR,#4]
VLDR            S1, [R2,#0x18]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_17B10C
VLDR            S0, [LR,#8]
VLDR            S1, [R2,#0x1C]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_17B10C
VMOV            S0, R3
B               loc_17B220
ADD             R3, R3, #1
CMP             R3, #6
BLT             loc_17B064
VLDR            S0, =6.0
POP             {R4,PC}
SUB             R0, R2, #0x60 ; '`'; jumptable 0017A538 cases 96-100
CMP             R0, #5; switch 5 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_17A730; jumptable 0017A730 default case, case 0
DCD loc_17B144; jump table for switch statement
LDRB            R0, [R1,#0x75C]; jumptable 0017B128 case 0
MOV             R0, R0,LSL#28
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDRB            R0, [R1,#0x75C]; jumptable 0017B128 case 1
MOV             R0, R0,LSL#27
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDRB            R0, [R1,#0x75C]; jumptable 0017B128 case 2
MOV             R0, R0,LSL#26
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDRB            R0, [R1,#0x75C]; jumptable 0017B128 case 3
AND             R0, R0, #7
CMP             R0, #1
BEQ             loc_17B1A0
MOV             R0, #0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDRB            R0, [R1,#0x4B5]; jumptable 0017B128 case 4
MOV             R1, #1
CMP             R1, R0,LSR#4
MOVEQ           R0, #1
BEQ             loc_17B1A0
B               loc_17B19C
MOV             R0, R1; jumptable 0017A538 cases 101-107
LDR             R1, [R1]
LDR             R1, [R1,#0x38]
BLX             R1
SUB             R1, R4, #0x65 ; 'e'
CMP             R1, #7; switch 7 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_17A730; jumptable 0017A730 default case, case 0
DCD loc_17B200; jump table for switch statement
LDR             R0, [R0,#0xA4]; jumptable 0017B1DC case 0
LDRB            R0, [R0,#0x6F]
AND             R0, R0, #1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDRSH           R0, [R0,#0xB0]; jumptable 0017B1DC case 1
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4,PC}
LDR             R0, [R0,#0xA4]; jumptable 0017B1DC case 2
LDRB            R0, [R0,#0x6C]
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R0,#0xA4]; jumptable 0017B1DC case 3
LDR             R0, [R0,#4]
LDRB            R0, [R0]
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R0,#0xA4]; jumptable 0017B1DC case 4
LDR             R2, [R0,#0x10]
LDRB            R1, [R0,#0x6C]
LDR             R0, [R0,#4]
BL              sub_136824
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R0,#0xA4]; jumptable 0017B1DC case 5
LDRB            R1, [R0,#0x6C]
BL              sub_5F1670
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R0,#0xA8]; jumptable 0017B1DC case 6
LDR             R1, =unk_6731D8
LDR             R0, [R0,#0x38]
LDRB            R0, [R0,#0x1C]
AND             R0, R0, #7
LDRB            R0, [R1,R0]
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
MOV             R0, R1; jumptable 0017A538 cases 108-116
LDR             R1, [R1]
LDR             R1, [R1,#0x3C]
BLX             R1
SUB             R1, R4, #0x6C ; 'l'
CMP             R1, #9; switch 9 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_17A730; jumptable 0017A730 default case, case 0
DCD loc_17B2F4; jump table for switch statement
LDRB            R0, [R0,#0x2F7]; jumptable 0017B2C8 case 0
MOV             R0, R0,LSL#30
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R0,#0x2F8]; jumptable 0017B2C8 case 1
AND             R0, R0, #0x1F
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R0,#0x2F8]; jumptable 0017B2C8 case 2
MOV             R0, R0,LSL#21
MOV             R0, R0,LSR#27
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R0,#0x2F8]; jumptable 0017B2C8 case 3
MOV             R0, R0,LSL#15
MOV             R0, R0,LSR#27
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R0,#0x2F8]; jumptable 0017B2C8 case 4
MOV             R0, R0,LSL#9
MOV             R0, R0,LSR#27
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R0,#0x2FC]; jumptable 0017B2C8 case 5
AND             R0, R0, #0x1F
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R0,#0x2FC]; jumptable 0017B2C8 case 6
MOV             R0, R0,LSL#21
MOV             R0, R0,LSR#27
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R0,#0x2FC]; jumptable 0017B2C8 case 7
MOV             R0, R0,LSL#15
MOV             R0, R0,LSR#27
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R0,#0x2FC]; jumptable 0017B2C8 case 8
MOV             R0, R0,LSL#9
MOV             R0, R0,LSR#27
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
VLDR            S0, =0.0; jumptable 0017A730 default case, case 0
POP             {R4,PC}
LDR             R2, [R0]; jumptable 0017A538 default case
LDR             R3, [R2,#0x94]
MOV             R2, R4
POP             {R4,LR}
BX              R3
