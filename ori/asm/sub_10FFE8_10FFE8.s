PUSH            {R4-R9,LR}
SUB             SP, SP, #0xC
MOV             R5, R0
LDR             R6, [R0,#0x40]
CMP             R6, #0
BEQ             loc_1100BC
MOV             R2, #8
ADR             R1, aRedspark; "RedSpark"
MOV             R0, R6
BLX             sub_1004FC
CMP             R0, #0
BNE             loc_11025C
LDR             R0, [R6,#8]
CMP             R0, #0
BLE             loc_11025C
LDR             R0, [R6,#0x10]
CMP             R0, #0x12C
BEQ             loc_1100D4
BGE             loc_1100C4
CMP             R0, #0
BEQ             loc_11013C
LDR             R9, =byte_6D23B8
CMP             R0, #0x64 ; 'd'
MOV             R8, #0
BEQ             loc_110154
CMP             R0, #0xC8
BNE             loc_1100BC
LDR             R0, [R5,#0x40]
LDR             R2, [R5,#0x1C]
MOV             R1, #0
BL              sub_11DADC
LDRH            R1, [R6,#0x32]
ADD             R4, R6, #0x30 ; '0'
MOV             R2, #1
MOV             R0, #0
BL              sub_11DAF8
CMP             R0, #0
BNE             loc_1100BC
LDRH            R1, [R4,#2]
MOV             R2, #1
MOV             R0, #0
BL              sub_11BEBC
CMP             R0, #0
BNE             loc_1100BC
LDR             R1, [R5,#0x1C]
LDR             R0, [R9,#(dword_6D23C8 - 0x6D23B8)]; int
STR             R8, [SP,#0x28+var_28]; char
STR             R1, [SP,#0x28+var_20]; float
STR             R8, [SP,#0x28+var_24]; char
LDR             R1, [R5]; int
LDRH            R3, [R4,#2]; int
MOV             R2, #0; int
BL              sub_11D4A4
ADD             SP, SP, #0xC
POP             {R4-R9,PC}
SUB             R0, R0, #0x100
SUBS            R0, R0, #0x2D ; '-'
CMPNE           R0, #1
BNE             loc_1100BC
NOP
BL              sub_11C254
MOVS            R4, R0
NOP
BEQ             loc_11025C
MOV             R2, #0
LDR             R0, [R5,#0x40]
MOV             R1, R2
BL              sub_11DADC
ADD             R1, R5, #0x48 ; 'H'
ADD             R0, R4, #0x1C
BL              sub_11D1D8
LDR             R0, [R5,#0x24]
STR             R0, [R6,#0x14]
LDR             R0, [R5,#0x40]
STR             R0, [R4,#4]
LDR             R0, [R5,#0x2C]
STR             R0, [R4,#0xC]
LDR             R0, [R5,#0x30]
STR             R0, [R4,#0x10]
LDR             R0, [R5]
STR             R0, [R4]
LDR             R0, [R5,#8]
STR             R0, [R4,#8]
ADD             SP, SP, #0xC
POP             {R4-R9,PC}
LDR             R2, [R5,#0x1C]!
MOV             R1, #0
LDR             R0, [R5,#0x24]
ADD             SP, SP, #0xC
POP             {R4-R9,LR}
B               sub_11DADC
LDR             R0, [R5,#0x40]
LDR             R2, [R5,#0x1C]
MOV             R1, #0
BL              sub_11DADC
LDRH            R0, [R6,#0x1C]
CMP             R0, #1
MOVEQ           R4, #0
ADDEQ           R7, R6, #0x30 ; '0'
BEQ             loc_1101E0
LDRH            R1, [R6,#0x34]
ADD             R4, R6, #0x30 ; '0'
MOV             R2, #1
MOV             R0, #0
BL              sub_11DAF8
CMP             R0, #0
NOP
BNE             loc_1100BC
LDRH            R1, [R4,#4]
MOV             R2, #1
MOV             R0, #0
BL              sub_11BEBC
CMP             R0, #0
NOP
BNE             loc_1100BC
LDR             R1, [R5,#0x1C]
LDR             R0, [R9,#(dword_6D23C8 - 0x6D23B8)]; int
STR             R8, [SP,#0x28+var_28]; char
STR             R1, [SP,#0x28+var_20]; float
STR             R8, [SP,#0x28+var_24]; char
LDR             R1, [R5]; int
LDRH            R3, [R4,#4]; int
MOV             R2, #0; int
BL              sub_11D4A4
ADD             SP, SP, #0xC
POP             {R4-R9,PC}
ADD             R6, R7, R4,LSL#1
LDRSH           R1, [R6,#0x10]
CMN             R1, #1
BEQ             loc_110248
MOV             R2, #1
MOV             R0, #0
BL              sub_11DAF8
CMP             R0, #0
NOP
BNE             loc_110248
LDRSH           R1, [R6,#0x10]
MOV             R2, #1
MOV             R0, #0
BL              sub_11BEBC
CMP             R0, #0
NOP
BNE             loc_110248
LDR             R1, [R5,#0x1C]
LDR             R0, [R9,#(dword_6D23C8 - 0x6D23B8)]; int
STR             R8, [SP,#0x28+var_28]; char
STR             R1, [SP,#0x28+var_20]; float
STR             R8, [SP,#0x28+var_24]; char
LDR             R1, [R5]; int
LDRSH           R3, [R6,#0x10]; int
MOV             R2, #0; int
BL              sub_11D4A4
ADD             R4, R4, #1
CMP             R4, #0x10
BLT             loc_1101E0
ADD             SP, SP, #0xC
POP             {R4-R9,PC}
LDR             R0, [R5,#0x40]
ADD             SP, SP, #0xC
POP             {R4-R9,LR}
B               sub_1361A4
