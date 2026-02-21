PUSH            {R4-R11,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0xC
LDR             R1, [R0,#0xC]
LDR             R0, [R0,#0x10]
CMP             R1, #0
BNE             loc_153420
TST             R0, #1
BEQ             loc_15394C
CMP             R0, #0
BEQ             loc_15394C
MOV             R11, #0
TST             R0, #1
STRB            R11, [R4,#0x16]
LDREQ           R1, [R4,#0xC]
ADD             R2, R4, R0,ASR#1
BEQ             loc_153444
LDR             R0, [R2]
LDR             R1, [R4,#0xC]
LDR             R1, [R0,R1]
MOV             R0, R2
BLX             R1
MOV             R0, R4
BL              sub_1521EC
MOV             R5, #0
ADD             R0, R4, R5,LSL#2
LDR             R0, [R0,#0x160]
CMP             R0, #0
BEQ             loc_1534A0
LDR             R1, [R0,#0x3F4]
CMP             R1, #0
BEQ             loc_153504
LDR             R2, [R0,#0x3F8]
TST             R2, #1
ADD             R0, R0, R2,ASR#1
BEQ             loc_15348C
LDR             R2, [R0]
LDR             R1, [R2,R1]
NOP
BLX             R1
ADD             R5, R5, #1
CMP             R5, #0x20 ; ' '
BCC             loc_153458
LDRB            R0, [R4,#0x18]
LDR             R10, =off_6CE970
MOV             R5, #0
CMP             R0, #0x1E
ADDCC           R0, R0, #1
STRBCC          R0, [R4,#0x18]
UXTH            R0, R11
ORR             R8, R0, R11,LSL#16
LDRB            R0, [R4,#0x1E0]
CMP             R0, #0
VLDRHI          S16, =0.0
BLS             loc_1538C8
ADD             R0, R5, R5,LSL#2
ADD             R6, R4, R0,LSL#4
ADD             R6, R6, #0x1E4
LDRSB           R0, [R6]
CMP             R0, #0
BEQ             loc_1538B4
CMP             R0, #1
BEQ             loc_153518
CMP             R0, #2
BEQ             loc_1536E8
CMP             R0, #0xA
BNE             loc_1538B4
B               loc_153890
LDR             R2, [R0,#0x3F8]
TST             R2, #1
CMPNE           R2, #0
BNE             loc_153474
B               loc_153494
LDRH            R1, [R6,#4]
LDR             R0, [R10]
BL              sub_52F508
LDR             R7, [R0,#0x18]
MOV             R9, R0
CMP             R7, #0
BEQ             loc_1535C0
LDR             R0, [R7,#0x204]
ADD             R0, R0, #0x34 ; '4'
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_1538B4
LDR             R0, =0x10D4D8
LDR             R1, [R10]
MOV             R2, #1
ADD             R1, R1, R0; loc_10D4D8
MOV             R0, R9
BL              sub_50080C
CMP             R0, #0
NOP
BEQ             loc_1535FC
LDRH            R1, [R6,#4]
LDR             R0, [R10]
BL              sub_52F508
LDR             R0, [R0,#0x18]
CMP             R0, #0
BEQ             loc_1536C0
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
ADD             R1, R6, #0x10
BLX             R2
LDRH            R1, [R6,#4]
LDR             R0, [R10]
BL              sub_52F508
MOV             R7, R0
NOP
BL              sub_5EC8CC
CMP             R0, #0
NOP
BEQ             loc_153820
B               loc_1535E4
LDRH            R1, [R6,#4]
LDR             R0, [R10]
BL              sub_52F508
MOV             R7, R0
NOP
BL              sub_5EC8CC
CMP             R0, #0
NOP
BEQ             loc_153820
MOV             R1, #0
MOV             R0, R7
STRB            R1, [R0,#0x183]
NOP
NOP
B               loc_153820
LDRSB           R1, [R6,#1]
CMP             R1, #0
BLE             loc_153640
LDR             R0, =unk_6E1DF4
VLDR            S0, [R6,#0xC]
VLDR            S1, [R0,#(flt_6E1ECC - 0x6E1DF4)]
MOV             R0, R6
VMUL.F32        S0, S0, S1
BL              sub_33A654
MOV             R0, R8,LSL#16
MOVS            R0, R0,LSR#16
BNE             loc_1538B4
LDRH            R0, [R7,#0x10]
MOV             R1, R8,LSR#16
MOV             R1, R1,LSL#16
ORR             R8, R1, R0
B               loc_1538B4
LDR             R0, [R7]
ADD             R1, R6, #0x10
LDR             R2, [R0,#0x20]
MOV             R0, R7
BLX             R2
LDRB            R0, [R9,#0x24C]
CMP             R0, #0
BEQ             loc_153674
LDR             R0, [R9,#0x250]
VSTR            S16, [SP,#0x38+var_38]
VSTR            S16, [SP,#0x38+var_34]
STR             R0, [SP,#0x38+var_30]
B               loc_15368C
NOP
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [SP,#0x38+var_30]
STMEA           SP, {R1,R2}
LDR             R0, [R7]
MOV             R1, SP
LDR             R2, [R0,#0x38]
MOV             R0, R7
BLX             R2
MOV             R0, #2
MOVS            R1, R8,LSR#16
STRB            R0, [R6]
BNE             loc_1538B4
LDRH            R1, [R7,#0x10]
UXTH            R0, R8
ORR             R8, R0, R1,LSL#16
B               loc_1538B4
LDRH            R1, [R6,#4]
LDR             R0, [R10]
BL              sub_52F508
MOV             R7, R0
NOP
BL              sub_5EC8CC
CMP             R0, #0
NOP
BEQ             loc_153820
B               loc_1535E4
LDRH            R1, [R6,#4]
LDR             R0, [R10]
BL              sub_52F508
LDR             R7, [R0,#0x18]
MOV             R9, R0
LDR             R1, [R10]
LDR             R0, =0x10E0A4
MOV             R2, #1
ADD             R1, R1, R0; loc_10E0A4
MOV             R0, R9
BL              sub_50080C
CMP             R0, #0
NOP
BEQ             loc_153770
LDRH            R1, [R6,#4]
LDR             R0, [R10]
BL              sub_52F508
LDR             R0, [R0,#0x18]
CMP             R0, #0
BEQ             loc_153868
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
ADD             R1, R6, #0x10
BLX             R2
LDRH            R1, [R6,#4]
LDR             R0, [R10]
BL              sub_52F508
MOV             R7, R0
NOP
BL              sub_5EC8CC
CMP             R0, #0
NOP
BEQ             loc_153820
B               loc_1535E4
LDR             R0, [R7,#0x204]
ADD             R0, R0, #0xC
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_1538B4
LDR             R0, [R9]
LDR             R1, [R0,#0x40]
MOV             R0, R9
BLX             R1
BL              sub_5C4A1C
CMP             R0, #0
NOP
BNE             loc_1538B4
LDRH            R1, [R6,#4]
LDR             R0, [R10]
BL              sub_52F508
LDR             R7, [R0,#0x18]
CMP             R7, #0
BEQ             loc_153840
LDR             R0, [R7]
ADD             R1, R6, #0x10
LDR             R2, [R0,#0x20]
MOV             R0, R7
BLX             R2
MOV             R0, R7
BL              sub_501FA0
NOP
NOP
BL              sub_4635D8
LDR             R1, [R7]
LDR             R2, [R1,#0x38]
MOV             R1, R0
MOV             R0, R7
BLX             R2
LDRH            R1, [R6,#4]
LDR             R0, [R10]
BL              sub_52F508
MOV             R7, R0
NOP
BL              sub_5EC8CC
CMP             R0, #0
NOP
BNE             loc_1535E4
MOV             R0, #0x7F
STRB            R0, [R6]
B               loc_1538B4
DCD off_6CE970
DCFS 0.0
DCD 0x10D4D8
DCD unk_6E1DF4
DCD 0x10E0A4
LDRH            R1, [R6,#4]
LDR             R0, [R10]
BL              sub_52F508
MOV             R7, R0
NOP
BL              sub_5EC8CC
CMP             R0, #0
NOP
BNE             loc_1535E4
B               loc_153820
LDRH            R1, [R6,#4]
LDR             R0, [R10]
BL              sub_52F508
MOV             R7, R0
NOP
BL              sub_5EC8CC
CMP             R0, #0
NOP
BEQ             loc_153820
B               loc_1535E4
LDRH            R1, [R6,#4]
LDR             R0, [R10]
BL              sub_52F508
NOP
NOP
BL              sub_5EC8D8
CMP             R0, #0
NOP
BEQ             loc_153820
LDRB            R0, [R4,#0x1E0]
ADD             R1, R5, #1
AND             R5, R1, #0xFF
CMP             R0, R5
BHI             loc_1534D0
LDRB            R0, [R4,#0x18]
CMP             R0, #4
BLS             loc_15391C
LDR             R5, =0xFFE683CC
MOV             R1, R8,LSL#16
MOVS            R1, R1,LSR#16
BEQ             loc_1538FC
LDR             R0, [R10]
LDR             R2, =0x300A2
MOV             R3, #0
SUB             R0, R0, R5
BL              sub_503808
STRB            R11, [R4,#0x18]
MOVS            R1, R8,LSR#16
BEQ             loc_15391C
LDR             R0, [R10]
LDR             R2, =0x300A3
MOV             R3, #0
SUB             R0, R0, R5
BL              sub_503808
STRB            R11, [R4,#0x18]
LDR             R0, [R4,#0xC]
CMP             R0, #0
BNE             loc_15393C
LDR             R0, [R4,#0x10]
TST             R0, #1
BEQ             loc_15394C
CMP             R0, #0
BEQ             loc_15394C
ADD             SP, SP, #0xC
MOV             R0, #1
VPOP            {D8}
POP             {R4-R11,PC}
ADD             SP, SP, #0xC
MOV             R0, #0
VPOP            {D8}
POP             {R4-R11,PC}
