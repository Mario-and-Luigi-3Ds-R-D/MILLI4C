PUSH            {R4-R12,LR}
MOV             R5, R2
MOV             R7, R0
ADD             R3, R5, #8
MOV             R8, R1
LDR             R0, =off_6CE970
MOV             R4, #0
VPUSH           {D8}
MOV             R1, R4
LDR             R2, [R2,#0x14]
LDM             R3, {R3,R6}
MOV             R12, #0xA0
AND             R9, R2, #0xFF
LDR             R2, [R0]
CMP             R9, #2
UXTH            R0, R6
VLDR            S16, [R5,#0x70]
LDREQ           R2, [R2,#4]
UXTH            R3, R3
MOVEQ           R1, #0
MOVNE           R6, #0
BEQ             loc_2134D4
ADD             R10, R7, R6,LSL#3
LDR             R10, [R10,#0xAE8]
CMP             R10, #0
BEQ             loc_2134A8
ADD             R6, R6, #1
AND             R6, R6, #0xFF
CMP             R6, #0x28 ; '('
BCC             loc_213484
MOV             R6, #0
ORR             R6, R6, #0x7000
AND             R11, R6, #0xFF00
AND             R10, R6, #0xFF
CMP             R11, #0x7000
ADDEQ           R12, R7, R10,LSL#3
ADDEQ           R4, R12, #0x800
ADDEQ           R4, R4, #0x2E4
BEQ             loc_21353C
CMP             R11, #0x7100
BEQ             loc_213530
B               loc_21353C
ADD             R6, R12, R1,LSL#3
ADD             R6, R6, R2
LDR             R6, [R6,#4]
CMP             R6, #0
BEQ             loc_2134FC
ADD             R1, R1, #1
AND             R1, R1, #0xFF
CMP             R1, #4
BCC             loc_2134D4
MOV             R1, #0
ORR             R6, R1, #0x7100
AND             R1, R6, #0xFF00
AND             R9, R6, #0xFF
CMP             R1, #0x7000
ADDEQ           R1, R7, R9,LSL#3
ADDEQ           R4, R1, #0x800
ADDEQ           R4, R4, #0x2E4
BEQ             loc_213528
CMP             R1, #0x7100
ADDEQ           R1, R12, R9,LSL#3
ADDEQ           R4, R2, R1
ADD             R1, R2, #0x8C
B               loc_213554
LDR             R4, [R2,#4]
ADD             R12, R12, R10,LSL#3
ADD             R4, R4, R12
CMP             R9, #0
LDREQ           R1, =0x1063B4
LDREQ           R1, [R1,R2]
BEQ             loc_213554
CMP             R9, #1
ADDEQ           R1, R2, #0x48 ; 'H'
UXTH            R2, R3
STRH            R3, [R4]
STRH            R0, [R4,#2]
MUL             R0, R2, R0
MOV             R3, #0
MOV             R2, R3
MOV             R0, R0,LSL#2
BL              sub_1143B4
STR             R0, [R4,#4]
MOV             R1, R0
LDRH            R0, [R4]
LDRH            R2, [R4,#2]
MUL             R0, R0, R2
ADD             R2, R1, R0,LSL#2
SUB             R0, R2, R1
MOV             R3, R0,ASR#2
CMP             R3, #0
BLE             loc_2135D4
MOV             R3, R0,LSL#29
CMP             R3, #0
SUB             R0, R1, #4
ADDLT           R0, R0, #4
SUB             R1, R2, R1
VSTRLT          S16, [R0]
MOVS            R1, R1,ASR#3
BEQ             loc_2135D4
VMOV.F32        S0, S16
SUBS            R1, R1, #1
VSTR            S0, [R0,#4]
ADD             R0, R0, #8
VSTR            S0, [R0]
BNE             loc_2135BC
VMOV            S0, R6
CMP             R8, #0
LDRH            R0, [R5,#2]
ADDNE           R2, R8, #4
MOVEQ           R2, #0
MOV             R1, R7
VCVT.F32.U32    S0, S0
BL              sub_145730
VPOP            {D8}
MOV             R0, #0
POP             {R4-R12,PC}
