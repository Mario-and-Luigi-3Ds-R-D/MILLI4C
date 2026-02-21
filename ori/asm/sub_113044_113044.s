PUSH            {R4-R10,LR}
ADD             R6, R0, #0x7000
MOV             R8, #0
MOV             R5, R0
MOV             R4, R8
VPUSH           {D8}
SUB             SP, SP, #8
STRH            R8, [R6,#0x20]
ADD             R0, R5, R4,LSL#2
ADD             R0, R0, #0x7000
MOV             R2, #0x1000
STR             R8, [R0,#0x220]
ADD             R0, R5, R4,LSL#12
ADD             R0, R0, #0x20 ; ' '
MOV             R1, #0
BL              sub_12B588
ADD             R4, R4, #1
CMP             R4, #7
BLT             loc_113064
LDR             R0, =dword_6FB418
BL              sub_118AE8
LDR             R7, =byte_6D23B8
MOV             R10, #1
LDRB            R0, [R7]
CMP             R0, #0
BNE             loc_1130E8
BL              sub_1192B4
ANDS            R0, R0, #0x80000000
NOP
BMI             loc_1130E8
BL              sub_119380
ANDS            R0, R0, #0x80000000
NOP
BMI             loc_1130E8
BL              sub_11985C
ANDS            R0, R0, #0x80000000
NOP
BMI             loc_1130E8
MOV             R0, #2
BL              sub_119A90
STRB            R10, [R7]
LDR             R4, =unk_6F4160
BL              sub_119A68
MOV             R0, R4
NOP
BL              sub_124A24
VLDR            S16, =1.0
VMOV.F32        S0, S16
BL              sub_119A78
MOV             R0, R10
STR             R10, [R7,#(dword_6D23C4 - 0x6D23B8)]
BL              sub_119ADC
VMOV.F32        S0, S16
NOP
BL              sub_119A84
STR             R8, [R6,#0x2A0]
MOV             R2, #0
MOV             R1, #1
MOV             R0, R5
STR             R8, [R6,#0x26C]
BL              sub_11D398
MOV             R2, #1
MOV             R1, R2
MOV             R0, #0x9200
BL              sub_12477C
MOV             R4, #0
STR             R0, [R7,#(dword_6D23DC - 0x6D23B8)]
LDR             R1, [R7,#(dword_6D23DC - 0x6D23B8)]
ADD             R0, R4, R4,LSL#3
ADD             R0, R0, R4,LSL#6
ADDS            R0, R1, R0,LSL#3
BLNE            sub_124A64
ADD             R4, R4, #1
CMP             R4, #0x40 ; '@'
BLT             loc_113150
LDR             R1, =dword_6D23EC
LDR             R0, [R7,#(dword_6D23DC - 0x6D23B8)]
VLDR            S0, =0.0
ADD             R3, R1, #8
STR             R0, [R1]
ADD             R2, R0, #0x4900
STR             R0, [R3]
STR             R2, [R1,#(off_6D23F0 - 0x6D23EC)]
STR             R2, [R3,#(dword_6D23F8 - 0x6D23F4)]
LDR             R2, =dword_6FB424
MOV             R1, #0
ADD             R0, R1, R1,LSL#3
ADD             R0, R0, R1,LSL#7
ADDS            R0, R2, R0,LSL#2
BEQ             loc_1131D0
STR             R8, [R0]
STR             R8, [R0,#4]
STR             R8, [R0,#8]
VSTR            S0, [R0,#0xC]
VSTR            S16, [R0,#0x10]
MOV             R3, #0x21C
STR             R8, [R0,#0x14]
STR             R8, [R0,#0x18]
STRH            R8, [R3,R0]
ADD             R1, R1, #1
CMP             R1, #8
BLT             loc_11319C
LDR             R2, =dword_6FC544
MOV             R0, #0
ADD             R1, R0, R0,LSL#5
ADDS            R1, R2, R1,LSL#4
BEQ             loc_113200
MOV             R3, #0x208
STR             R8, [R1]
STR             R8, [R1,#4]
STRH            R8, [R3,R1]
ADD             R0, R0, #1
CMP             R0, #0x20 ; ' '
BLT             loc_1131E4
BL              sub_11D0EC
LDRB            R0, [R7]
CMP             R0, #0
BEQ             loc_1133B8
LDR             R0, =dword_6EF0D0
STR             R8, [R7,#(dword_6D23C0 - 0x6D23B8)]
STR             R8, [R0]
STR             R8, [R0,#(dword_6EF0D4 - 0x6EF0D0)]
STR             R8, [R0,#(dword_6EF0D8 - 0x6EF0D0)]
STR             R8, [R0,#(dword_6EF0DC - 0x6EF0D0)]
STR             R8, [R0,#(dword_6EF0E0 - 0x6EF0D0)]
LDR             R0, =dword_6D2410
MOV             R2, #5
LDREX           R12, [R0]
STREX           R3, R8, [R0]
CMP             R3, #0
BNE             loc_113240
ADD             R1, R0, #4
LDREXH          R3, [R1]
SXTH            R3, R8
STREXH          R12, R3, [R1]
CMP             R12, #0
BNE             loc_113254
STRH            R2, [R0,#(word_6D2416 - 0x6D2410)]
LDR             R0, =unk_6F4138
LDR             R1, [R5,#4]
MOV             R2, #0
MOV             R4, R0
AND             R1, R1, #0xFF
STM             R0, {R1,R2}
MOV             R9, #8
LDR             R1, [R5,#4]
AND             R2, R1, #0xFF
MOV             R1, #1
STR             R1, [R4,#(dword_6F4144 - 0x6F4138)]
STR             R2, [R4,#(dword_6F4140 - 0x6F4138)]
LDR             R1, [R5,#4]
AND             R2, R1, #0xFF
MOV             R1, #2
STR             R1, [R4,#(dword_6F414C - 0x6F4138)]
STR             R2, [R4,#(dword_6F4148 - 0x6F4138)]
LDR             R1, [R5,#4]
AND             R2, R1, #0xFF
MOV             R1, #3
STR             R1, [R4,#(dword_6F4154 - 0x6F4138)]
STR             R2, [R4,#(dword_6F4150 - 0x6F4138)]
LDR             R1, [R5,#4]
AND             R2, R1, #0xFF
MOV             R1, #4
STR             R1, [R4,#(dword_6F415C - 0x6F4138)]
STR             R2, [R4,#(dword_6F4158 - 0x6F4138)]
LDR             R0, [R5,#4]
LDR             R5, =unk_6EF110
MOV             R7, R1
CMP             R0, #0
ADD             R6, R5, #0x28 ; '('
BEQ             loc_1133C4
CMP             R0, #1
BEQ             loc_113448
BL              sub_118B68
CMP             R0, #0x14
MOVLT           R0, #0x14
BLLT            sub_1235DC
LDR             R1, =sub_11D70C
MOV             R3, R6
MOV             R2, R4
MOV             R0, R5
STMEA           SP, {R7,R8}
BL              sub_1200C8
ADD             R7, R5, #8
MOV             R0, #1
ADD             R5, R6, #0x1000
ADD             R4, R4, #8
STR             R0, [SP,#0x30+var_2C]
LDR             R1, =sub_11D5CC
MOV             R3, R5
MOV             R2, R4
MOV             R0, R7
STR             R9, [SP,#0x30+var_30]
BL              sub_1200C8
ADD             R6, R7, #8
MOV             R7, R5
ADD             R3, R5, #0x1000
MOV             R0, #9
ADD             R5, R4, #8
STMEA           SP, {R0,R8}
LDR             R1, =sub_11BFAC
MOV             R2, R5
MOV             R0, R6
BL              sub_1200C8
MOV             R0, #0xA
ADD             R4, R7, #0x2000
ADD             R6, R6, #8
ADD             R5, R5, #8
STMEA           SP, {R0,R8}
LDR             R1, =sub_11BC00
MOV             R3, R4
MOV             R2, R5
MOV             R0, R6
BL              sub_1200C8
MOV             R1, #7
STMEA           SP, {R1,R8}
LDR             R1, =sub_11D7C8
ADD             R0, R6, #8
ADD             R3, R4, #0x1000
ADD             R2, R5, #8
BL              sub_1200C8
ADD             SP, SP, #8
VPOP            {D8}
POP             {R4-R10,PC}
LDR             R1, =sub_11D70C
MOV             R3, R6
MOV             R2, R4
MOV             R0, R5
STMEA           SP, {R7,R8}
BL              sub_1200C8
ADD             R7, R5, #8
ADD             R5, R6, #0x1000
ADD             R4, R4, #8
LDR             R1, =sub_11D5CC
MOV             R3, R5
MOV             R2, R4
MOV             R0, R7
STR             R8, [SP,#0x30+var_2C]
STR             R9, [SP,#0x30+var_30]
B               loc_113494
DCD dword_6FB418
DCD byte_6D23B8
DCD unk_6F4160
DCFS 1.0
DCD dword_6D23EC
DCD dword_6FB424
DCFS 0.0
DCD dword_6FC544
DCD dword_6EF0D0
DCD dword_6D2410
DCD unk_6F4138
DCD unk_6EF110
DCD sub_11D70C
DCD sub_11D5CC
DCD sub_11BFAC
DCD sub_11BC00
DCD sub_11D7C8
NOP
BL              sub_118B68
CMP             R0, #0x14
MOVLT           R0, #0x14
BLLT            sub_1235DC
LDR             R1, =sub_11D70C
MOV             R3, R6
MOV             R2, R4
MOV             R0, R5
STMEA           SP, {R7,R10}
BL              sub_1200C8
ADD             R7, R5, #8
ADD             R5, R6, #0x1000
ADD             R4, R4, #8
LDR             R1, =sub_11D5CC
MOV             R3, R5
MOV             R2, R4
MOV             R0, R7
STMEA           SP, {R9,R10}
BL              sub_1200C8
B               loc_11334C
