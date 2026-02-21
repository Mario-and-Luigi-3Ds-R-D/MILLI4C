PUSH            {R4-R11,LR}
ADD             R6, R0, #0x13C00
ADD             R6, R6, #0xFC
SUB             SP, SP, #0xC
MOV             R5, R0
LDR             R1, [R6]
ADD             R3, R1, #0xC
LDR             R2, [R1,#0x14]
LDM             R3, {R3,R12}
MOV             R2, R2,LSR#2
ADD             R12, R12, R1
STR             R2, [SP,#0x30+var_2C]
STR             R12, [SP,#0x30+var_30]
LDR             R12, [R0]
LDR             R2, [R1]
LDR             R4, [R1,#8]
LDR             R12, [R12,#0x100]
ADD             R2, R2, R1
ADD             R1, R1, R4
BLX             R12
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xC8]
TST             R0, #7
BNE             loc_18C96C
LDR             R0, [R5]
MOV             R1, #1
LDR             R2, [R0,#0x2E8]
MOV             R0, R5
BLX             R2
LDR             R0, [R6]
LDR             R2, =0x49249249
MOV             R1, #0
ADD             R4, R5, #0x13C00
LDR             R12, [R0,#0x1C]
ADD             R4, R4, #0x164
UMLAL           R2, R1, R12, R2
MOVS            R2, R1,LSR#4
MOVEQ           R0, #0
STREQ           R0, [R4]
BEQ             loc_18CC00
LDR             R1, [R0,#0x18]
MOV             R3, #0
ADD             R1, R1, R0
LDR             R0, [R5]
LDR             R12, [R0,#0x104]
MOV             R0, R5
BLX             R12
LDR             R0, [R6]
LDR             R1, [R0,#0x4C]
MOV             R9, R1,LSR#4
CMP             R9, #0
BEQ             loc_18CBE0
LDR             R1, [R0,#0x48]
MOV             R7, #0
ADD             R10, R0, R1
BLS             loc_18CBF0
LDR             R0, [R4]
ADD             R12, R7, R7,LSL#4
ADD             R1, R10, R7,LSL#4
ADD             R0, R0, R12,LSL#3
LDR             R11, [R1]
LDR             LR, [R0]
MOV             R2, #0x3C0
MOV             R3, #0x3C00
AND             R11, R2, R11,LSR#1
BIC             LR, LR, #0x3C0
ORR             R11, R11, LR
STR             R11, [R0]
LDR             LR, [R1]
BIC             R11, R11, #0x3C00
MOV             R12, #0x3C000
MOV             R8, #0x3C0000
AND             R3, R3, LR,LSR#1
ORR             R3, R3, R11
BIC             R11, R3, #0x3C000
STR             R3, [R0]
LDR             R3, [R1]
MOV             R2, #0xF0000000
AND             R3, R12, R3,LSR#1
ORR             R3, R3, R11
STR             R3, [R0]
LDR             R12, [R1]
BIC             R3, R3, #0x3C0000
AND             R12, R8, R12,LSR#1
ORR             R3, R3, R12
BIC             R12, R3, #0xF0000000
STR             R3, [R0]
LDR             R3, [R1]
AND             R2, R2, R3,LSL#5
ORR             R2, R2, R12
LDR             R12, =0xFFFF
BIC             R2, R2, #0x8000000
STR             R2, [R0]
MOV             R2, #0
ADD             R3, R1, R2,LSL#1
LDRH            R3, [R3,#4]
CMP             R3, R12
BEQ             loc_18CAA0
LDR             R8, [R4]
ADD             R11, R3, R3,LSL#4
ADD             R3, R0, R2,LSL#3
ADD             LR, R1, R2
ADD             R8, R8, R11,LSL#3
STR             R8, [R3,#0x58]
LDRB            R8, [LR,#0xC]
STRB            R8, [R3,#0x5C]
ADD             R2, R2, #1
CMP             R2, #4
BLT             loc_18CA70
LDR             R2, [R0]
MOV             R1, #3
MOV             R11, R2,LSL#7
CMP             R1, R11,LSR#29
BNE             loc_18CADC
ADD             R1, R0, #0x58 ; 'X'
ADD             R8, R0, #0x60 ; '`'
LDM             R1, {R1-R3,R12}
STM             R8, {R1,R2}
ADD             R1, R0, #0x58 ; 'X'
STM             R1, {R3,R12}
B               loc_18CB1C
ADD             R3, R0, #0x70 ; 'p'
ADD             R2, R0, #0x5C ; '\'
ADD             R8, R0, #0x68 ; 'h'
LDM             R3, {R3,R12}
LDM             R8, {R8,LR}
LDR             R1, [R0,#0x58]
VLDM            R2, {S0-S1}
LDR             R2, [R0,#0x64]
STR             R3, [R0,#0x58]
ADD             R3, R0, #0x60 ; '`'
STR             R12, [R0,#0x5C]
STM             R3, {R8,LR}
VSTR            S1, [R0,#0x68]
STR             R1, [R0,#0x70]
STR             R2, [R0,#0x6C]
VSTR            S0, [R0,#0x74]
MOV             R12, #0xFFFFFFFD
ADD             R8, R12, R11,LSR#29
CMP             R8, #0
ADD             R2, R0, #0x1C
BLE             loc_18CBAC
EOR             R12, R12, R11,LSR#29
TST             R12, #1
MOV             R3, #0
MOV             R1, R2
BEQ             loc_18CB60
VLDR            S1, [R2]
VLDR            S0, [R2,#0x10]
ADD             R1, R2, #0x10
MOV             R3, #1
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
ADDCC           R2, R0, #0x2C ; ','
VLDR            S0, [R1,#0x10]
MOVS            R12, R8,ASR#1
BEQ             loc_18CBAC
VLDR            S1, [R2]
ADD             R1, R1, #0x20 ; ' '
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VLDR            S1, [R1]
VLDR            S0, [R1,#0x10]
ADDGT           R2, R0, R3,LSL#4
ADDGT           R2, R2, #0x2C ; ','
VLDR            S2, [R2]
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
ADDGT           R2, R0, R3,LSL#4
ADDGT           R2, R2, #0x3C ; '<'
SUBS            R12, R12, #1
ADD             R3, R3, #2
BNE             loc_18CB6C
MOV             R1, #4
CMP             R1, R11,LSR#29
BNE             loc_18CBD0
ADD             R1, R0, #0x58 ; 'X'
VLDM            R1, {S0-S7}
ADD             R1, R0, #0x70 ; 'p'
ADD             R0, R0, #0x58 ; 'X'
VSTM            R1, {S0-S1}
VSTM            R0, {S2-S7}
ADD             R7, R7, #1
CMP             R7, R9
BCC             loc_18C9D8
B               loc_18CBF0
LDR             R0, [R5]
LDR             R1, [R0,#0x110]
MOV             R0, R5
BLX             R1
LDR             R0, [R5]
LDR             R1, [R0,#0x108]
MOV             R0, R5
BLX             R1
LDR             R0, =off_6D1648
LDR             R1, [R0]
LDR             R0, [R6]
LDR             R1, [R1,#0xC8]
LDR             R2, [R0,#0x40]
TST             R1, #7
ADD             R4, R0, R2
BNE             loc_18CC2C
MOV             R1, R4
MOV             R0, R5
BL              sub_2B32C8
LDR             R0, [R5]
LDR             R1, [R0,#0x29C]
MOV             R0, R5
BLX             R1
LDR             R1, [R4,#0x18]
ADD             R8, R5, #0x15000
ORR             R2, R0, #0x2000000
AND             R3, R1, #3
LDR             R0, [R8,#0x20]
MOV             R1, R5
BL              sub_5AF4A8
ADD             R4, R4, #0xC
LDR             R2, [R8,#0x20]
LDM             R4, {R0,R1,R3}
ADD             R6, R5, #0x13000
ADD             R2, R2, #0xC20
ADD             R6, R6, #0xD20
STM             R2, {R0,R1,R3}
MOV             R4, #0
LDRB            R0, [R6]
CMP             R0, #0
BLE             loc_18CD64
ADD             R7, R5, #0x13C00
MOV             R9, #0
MOV             R10, #1
ADD             R7, R7, #0x108
MOV             R0, #0x67 ; 'g'
AND             R2, R4, #0xFF
LDR             R1, [R7]
SMULBB          R0, R2, R0
ADD             R2, R1, R0,LSL#2
LDR             R0, [R2,#0xA8]
LDR             R1, [R0,#0x10]
CMP             R1, #0
BEQ             loc_18CD54
LDR             R1, [R0,#0x14]!
CMP             R1, #0
MOVEQ           R0, R9
ADDNE           R0, R0, R1
CMP             R0, #0
BEQ             loc_18CCE0
LDR             R1, [R0,#0x28]!
CMP             R1, #0
MOVEQ           R0, R9
ADDNE           R0, R0, R1
LDR             R0, [R0,#0x10]
CMP             R0, #0
BEQ             loc_18CD00
CMP             R0, #1
BEQ             loc_18CD48
CMP             R0, #2
BNE             loc_18CD54
B               loc_18CD9C
LDR             R1, [R8,#0x20]
LDRB            R0, [R1,#0xC1C]
CMP             R0, #0
MOVNE           R0, #0
BEQ             loc_18CD54
ADD             R3, R1, R0,LSL#5
LDR             R3, [R3,#0x1C]
CMP             R3, #0
BEQ             loc_18CD34
ADD             R0, R0, #1
CMP             R0, #0x60 ; '`'
BLT             loc_18CD14
B               loc_18CD54
ADD             R0, R1, R0,LSL#5
STR             R2, [R0,#0x1C]
STRB            R9, [R0,#0x20]
STRB            R10, [R0,#0x21]
B               loc_18CD54
LDR             R1, [R2,#0xA4]
LDR             R0, [R8,#0x20]
BL              sub_5AE6CC
LDRB            R0, [R6]
ADD             R4, R4, #1
CMP             R4, R0
BLT             loc_18CC94
LDR             R0, =0x13D04
MOV             R2, #1
LDRH            R1, [R0,R5]
LDR             R0, =dword_6E7CD0
BL              sub_586ACC
LDR             R0, [R5]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DD14
LDM             R0, {R1,R2}
ADD             SP, SP, #0xC
MOV             R0, R5
POP             {R4-R11,LR}
BX              R12
LDR             R1, [R8,#0x20]
LDRB            R0, [R1,#0xC1C]
CMP             R0, #0
MOVNE           R0, #0
BEQ             loc_18CD48
ADD             R3, R1, R0,LSL#5
LDR             R3, [R3,#0x1C]
CMP             R3, #0
BEQ             loc_18CDD0
ADD             R0, R0, #1
CMP             R0, #0x60 ; '`'
BLT             loc_18CDB0
B               loc_18CD48
ADD             R0, R1, R0,LSL#5
STR             R2, [R0,#0x1C]
STRB            R9, [R0,#0x20]
STRB            R10, [R0,#0x21]
B               loc_18CD48
