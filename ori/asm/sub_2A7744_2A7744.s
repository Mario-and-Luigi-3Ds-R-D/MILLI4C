PUSH            {R4-R11,LR}
MOV             R6, R2
MOV             R3, #0
MOV             R7, R1
MOV             R11, R0
MOV             R2, R3
VPUSH           {D8-D9}
SUB             SP, SP, #0x14
MOV             R0, #0x190
BL              sub_10A358
MOVS            R5, R0
VLDR            S17, =1.0
VLDR            S18, =0.0
MOV             R8, #0
MOVEQ           R5, #0
BEQ             loc_2A78E4
LDR             R0, =off_6C3340
LDR             R1, =0x4020
STR             R0, [R5]
STR             R1, [R5,#4]
LDR             R1, =0xFF0100
STR             R1, [R5,#8]
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R5,#0x14]
ADD             R0, R5, #0xC
STM             R0, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R5,#0x20]
ADD             R0, R5, #0x18
STM             R0, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R5,#0x2C]
ADD             R0, R5, #0x24 ; '$'
STM             R0, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R5,#0x38]
ADD             R0, R5, #0x30 ; '0'
STM             R0, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R5,#0x44]
ADD             R0, R5, #0x3C ; '<'
STM             R0, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R5, #0x48 ; 'H'
LDR             R0, [R0,#8]
VLDR            S0, =0.25
ADD             R4, R5, #0x6C ; 'l'
STR             R0, [R5,#0x50]
STR             R8, [R5,#0x54]
STM             R3, {R1,R2}
MOV             R0, #1
STR             R8, [R5,#0x58]
STR             R0, [R5,#0x60]
STR             R8, [R5,#0x5C]
VSTR            S18, [R5,#0x64]
VSTR            S0, [R5,#0x68]
MOV             R0, #7
STR             R0, [R5,#0x94]
VSTR            S17, [R5,#0x7C]
VSTR            S17, [R5,#0x80]
VSTR            S17, [R5,#0x84]
VSTR            S18, [R5,#0x6C]
VSTR            S18, [R5,#0x70]
VSTR            S18, [R5,#0x74]
VSTR            S17, [R5,#0x78]
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R4,#0x24]
ADD             R0, R4, #0x1C
STM             R0, {R1,R2}
MOV             R1, #0x9C
LDR             R0, [R4,#0x28]
ORR             R0, R0, #0x38 ; '8'
STR             R0, [R4,#0x28]
MOV             R0, #0xFFFFFFFF
ADD             R4, R5, #0xCC
REV             R0, R0
STR             R0, [R5,#0xC8]
MOV             R0, R4
BL              sub_2FFE8C
STR             R4, [R4,#0xA0]
ADD             R0, R4, #0x9C
STR             R4, [R4,#0x9C]
STR             R0, [R4,#0xA8]
MOV             R0, #0xFFFFFFFF
STR             R4, [R4,#0xA4]
STR             R0, [R5,#0x17C]
STR             R8, [R5,#0x178]
STR             R8, [R5,#0x180]
STR             R8, [R5,#0x184]
STR             R8, [R5,#0x188]
STR             R8, [R5,#0x18C]
STR             R5, [R11]
LDRSB           R0, [R6,#1]
MOV             R9, R7
LDRB            R7, [R6]
STR             R0, [SP,#0x48+var_48]
MOV             R0, R5
BL              sub_5B83E4
LDR             R0, [SP,#0x48+var_48]
STR             R7, [R5,#0x5C]
MOV             R3, #0
CMP             R0, #0
MOVNE           R4, #2
MOVEQ           R4, #1
MOV             R0, #8
MUL             R7, R7, R4
MOV             R2, R3
ADD             R1, R7, R7,LSL#1
ADD             R1, R1, R7,LSL#3
ADD             R0, R0, R1,LSL#5
MOV             R1, R9
BL              sub_1143B4
CMP             R0, #0
MOVEQ           R1, #0
BEQ             loc_2A7968
ADD             R0, R0, #8
SUB             R2, R0, #8
MOV             R1, #0x160
STM             R2, {R1,R7}
MOV             R2, R1
LDR             R1, =sub_5B856C
MOV             R3, R7
BLX             sub_1002F4
MOV             R1, R0
LDR             R0, [R5,#0x5C]
LDR             R2, [R5,#0x54]
MUL             R0, R0, R4
CMP             R2, #0
STR             R0, [R5,#0x58]
STR             R1, [R5,#0x54]
BEQ             loc_2A7990
LDR             R1, =dword_593390
MOV             R0, R2
BLX             sub_3016C8
LDR             R0, [R5,#0x58]
LDR             R4, [R5,#0x54]
ADD             R1, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#3
ADD             R0, R4, R0,LSL#5
CMP             R0, R4
VMOVNE.F32      S16, S18
BEQ             loc_2A7A70
NOP
BL              sub_464168
VLDM            R0, {S0-S7}
ADD             R1, R4, #0x20 ; ' '
ADD             R8, R4, #0x40 ; '@'
ADD             R7, R4, #0x104
VSTM            R1, {S0-S7}
ADD             R1, R0, #0x20 ; ' '
VMOV.F32        S0, S17
LDM             R1, {R1-R3}
LDR             R0, [R0,#0x2C]
STR             R0, [R4,#0x4C]
STM             R8, {R1-R3}
ADD             R0, R4, #0x12C
LDR             R3, [R4,#0x12C]
MOV             R1, R0
MOV             R2, R0
MOV             R12, R3,LSL#31
ORR             R3, R3, R12,LSR#28
AND             R0, R3, #2
STR             R3, [R4,#0x12C]
ORR             R0, R3, R0,LSL#3
STR             R0, [R1]
AND             R1, R0, #4
ORR             R0, R0, R1,LSL#3
STR             R0, [R2]
VSTR            S0, [R4,#0x114]
VSTR            S0, [R4,#0x118]
VSTR            S0, [R4,#0x11C]
VSTR            S16, [R7]
VSTR            S16, [R7,#4]
VSTR            S16, [R7,#8]
VSTR            S0, [R7,#0xC]
BL              sub_4635D8
LDR             R2, [R0]
LDR             R1, [R0,#4]
LDR             R0, [R0,#8]
STR             R2, [R7,#0x1C]!
ADD             R4, R4, #0x160
STR             R1, [R7,#4]
STR             R0, [R7,#8]
LDR             R0, [R5,#0x58]
LDR             R2, [R5,#0x54]
ADD             R1, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#3
ADD             R0, R2, R0,LSL#5
CMP             R0, R4
BNE             loc_2A79B0
LDR             R0, [SP,#0x48+var_48]
LDR             R1, [R5,#4]
CMP             R0, #0
ADD             R0, R5, #4
ORRNE           R1, R1, #0x108
BICEQ           R1, R1, #0x108
STR             R1, [R0]
LDR             R1, [R5,#4]
MOV             R0, R5
ORR             R1, R1, #1
STR             R1, [R5,#4]
MOV             R1, #0
BL              sub_5B7D3C
MOV             R4, #0
STR             R4, [R5,#0x178]
VSTR            S18, [R5,#0x64]
MOV             R1, #1
ADD             R0, R5, #0x168
BL              sub_62D444
LDR             R1, [R5,#0x168]
MOV             R2, R4
MOV             R0, R5
BL              sub_5B71F4
MOV             R0, R5
NOP
BL              sub_5B7B9C
LDR             R1, [R5,#4]
MOV             R0, R5
BIC             R1, R1, #0x600
STR             R1, [R5,#4]
BL              sub_5B7B9C
LDR             R0, [R5,#4]
BIC             R0, R0, #0x1800
STR             R0, [R5,#4]
LDR             R1, [R5,#8]
MOV             R1, R1,LSL#16
MOVS            R1, R1,LSR#24
BEQ             loc_2A7B1C
AND             R2, R0, #0x1800
CMP             R2, #0x800
TSTNE           R0, #8
MOVNE           R1, #1
BNE             loc_2A7B20
MOV             R1, #0
TST             R0, #0x80
EORNE           R0, R1, #1
MOVEQ           R0, R1
CMP             R0, #0
MOVNE           R0, R5
BLNE            sub_5B7D3C
MOV             R0, R5
NOP
BL              sub_5B7B9C
NOP
NOP
B               loc_2A7B70
DCFS 1.0
DCFS 0.0
DCD off_6C3340
DCD 0x4020
DCD 0xFF0100
DCFS 0.25
DCD sub_5B856C
DCD dword_593390
LDR             R0, [R5,#4]
ORR             R0, R0, #4
STR             R0, [R5,#4]
LDR             R0, [R11]
LDRB            R1, [R6,#2]
LDR             R2, [R0,#8]
MOV             R3, R2,LSL#16
MOV             R3, R3,LSR#24
CMP             R3, R1
BNE             loc_2A7BA8
MOV             R3, R2,LSL#8
MOV             R3, R3,LSR#24
CMP             R3, #0xFF
BEQ             loc_2A7BEC
BIC             R2, R2, #0xFF00
ORR             R1, R2, R1,LSL#8
ORR             R1, R1, #0xFF0000
STR             R1, [R0,#8]
MOV             R1, R1,LSL#16
MOVS            R1, R1,LSR#24
BEQ             loc_2A7BE0
LDR             R1, [R0,#4]
MOV             R2, #1
MOV             R3, R1,LSL#19
CMP             R2, R3,LSR#30
TSTNE           R1, #8
MOVNE           R1, #1
BNE             loc_2A7BE4
MOV             R1, #0
NOP
BL              sub_5B7D3C
LDR             R4, [R11]
LDR             R8, [R6,#4]
LDRB            R9, [R6,#3]
LDR             R0, [R4,#0x58]
LDR             R5, [R4,#0x54]
ADD             R1, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#3
ADD             R0, R5, R0,LSL#5
CMP             R0, R5
BEQ             loc_2A7C3C
MOV             R0, R5
BL              sub_592EDC
LDR             R1, [R4,#0x58]
LDR             R2, [R4,#0x54]
ADD             R5, R5, #0x160
ADD             R0, R1, R1,LSL#1
ADD             R0, R0, R1,LSL#3
ADD             R0, R2, R0,LSL#5
CMP             R0, R5
BNE             loc_2A7C14
LDR             R1, [R4,#4]
CMP             R8, #0
BIC             R1, R1, #2
STR             R1, [R4,#4]
BEQ             loc_2A7D20
LDR             R0, [R4,#0x58]
LDR             R5, [R4,#0x54]
MOV             R7, #1
ADD             R1, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#3
ADD             R0, R5, R0,LSL#5
CMP             R0, R5
BEQ             loc_2A7CFC
MOV             R0, R8
MOV             R1, #1
BL              sub_5F0474
MOV             R10, R0
MOV             R0, R8
ADD             R0, R0, #0xA0
STR             R0, [SP,#0x48+var_3C]
MOV             R1, #0
MOV             R0, R8
BL              sub_5F0474
MOV             R2, #0x100
MOV             R3, #0
MOV             R1, R0
STR             R3, [SP,#0x48+var_44]
STR             R2, [SP,#0x48+var_40]
LDR             R2, [SP,#0x48+var_3C]
MOV             R3, R10
MOV             R0, R5
STR             R9, [SP,#0x48+var_48]
BL              sub_1137FC
LDR             R0, [R5,#4]
LDR             R2, [R4,#0x54]
ADD             R5, R5, #0x160
CMP             R0, #0
LDR             R0, [R4,#0x58]
MOVNE           R1, #1
MOVEQ           R1, #0
AND             R7, R7, R1
ADD             R1, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#3
ADD             R0, R2, R0,LSL#5
CMP             R0, R5
BNE             loc_2A7C70
CMP             R7, #0
BEQ             loc_2A7DC8
LDR             R1, [R4,#4]
CMP             R7, #0
ORR             R1, R1, #2
STR             R1, [R4,#4]
BEQ             loc_2A7D20
AND             R0, R1, #0x80
MOV             R1, R0,LSR#7
MOV             R0, R4
BL              sub_5B7D3C
LDR             R0, [R4,#8]
BIC             R0, R0, #0xFF
ORR             R0, R0, R9
STR             R0, [R4,#8]
LDR             R1, [R11]
LDRB            R0, [R6,#8]
LDR             R3, [R1,#4]
MOV             R2, R0,LSL#30
MOV             R0, R1
BIC             R3, R3, #0x600
ORR             R2, R3, R2,LSR#21
STR             R2, [R1,#4]
BL              sub_5B7B9C
LDRB            R1, [R6,#9]
LDR             R0, [R11]
LDRSB           R2, [R6,#0xA]
CMP             R1, #0
ADD             R1, R0, #0x54 ; 'T'
BEQ             loc_2A7DD8
LDM             R1, {R1,R3}
ADD             R12, R3, R3,LSL#1
ADD             R3, R12, R3,LSL#3
ADD             R3, R1, R3,LSL#5
CMP             R3, R1
BEQ             loc_2A7DBC
CMP             R2, #0
MOV             R3, R1
MOVNE           R12, #2
MOVEQ           R12, #0
ORR             R12, R12, #1
ADD             R4, R0, #0x54 ; 'T'
ADD             R1, R3, #0x160
STRB            R12, [R3,#0x6F]
LDM             R4, {R3,R4}
ADD             R12, R4, R4,LSL#1
ADD             R12, R12, R4,LSL#3
ADD             R3, R3, R12,LSL#5
CMP             R3, R1
BNE             loc_2A7D84
LDR             R1, [R0,#4]
ORR             R1, R1, #0x10
B               loc_2A7E20
LDR             R1, [R4,#4]
BIC             R1, R1, #2
STR             R1, [R4,#4]
B               loc_2A7D20
LDM             R1, {R1,R2}
ADD             R3, R2, R2,LSL#1
ADD             R2, R3, R2,LSL#3
ADD             R2, R1, R2,LSL#5
CMP             R2, R1
MOVNE           R2, #0
BEQ             loc_2A7E18
ADD             R3, R0, #0x54 ; 'T'
STRB            R2, [R1,#0x6F]
LDM             R3, {R3,R12}
ADD             R1, R1, #0x160
ADD             R4, R12, R12,LSL#1
ADD             R12, R4, R12,LSL#3
ADD             R3, R3, R12,LSL#5
CMP             R3, R1
BNE             loc_2A7DF4
LDR             R1, [R0,#4]
BIC             R1, R1, #0x10
STR             R1, [R0,#4]
LDR             R0, [R11]
LDRB            R1, [R6,#0xB]
MOV             R4, R0
LDR             R2, [R0,#4]
MOV             R1, R1,LSL#30
BIC             R2, R2, #0x1800
ORR             R1, R2, R1,LSR#19
STR             R1, [R0,#4]
LDR             R1, [R0,#8]
MOV             R1, R1,LSL#16
MOVS            R1, R1,LSR#24
BEQ             loc_2A7E70
LDR             R1, [R0,#4]
MOV             R2, #1
MOV             R3, R1,LSL#19
CMP             R2, R3,LSR#30
TSTNE           R1, #8
MOVNE           R1, #1
BNE             loc_2A7E74
MOV             R1, #0
LDR             R2, [R0,#4]
TST             R2, #0x80
EORNE           R2, R1, #1
MOVEQ           R2, R1
CMP             R2, #0
BLNE            sub_5B7D3C
MOV             R0, R4
NOP
BL              sub_5B7B9C
LDR             R0, [R11]
LDR             R1, [R6,#0xC]
STR             R1, [R0,#0x60]
LDR             R0, [R11]
LDR             R1, [R6,#0x14]
STR             R1, [R0,#0x68]
ADD             R1, R6, #0x18
LDR             R0, [R11]
LDM             R1, {R1-R3}
ADD             R5, R0, #0x18
STM             R5, {R1-R3}
ADD             R1, R6, #0x24 ; '$'
ADD             R5, R0, #0xC
LDM             R1, {R1-R3}
STM             R5, {R1-R3}
BL              sub_5B7B9C
ADD             R1, R6, #0x30 ; '0'
LDR             R0, [R11]
LDM             R1, {R1-R3}
ADD             R5, R0, #0x30 ; '0'
STM             R5, {R1-R3}
ADD             R1, R6, #0x3C ; '<'
ADD             R5, R0, #0x24 ; '$'
LDM             R1, {R1-R3}
STM             R5, {R1-R3}
BL              sub_5B7B9C
LDR             R4, [R11]
LDR             R5, [R6,#0x48]
MOV             R1, #1
ADD             R0, R4, #0x168
STR             R5, [R4,#0x178]
VSTR            S18, [R4,#0x64]
BL              sub_62D444
LDR             R1, [R4,#0x168]
MOV             R2, R5
MOV             R0, R4
BL              sub_5B71F4
MOV             R0, R4
NOP
BL              sub_5B7B9C
LDR             R0, [R6,#0xC]
STR             R0, [R11,#4]
LDR             R0, [R6,#0x10]
STR             R0, [R11,#8]
LDR             R1, [R6,#0x4C]
CMP             R1, #0
BEQ             loc_2A7F64
LDR             R0, [R11]
LDR             R2, =sub_2A7698
STR             R2, [R0,#0x180]!
STR             R1, [R0,#4]
ADD             SP, SP, #0x14
VPOP            {D8-D9}
POP             {R4-R11,PC}
