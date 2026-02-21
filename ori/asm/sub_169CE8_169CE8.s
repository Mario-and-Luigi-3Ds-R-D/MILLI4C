PUSH            {R0-R2,R4-R7,LR}
MOV             R4, R0
LDR             R7, =off_6D1648
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
ADD             R3, SP, #0x20+var_18
ADD             R2, SP, #0x20+var_1C
MOV             R1, R4
BL              sub_21DC20
LDR             R0, =0x2686
LDRB            R0, [R0,R4]
CMP             R0, #5; switch 5 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_169D20; jumptable 00169D20 default case
DCD loc_169D3C; jump table for switch statement
ADD             R3, SP, #0x20+var_1C; jumptable 00169D20 case 0
MOV             R0, R4
LDM             R3, {R1,R2}
BL              sub_573788
LDR             R1, [R4,#0x608]
ADD             R0, R4, #0x600
CMP             R1, #0
BEQ             loc_169D78
LDR             R1, [R1,#8]
TST             R1, #0x2000
BEQ             loc_169D78
LDRSB           R0, [R0,#0x5F]
CMN             R0, #1
BEQ             loc_169DBC
B               loc_169D84
LDRSB           R0, [R0,#0x5F]
CMN             R0, #1
BEQ             loc_169DC4
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
ADD             R1, R0, #0x16C00
ADD             R1, R1, #0xE8
LDRB            R2, [R4,#0x65F]
LDM             R1, {R5,R6}
MOV             R0, #1
MOV             R1, #0
BL              sub_300CF8
MOV             R2, R1
AND             R1, R5, R0
AND             R0, R6, R2
ORRS            R0, R0, R1
BEQ             loc_169DC4
MOV             R0, #1
B               loc_169DC8
MOV             R0, #0
ADD             R1, R4, #0x400
VLDR            S0, =0.0
VLDR            S1, [R1,#0x84]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             def_169D20; jumptable 00169D20 default case
CMP             R0, #0
BEQ             def_169D20; jumptable 00169D20 default case
LDR             R0, [R4,#0x658]
TST             R0, #8
BEQ             loc_169E08
VLDR            S1, [R4,#0x108]
VLDR            S2, [R4,#0x118]
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BLS             loc_169E24
TST             R0, #2
BEQ             def_169D20; jumptable 00169D20 default case
VLDR            S1, [R4,#0x118]
VLDR            S2, [R4,#0x108]
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BHI             def_169D20; jumptable 00169D20 default case
VSTR            S0, [R1,#0x78]
B               def_169D20; jumptable 00169D20 default case
LDR             R0, [R4]; jumptable 00169D20 case 1
ADD             R5, SP, #0x20+var_1C
LDM             R5, {R1,R2}
LDR             R3, [R0,#0x434]
MOV             R0, R4
BLX             R3
B               def_169D20; jumptable 00169D20 default case
LDR             R0, [R4]; jumptable 00169D20 cases 2,3
ADD             R5, SP, #0x20+var_1C
LDM             R5, {R1,R2}
LDR             R3, [R0,#0x438]
MOV             R0, R4
BLX             R3
B               def_169D20; jumptable 00169D20 default case
LDR             R0, =0x2698; jumptable 00169D20 case 4
LDRB            R0, [R0,R4]
TST             R0, #3
BEQ             loc_169E90
LDR             R0, [R4]
ADD             R5, SP, #0x20+var_1C
LDM             R5, {R1,R2}
LDR             R3, [R0,#0x43C]
MOV             R0, R4
BLX             R3
B               def_169D20; jumptable 00169D20 default case
ADD             R3, SP, #0x20+var_1C
MOV             R0, R4
LDM             R3, {R1,R2}
BL              sub_573788
LDR             R0, [R7]; jumptable 00169D20 default case
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
ADD             R3, SP, #0x20+var_18
ADD             R2, SP, #0x20+var_1C
MOV             R1, R4
BL              sub_21DF60
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
