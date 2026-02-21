PUSH            {R4-R10,LR}
LDR             R7, =off_6D48F8
LDR             R1, =0x868
VPUSH           {D8}
STR             R0, [R7]
BL              sub_2FFE8C
LDR             R0, [R7]
MOV             R4, #0
MOV             R6, #4
MOV             R5, #1
STRB            R4, [R0,#0x18]
STRB            R4, [R0,#0x19]
STR             R6, [R0,#0x10]
STR             R6, [R0,#0x14]
STRB            R5, [R0,#0x1A]
STRB            R4, [R0,#0x1B]
STR             R4, [R0,#0x1C]
STRB            R4, [R0,#0x30]
STR             R4, [R0,#0x20]
STR             R4, [R0,#0x24]
LDR             R2, =0x405
STR             R4, [R0,#0x28]
ADD             R3, R0, #0x34 ; '4'
STR             R4, [R0,#0x2C]
ADD             R1, R5, #0x900
STRB            R4, [R0,#0x3C]
STM             R3, {R1,R2}
ADD             R1, R0, #0x4C ; 'L'
VLDR            S16, =0.0
VLDR            S17, =1.0
VSTR            S16, [R0,#0x40]
VSTR            S16, [R0,#0x44]
STRB            R4, [R0,#0x54]
VSTM            R1, {S16-S17}
MOV             R1, #0x80
VSTR            S16, [R0,#0x48]
STR             R4, [R0,#0x58]
STR             R4, [R0,#0x5C]
STR             R4, [R0,#0x68]
STRB            R4, [R0,#0x104]
STRB            R4, [R0,#0x107]
STR             R4, [R0,#0xF8]
STR             R4, [R0,#0x60]
STR             R4, [R0,#0x6C]
STRB            R4, [R0,#0x105]
STRB            R4, [R0,#0x108]
STR             R4, [R0,#0xFC]
STR             R4, [R0,#0x64]
STR             R4, [R0,#0x70]
STRB            R4, [R0,#0x106]
STRB            R4, [R0,#0x109]
STR             R4, [R0,#0x100]
ADD             R0, R0, #0x74 ; 't'
BL              sub_2FFE8C
LDR             R0, [R7]
MOV             R1, #0
MOV             R2, #0x10
STR             R4, [R0,#0xF4]
ADD             R3, R0, R1,LSL#4
ADD             R7, R3, #0x2A0
SUBS            R2, R2, #1
VSTM            R7, {S16-S17}
ADD             R1, R1, #1
VSTR            S16, [R3,#0x29C]
VSTR            S16, [R3,#0x298]
BNE             loc_1156E8
ADD             R3, R0, R2,LSL#4
VLDR            S0, [R3,#0x298]
VMOV            R1, S0
BICS            R12, R1, #0x80000000
BEQ             loc_115728
MOV             R12, R1,LSL#1
MOV             R12, R12,LSR#24
SUB             R12, R12, #0x40 ; '@'
MOV             LR, R1,LSL#9
CMP             R12, #0
MOV             LR, LR,LSR#16
MOV             R1, R1,LSR#31
ORRGE           R12, LR, R12,LSL#16
ORRGE           R12, R12, R1,LSL#23
VLDR            S0, [R3,#0x29C]
MOVLT           R12, R1,LSL#23
VMOV            R1, S0
BICS            LR, R1, #0x80000000
BEQ             loc_115760
MOV             LR, R1,LSL#1
MOV             LR, LR,LSR#24
SUB             LR, LR, #0x40 ; '@'
MOV             R7, R1,LSL#9
CMP             LR, #0
MOV             R7, R7,LSR#16
MOV             R1, R1,LSR#31
ORRGE           LR, R7, LR,LSL#16
ORRGE           LR, LR, R1,LSL#23
VLDR            S0, [R3,#0x2A0]
MOVLT           LR, R1,LSL#23
VMOV            R1, S0
BICS            R7, R1, #0x80000000
BEQ             loc_115798
MOV             R7, R1,LSL#1
MOV             R7, R7,LSR#24
SUB             R7, R7, #0x40 ; '@'
MOV             R8, R1,LSL#9
CMP             R7, #0
MOV             R8, R8,LSR#16
MOV             R1, R1,LSR#31
ORRGE           R7, R8, R7,LSL#16
ORRGE           R7, R7, R1,LSL#23
VLDR            S0, [R3,#0x2A4]
MOVLT           R7, R1,LSL#23
VMOV            R1, S0
BICS            R3, R1, #0x80000000
BEQ             loc_1157D0
MOV             R3, R1,LSL#1
MOV             R3, R3,LSR#24
SUB             R3, R3, #0x40 ; '@'
MOV             R8, R1,LSL#9
CMP             R3, #0
MOV             R8, R8,LSR#16
ORRGE           R3, R8, R3,LSL#16
MOV             R1, R1,LSR#31
MOV             R8, LR,LSL#8
ORRGE           R1, R3, R1,LSL#23
MOVLT           R1, R1,LSL#23
MOV             R9, R8,LSR#16
MOV             R3, R7,LSR#16
ADD             R8, R2, R2,LSL#1
ORR             R3, R3, R1,LSL#8
ADD             R1, R0, R8,LSL#2
ADD             R1, R1, #0x398
ORR             R7, R9, R7,LSL#16
ORR             R12, R12, LR,LSL#24
ADD             R2, R2, #1
STM             R1, {R3,R7,R12}
CMP             R2, #0x10
BLT             loc_115708
LDR             R12, =0x1406
MOV             R1, #0
MOV             R3, #0x10
ADD             R2, R1, R1,LSL#1
SUBS            R3, R3, #1
ADD             R2, R0, R2,LSL#3
ADD             R1, R1, #1
STRB            R4, [R2,#0x46D]
STR             R4, [R2,#0x468]
ADD             R2, R2, #0x400
ADD             R2, R2, #0x5C ; '\'
STM             R2, {R6,R12}
BNE             loc_11582C
STR             R4, [R0,#0x5D8]
STR             R4, [R0,#0x5DC]
STR             R4, [R0,#0x5E0]
STRB            R4, [R0,#0x648]
STR             R4, [R0,#0x5E4]
LDR             LR, =0x207
STR             R4, [R0,#0x5E8]
STR             R4, [R0,#0x5EC]
STR             R4, [R0,#0x5F0]
ADD             R1, R0, #0x400
STRB            R4, [R0,#0x649]
STR             LR, [R0,#0x5F4]
VSTR            S16, [R1,#0x1F8]
STRB            R4, [R0,#0x64A]
MOV             R2, #0x1E00
STR             LR, [R0,#0x5FC]
STR             R4, [R0,#0x600]
MOV             R3, #0xFFFFFFFF
STR             R2, [R0,#0x608]
STR             R3, [R0,#0x604]
STR             R2, [R0,#0x60C]
BIC             R12, LR, R2,ASR#8
STR             R2, [R0,#0x610]
STRB            R4, [R0,#0x64B]
STR             R12, [R0,#0x614]
STRB            R4, [R0,#0x64F]
STR             R12, [R0,#0x650]
STRB            R4, [R0,#0x64C]
STR             R5, [R0,#0x618]
STR             R5, [R0,#0x61C]
LDR             LR, =0x8006
STR             R4, [R0,#0x620]
STR             R4, [R0,#0x624]
LDR             R2, =0x1503
LDR             R12, =0x6030
STRB            R4, [R0,#0x64D]
ADD             R6, R0, #0x640
STR             LR, [R0,#0x628]
STR             LR, [R0,#0x62C]
STM             R6, {R2,R12}
MOV             R2, #0xFFFFFF
VSTR            S16, [R1,#0x23C]
VSTR            S16, [R1,#0x238]
VSTR            S16, [R1,#0x234]
VSTR            S16, [R1,#0x230]
STRB            R5, [R0,#0x658]
STR             R3, [R0,#0x65C]
STR             R4, [R0,#0x678]
VSTR            S17, [R1,#0x270]
STR             R2, [R0,#0x67C]
MOV             R2, R2,ASR#8
STR             R2, [R0,#0x680]
MOV             R3, #0xFFFFFF
STR             R3, [R0,#0x674]
STRB            R5, [R0,#0x657]
STRB            R5, [R0,#0x656]
STRB            R5, [R0,#0x655]
STRB            R5, [R0,#0x654]
VSTR            S16, [R1,#0x26C]
VSTR            S16, [R1,#0x268]
VSTR            S16, [R1,#0x264]
VSTR            S16, [R1,#0x260]
STR             R4, [R0,#0x684]
STRB            R4, [R0,#0x690]
STRB            R4, [R0,#0x691]
STRB            R4, [R0,#0x692]
STRB            R4, [R0,#0x693]
STR             R4, [R0,#0x698]
MOV             R2, #3
STR             R4, [R0,#0x69C]
STR             R2, [R0,#0x68C]
STR             R4, [R0,#0x688]
STR             R4, [R0,#0x6A0]
STR             R4, [R0,#0x6E8]
STR             R4, [R0,#0x6E4]
STR             R4, [R1,#0x32C]
STR             R4, [R1,#0x330]
STR             R4, [R1,#0x334]
STR             R4, [R1,#0x338]
STR             R4, [R1,#0x33C]
STR             R4, [R1,#0x340]
STR             R4, [R1,#0x344]
STR             R4, [R1,#0x348]
STR             R4, [R1,#0x34C]
STR             R4, [R1,#0x350]
STR             R4, [R1,#0x354]
STR             R4, [R1,#0x358]
STR             R4, [R1,#0x35C]
STR             R4, [R1,#0x360]
B               loc_1159E4
DCD off_6D48F8
DCD 0x868
DCFS 0.0
DCFS 1.0
DCD 0x405
DCD 0x1406
DCD 0x207
DCD 0x8006
DCD 0x1503
DCD 0x6030
STR             R4, [R1,#0x364]
STR             R4, [R1,#0x368]
STR             R4, [R1,#0x2A4]
STR             R4, [R1,#0x2A8]
STR             R4, [R1,#0x2AC]
STR             R4, [R1,#0x2B0]
STR             R4, [R1,#0x2B4]
STR             R4, [R1,#0x2B8]
STR             R4, [R1,#0x2BC]
STR             R4, [R1,#0x2C0]
STR             R4, [R1,#0x2C4]
STR             R4, [R1,#0x2C8]
STR             R4, [R1,#0x2CC]
STR             R4, [R1,#0x2D0]
STR             R4, [R1,#0x2D4]
STR             R4, [R1,#0x2D8]
STR             R4, [R1,#0x2DC]
STR             R4, [R1,#0x2E0]
STR             R4, [R1,#0x2EC]
STR             R4, [R1,#0x2F0]
STR             R4, [R1,#0x2F4]
STR             R4, [R1,#0x2F8]
STR             R4, [R1,#0x2FC]
STR             R4, [R1,#0x300]
STR             R4, [R1,#0x304]
STR             R4, [R1,#0x308]
STR             R4, [R1,#0x30C]
STR             R4, [R1,#0x310]
STR             R4, [R1,#0x314]
STR             R4, [R1,#0x318]
STR             R4, [R1,#0x31C]
STR             R4, [R1,#0x320]
STR             R4, [R1,#0x324]
STR             R4, [R1,#0x328]
STR             R4, [R0,#0x770]
STRB            R4, [R0,#0x81C]
STR             R4, [R0,#0x820]
STR             R4, [R0,#0x824]!
MOV             R2, #0xFF
MOV             R1, #0x40 ; '@'
ADD             R0, R0, #4
BL              sub_116B10
VPOP            {D8}
MOV             R0, #0
POP             {R4-R10,PC}
