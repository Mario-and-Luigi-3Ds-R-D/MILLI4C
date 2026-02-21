PUSH            {R4-R11,LR}
VPUSH           {D8-D9}
SUB             SP, SP, #0x14
BL              sub_14CB8C
LDR             R1, =off_6B3ED0
MOV             R7, #0
STR             R1, [R0]
STRB            R7, [R0,#0xFD]
ADD             R0, R0, #0x100
BL              sub_5A2BD0
LDR             R1, =off_6B7BFC
MOV             R3, #1
MOV             R2, #0x28 ; '('
STR             R1, [R0],#0x30
LDR             R1, =sub_5A39D0
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R1, R0, #0x30 ; '0'
STR             R1, [R0,#0x28]
REV             R1, R7
MOV             R5, #1
STRB            R5, [R0,#0x2C]
REV             R2, R7
STR             R1, [R0,#0x58]!
VLDR            S18, =0.0
STR             R2, [R0,#4]
REV             R2, R7
STR             R2, [R0,#8]
VSTR            S18, [R0,#0xC]
VSTR            S18, [R0,#0x10]
VSTR            S18, [R0,#0x14]
VSTR            S18, [R0,#0x18]
ADD             R0, R0, #0x1C
BL              sub_5A2F28
SUB             R6, R0, #0x174
LDR             R0, =off_6C3340
LDR             R1, =0x4020
ADD             R4, R6, #0x190
STR             R0, [R6,#0x190]
STR             R1, [R6,#0x194]
LDR             R1, =0xFF0100
STR             R1, [R6,#0x198]
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0xC
LDR             R0, [R0,#8]
STR             R0, [R4,#0x14]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x18
LDR             R0, [R0,#8]
STR             R0, [R4,#0x20]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x24 ; '$'
LDR             R0, [R0,#8]
STR             R0, [R4,#0x2C]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x30 ; '0'
LDR             R0, [R0,#8]
STR             R0, [R4,#0x38]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x3C ; '<'
LDR             R0, [R0,#8]
STR             R0, [R4,#0x44]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x48 ; 'H'
LDR             R0, [R0,#8]
VLDR            S0, =0.25
VLDR            S19, =1.0
STR             R0, [R4,#0x50]
STR             R7, [R4,#0x54]
STM             R3, {R1,R2}
MOV             R0, #7
STR             R7, [R4,#0x58]
STR             R5, [R4,#0x60]
STR             R7, [R4,#0x5C]
VSTR            S18, [R4,#0x64]
VSTR            S0, [R4,#0x68]
STR             R0, [R4,#0x94]
VSTR            S19, [R4,#0x7C]
VSTR            S19, [R4,#0x80]
VSTR            S19, [R4,#0x84]
VSTR            S18, [R4,#0x6C]
VSTR            S18, [R4,#0x70]
ADD             R1, R4, #0x74 ; 't'
ADD             R5, R4, #0x6C ; 'l'
VSTM            R1, {S18-S19}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R5, #0x1C
LDR             R0, [R0,#8]
STR             R0, [R5,#0x24]
STM             R3, {R1,R2}
MOV             R1, #0xFFFFFFFF
LDR             R0, [R5,#0x28]
REV             R1, R1
ORR             R0, R0, #0x38 ; '8'
STR             R0, [R5,#0x28]
ADD             R5, R4, #0xCC
STR             R1, [R4,#0xC8]
MOV             R1, #0x9C
MOV             R0, R5
BL              sub_2FFE8C
STR             R5, [R5,#0xA0]
ADD             R0, R5, #0x9C
STR             R5, [R5,#0x9C]
STR             R0, [R5,#0xA8]
MOV             R0, #0xFFFFFFFF
STR             R5, [R5,#0xA4]
STR             R0, [R4,#0x17C]
STR             R7, [R4,#0x178]
LDR             R2, =unk_6E3300
STR             R7, [R4,#0x180]
STR             R7, [R4,#0x184]
STR             R7, [R4,#0x188]
STR             R7, [R4,#0x18C]
LDM             R2, {R3,R4,R12}
ADD             R5, R6, #0x320
ADD             R1, R6, #0x300
MOV             R0, #8
STM             R5, {R3,R4,R12}
ADD             R3, R2, #0xC
LDR             R2, [R2,#(dword_6E3314 - 0x6E3300)]
LDM             R3, {R3,R12}
STR             R2, [R6,#0x334]
ADD             R2, R6, #0x32C
STM             R2, {R3,R12}
STRH            R0, [R1,#0x38]
STRH            R0, [R1,#0x3A]
MOV             R1, #2
MOV             R0, R6
BL              sub_14C450
MOV             R2, #1
MOV             R1, R2
MOV             R0, R6
BL              sub_14B798
ADD             R4, R6, #0x100
MOV             R0, R4
BL              sub_5A26D0
ADD             R0, R6, #0x32C
ADD             R3, R4, #0x20 ; ' '
LDM             R0, {R0-R2}
STR             R0, [R4,#0x1C]
ADD             R4, R4, #4
STM             R3, {R1,R2}
ADD             R3, R6, #0x24 ; '$'
STM             R4, {R0-R2}
ADD             R0, R6, #0x32C
ADD             R4, R6, #0x158
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
MOV             R0, #0xFFFFFF00
REV             R5, R0
MOV             R0, R4
BL              sub_4E63E0
LDR             R0, =off_6CE970
STR             R5, [R4,#4]
STR             R5, [R4]
STR             R5, [R6,#0x9C]
LDR             R0, [R0]
ADD             R5, R6, #0x190
MOV             R11, #1
ADD             R8, R0, #8
MOV             R4, #6
MOV             R0, R5
BL              sub_5B83E4
MOV             R3, #0
STR             R4, [R5,#0x5C]
LDR             R0, =0x1088
MOV             R4, #0xC
MOV             R2, R3
MOV             R1, R8
BL              sub_1143B4
CMP             R0, #0
BEQ             loc_2A3CD8
ADD             R0, R0, #8
SUB             R2, R0, #8
MOV             R1, #0x160
STM             R2, {R1,R4}
MOV             R2, R1
LDR             R1, =sub_5B856C
MOV             R3, R4
BLX             sub_1002F4
LDR             R1, [R5,#0x5C]
LDR             R2, [R5,#0x54]
MOV             R1, R1,LSL#1
CMP             R2, #0
STRD            R0, R1, [R5,#0x54]
BEQ             loc_2A3CFC
LDR             R1, =dword_593390
MOV             R0, R2
BLX             sub_3016C8
LDR             R0, [R5,#0x58]
LDR             R4, [R5,#0x54]
ADD             R1, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#3
ADD             R0, R4, R0,LSL#5
CMP             R0, R4
VMOVNE.F32      S16, S19
VMOVNE.F32      S17, S18
BEQ             loc_2A3E20
NOP
BL              sub_464168
LDM             R0, {R1-R3,R7-R10,R12}
ADD             LR, R4, #0x20 ; ' '
STM             LR, {R1-R3,R7-R10,R12}
ADD             R1, R0, #0x20 ; ' '
ADD             R8, R4, #0x40 ; '@'
ADD             R7, R4, #0x104
LDM             R1, {R1-R3}
LDR             R0, [R0,#0x2C]
STR             R0, [R4,#0x4C]
STM             R8, {R1-R3}
ADD             R2, R4, #0x12C
LDR             R3, [R4,#0x12C]
MOV             R0, R2
MOV             R1, R0
MOV             R12, R3,LSL#31
ORR             R3, R3, R12,LSR#28
AND             R2, R3, #2
STR             R3, [R4,#0x12C]
ORR             R2, R3, R2,LSL#3
STR             R2, [R0]
AND             R0, R2, #4
ORR             R0, R2, R0,LSL#3
STR             R0, [R1]
VSTR            S16, [R4,#0x114]
VSTR            S16, [R4,#0x118]
VSTR            S16, [R4,#0x11C]
VSTR            S17, [R7]
VSTR            S17, [R7,#4]
VSTR            S17, [R7,#8]
VSTR            S16, [R7,#0xC]
BL              sub_4635D8
LDR             R2, [R0]
LDR             R1, [R0,#4]
LDR             R0, [R0,#8]
STR             R2, [R7,#0x1C]!
ADD             R4, R4, #0x160
STR             R1, [R7,#4]
STR             R0, [R7,#8]
LDR             R0, [R5,#0x58]
ADD             R2, R0, R0,LSL#1
ADD             R0, R2, R0,LSL#3
B               loc_2A3E08
DCD off_6B3ED0
DCD off_6B7BFC
DCD sub_5A39D0
DCFS 0.0
DCD off_6C3340
DCD 0x4020
DCD 0xFF0100
DCFS 0.25
DCFS 1.0
DCD unk_6E3300
DCD off_6CE970
DCD 0x1088
DCD sub_5B856C
DCD dword_593390
LDR             R1, [R5,#0x54]
ADD             R0, R1, R0,LSL#5
CMP             R0, R4
BNE             loc_2A3D20
CMP             R11, #0
BEQ             loc_2A3E30
LDR             R1, [R5,#4]
ADD             R0, R5, #4
ORR             R1, R1, #0x108
B               loc_2A3E3C
LDR             R1, [R5,#4]
ADD             R0, R5, #4
BIC             R1, R1, #0x108
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
BL              sub_5B7B9C
LDR             R2, [R5,#4]
MOV             R0, R5
MOV             R11, #0
BIC             R2, R2, #0x600
STR             R2, [R5,#4]
BL              sub_5B7B9C
LDR             R0, [R5,#4]
BIC             R0, R0, #0x1800
STR             R0, [R5,#4]
LDR             R1, [R5,#8]
MOV             R1, R1,LSL#16
MOVS            R1, R1,LSR#24
BEQ             loc_2A3ED0
AND             R2, R0, #0x1800
CMP             R2, #0x800
TSTNE           R0, #8
MOVNE           R1, #1
BNE             loc_2A3ED4
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
LDR             R0, [R5,#4]
ORR             R0, R0, #4
STR             R0, [R5,#4]
LDR             R1, [R6,#0x198]
ADD             R0, R6, #0x190
MOV             R2, R1,LSL#16
MOV             R2, R2,LSR#24
CMP             R2, #1
BNE             loc_2A3F2C
MOV             R2, R1,LSL#8
MOV             R2, R2,LSR#24
CMP             R2, #0xFF
BEQ             loc_2A3F74
BIC             R1, R1, #0xFF0000
BIC             R1, R1, #0xFF00
ORR             R1, R1, #0xFF0000
ORR             R1, R1, #0x100
STR             R1, [R0,#8]
MOV             R1, R1,LSL#16
MOV             R2, #1
MOVS            R1, R1,LSR#24
BEQ             loc_2A3F68
LDR             R1, [R0,#4]
MOV             R3, R1,LSL#19
CMP             R2, R3,LSR#30
TSTNE           R1, #8
MOVNE           R1, #1
BNE             loc_2A3F6C
MOV             R1, #0
NOP
BL              sub_5B7D3C
LDR             R0, =off_6CE970
LDR             R1, =0xC00B
ADD             R4, R6, #0x190
LDR             R0, [R0]
BL              sub_52FACC
MOV             R8, R0
LDR             R0, [R4,#0x58]
LDR             R5, [R4,#0x54]
MOV             R9, #0
ADD             R1, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#3
ADD             R0, R5, R0,LSL#5
CMP             R0, R5
BEQ             loc_2A3FD0
MOV             R0, R5
BL              sub_592EDC
LDRD            R0, R1, [R4,#0x54]
ADD             R5, R5, #0x160
ADD             R2, R1, R1,LSL#1
ADD             R1, R2, R1,LSL#3
ADD             R0, R0, R1,LSL#5
CMP             R0, R5
BNE             loc_2A3FAC
LDR             R1, [R4,#4]
CMP             R8, #0
BIC             R1, R1, #2
STR             R1, [R4,#4]
BEQ             loc_2A40A8
LDR             R0, [R4,#0x58]
LDR             R5, [R4,#0x54]
MOV             R7, #1
ADD             R1, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#3
ADD             R0, R5, R0,LSL#5
CMP             R0, R5
BEQ             loc_2A4084
MOV             R1, #1
MOV             R0, R8
BL              sub_5F0474
MOV             R10, R0
MOV             R0, R8
ADD             R0, R0, #0xA0
STR             R0, [SP,#0x48+var_3C]
MOV             R1, #0
MOV             R0, R8
BL              sub_5F0474
MOV             R2, #0x100
STR             R2, [SP,#0x48+var_40]
MOV             R1, R0
STMEA           SP, {R9,R11}
LDR             R2, [SP,#0x48+var_3C]
MOV             R3, R10
MOV             R0, R5
BL              sub_1137FC
LDR             R0, [R5,#4]
LDR             R1, [R4,#0x58]
LDR             R2, [R4,#0x54]
CMP             R0, #0
MOVNE           R0, #1
AND             R7, R7, R0
ADD             R0, R1, R1,LSL#1
ADD             R0, R0, R1,LSL#3
ADD             R5, R5, #0x160
ADD             R0, R2, R0,LSL#5
CMP             R0, R5
BNE             loc_2A4004
CMP             R7, #0
BEQ             loc_2A4134
LDR             R0, [R4,#4]
CMP             R7, #0
ORR             R0, R0, #2
STR             R0, [R4,#4]
BEQ             loc_2A40A8
AND             R0, R0, #0x80
MOV             R1, R0,LSR#7
MOV             R0, R4
BL              sub_5B7D3C
LDR             R0, [R4,#8]
BIC             R0, R0, #0xFF
ORR             R0, R0, R9
STR             R0, [R4,#8]
LDR             R1, [R6,#0x194]
ADD             R0, R6, #0x190
BIC             R1, R1, #0x600
STR             R1, [R6,#0x194]
BL              sub_5B7B9C
ADD             R0, R6, #0x1E4
MOV             R2, #1
LDM             R0, {R0,R3}
ADD             R1, R6, #0x190
ADD             R12, R3, R3,LSL#1
ADD             R3, R12, R3,LSL#3
ADD             R3, R0, R3,LSL#5
CMP             R3, R0
MOVNE           R3, R0
BEQ             loc_2A4144
MOV             R12, #2
ORR             R12, R12, #1
STRB            R12, [R3,#0x6F]
LDR             R3, [R1,#0x58]
LDR             R12, [R1,#0x54]
ADD             R0, R0, #0x160
ADD             R4, R3, R3,LSL#1
ADD             R3, R4, R3,LSL#3
ADD             R3, R12, R3,LSL#5
CMP             R3, R0
BEQ             loc_2A4144
CMP             R2, #0
MOV             R3, R0
MOVEQ           R12, #0
BEQ             loc_2A40F8
B               loc_2A40F4
LDR             R1, [R4,#4]
BIC             R1, R1, #2
STR             R1, [R4,#4]
B               loc_2A40A8
LDR             R0, [R1,#4]
MOV             R7, #1
ORR             R0, R0, #0x10
STR             R0, [R1,#4]
LDR             R1, [R6,#0x194]
ADD             R0, R6, #0x190
BIC             R1, R1, #0x1800
ORR             R1, R1, #0x800
STR             R1, [R6,#0x194]
LDR             R1, [R6,#0x198]
MOV             R1, R1,LSL#16
MOVS            R1, R1,LSR#24
BEQ             loc_2A4190
LDR             R1, [R0,#4]
MOV             R2, R1,LSL#19
CMP             R7, R2,LSR#30
TSTNE           R1, #8
MOVNE           R1, #1
BNE             loc_2A4194
MOV             R1, #0
LDR             R2, [R0,#4]
TST             R2, #0x80
EORNE           R2, R1, #1
MOVEQ           R2, R1
CMP             R2, #0
BLNE            sub_5B7D3C
ADD             R0, R6, #0x190
NOP
BL              sub_5B7B9C
VLDR            S0, =0.3
STR             R7, [R6,#0x1F0]
VSTR            S0, [R6,#0x1F8]
VLDR            S1, =6.0
VLDR            S0, =9.0
VSTR            S18, [R6,#0x1B0]
VSTR            S1, [R6,#0x19C]
VSTR            S0, [R6,#0x1A0]
VLDR            S2, =-6.0
VLDR            S3, =-11.0
VSTR            S18, [R6,#0x1A4]
ADD             R1, R6, #0x1A8
ADD             R0, R6, #0x190
VSTM            R1, {S2-S3}
BL              sub_5B7B9C
VLDR            S0, =2.0
VSTR            S18, [R6,#0x1C8]
VSTR            S19, [R6,#0x1B4]
VSTR            S0, [R6,#0x1B8]
VLDR            S1, =-1.0
VLDR            S2, =-2.0
VSTR            S18, [R6,#0x1BC]
ADD             R1, R6, #0x1C0
ADD             R0, R6, #0x190
VSTM            R1, {S1-S2}
BL              sub_5B7B9C
LDR             R0, =off_6CE970
ADD             R4, R6, #0x190
MOV             R1, R7
LDR             R0, [R0]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9D000
LDR             R5, [R0,#(loc_19D254 - 0x19D000)]
ADD             R0, R6, #0x2F8
STR             R5, [R6,#0x308]
VSTR            S18, [R6,#0x1F4]
BL              sub_62D444
LDR             R1, [R4,#0x168]
MOV             R2, R5
MOV             R0, R4
BL              sub_5B71F4
MOV             R0, R4
NOP
BL              sub_5B7B9C
LDR             R1, [R6,#0x198]
MOV             R0, R6
BIC             R1, R1, #0xFF
STR             R1, [R6,#0x198]
ADD             SP, SP, #0x14
VPOP            {D8-D9}
POP             {R4-R11,PC}
