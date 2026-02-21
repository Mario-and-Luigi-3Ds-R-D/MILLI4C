PUSH            {R4-R10,LR}
MOV             R4, R0
SUB             SP, SP, #0x10
MOV             R1, #0xA000
LDR             R9, =off_6CE970
LDR             R0, [R9]
BL              sub_52FACC
MOV             R6, R0
LDR             R0, [R0]
LDR             R1, [R0,#0x14]
MOV             R0, R6
BLX             R1
CMP             R0, #0
BNE             loc_151634
LDR             R0, [R9]
BL              sub_5EE764
CMP             R0, #0
LDREQ           R5, [R9]
BNE             loc_151634
BL              sub_47FFCC
CMP             R0, #0
BNE             loc_151470
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R5]
CMP             R0, #0
BNE             loc_151470
LDR             R1, =0xA001
LDR             R0, [R9]
BL              sub_52FACC
MOV             R6, R0
LDR             R0, [R0]
LDR             R1, [R0,#0x14]
MOV             R0, R6
BLX             R1
CMP             R0, #0
BNE             loc_151634
LDR             R0, [R4,#0x48]
CMP             R0, #0
BNE             loc_151470
LDR             R1, =0x3001
LDR             R0, [R9]
BL              sub_52FA44
STR             R0, [R4,#0x48]
LDR             R0, [R4,#8]
LDR             R1, [R4,#0x38]
LDR             R8, =dword_6E1FBC
LDR             R5, [R0,#0x18]
CMP             R1, #0
BNE             loc_1514EC
LDR             R0, [R9]
MOV             R1, #0x3000
BL              sub_52FA44
STR             R0, [R4,#0x38]
LDR             R1, [R0]
MOV             R2, #0
LDR             R3, [R1,#0x58]
MOV             R1, R6
BLX             R3
LDR             R1, [R4,#0x38]
LDR             R0, [R8]
MOV             R3, #0x100
MOV             R2, #0
STRB            R0, [R1,#0xF6]
LDR             R0, [R4,#0x38]
MOV             R1, #0x11
BL              sub_14C548
LDR             R0, [R4,#0x38]
MOV             R1, #0
STRB            R1, [R0,#0xF2]
LDR             R0, [R4,#0x38]
LDR             R1, [R0]
LDR             R2, [R1,#0x34]
ADD             R1, R5, #0x5C ; '\'
BLX             R2
LDR             R0, [R9]
MOV             R1, #0xA000
BL              sub_52FACC
LDR             R1, [R5]
MOV             R2, #0
LDR             R3, [R1,#0x58]
MOV             R1, R0
MOV             R0, R5
BLX             R3
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0
MOV             R0, R5
BL              sub_14C548
LDR             R6, [R9]
NOP
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_1515D0
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R6]; byte_19CF30
CMP             R0, #0
BNE             loc_1515D0
LDR             R0, =0x15F0
LDR             R0, [R0,R4]
CMP             R0, #0
BNE             loc_1515D0
LDR             R0, [R9]
MOV             R1, R5
ADD             R0, R0, #0x100000
ADD             R0, R0, #0xE000
LDR             R7, [R0,#(loc_10E090 - 0x10E000)]
MOV             R0, R7
LDR             R10, [R7,#0x19C]
BL              sub_149BDC
ADD             R6, R4, #0x1400
ADD             R6, R6, #0x1E4
MOV             R0, R6
STR             R5, [R6,#0x3F4]
LDRB            R1, [R5,#0xF0]
BL              sub_14C450
ADD             R0, R7, #0x1A0
ADD             R3, R6, #0x3F8
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
MOV             R1, #0
MOV             R0, R6
BL              sub_14C3E8
NOP
NOP
BL              sub_4635D8
MOV             R3, R0
MOV             R2, R10
MOV             R1, R6
MOV             R0, R7
BL              sub_14C8F8
ADD             R8, R8, #4
LDM             R8, {R0-R2}
STMEA           SP, {R0-R2}
MOV             R2, #0xFFFFFFFF
MOV             R1, R2
MOV             R0, R5
BL              sub_5C55C8
VMOV            S0, R0
ADD             R0, R4, #0x1400
MOV             R2, SP
MOV             R1, #0
ADD             R0, R0, #0x33C
VCVT.F32.S32    S0, S0
BL              sub_5A2074
LDR             R0, [R4,#8]
LDR             R12, [R9]
LDR             R2, =0x30090
MOV             R3, #0
LDRH            R1, [R0,#0x10]
LDR             R0, =0xFFE683CC
SUB             R0, R12, R0
BL              sub_503808
LDR             R1, =unk_63FC24
LDRD            R0, R1, [R1,#(off_63FC80 - 0x63FC24)]
STRD            R0, R1, [R4,#0xC]
ADD             SP, SP, #0x10
POP             {R4-R10,PC}
