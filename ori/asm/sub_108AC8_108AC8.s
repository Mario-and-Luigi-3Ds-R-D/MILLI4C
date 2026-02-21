PUSH            {R4-R11,LR}
MOV             R6, R0
SUB             SP, SP, #0xC
MOV             R2, #8
MOV             R1, #0
LDR             R0, =dword_6CECC4
BL              sub_110BE4
LDR             R11, =off_6CECBC; "data:/ML4_001.sav" ...
MOV             R7, #0
SUB             R10, R11, #0xC
SXTH            R4, R7
LDR             R2, [R10]
ADD             R8, R6, R4,LSL#5
LDR             R1, [R11,R4,LSL#2]
ADD             R0, R8, #0x20 ; ' '
STR             R2, [R8,#0x3C]
BL              sub_116F48
CMP             R0, #0
NOP
BEQ             loc_108C38
LDR             R1, =0x11B
MOV             R0, #0x18
SMULBB          R2, R4, R1
LDR             R1, =unk_6E3800
ADD             R9, R1, R2,LSL#4
AND             R2, R0, R4,LSL#3
ADD             R0, R9, #0x1000
LDRB            R1, [R0,#0x1A4]
BIC             R1, R1, #0x18
ORR             R1, R1, #4
ORR             R1, R1, R2
STRB            R1, [R0,#0x1A4]
MOV             R2, #0xC
MOV             R1, #0
MOV             R0, R9
BL              sub_110BE4
MOV             R4, #0
LDR             R0, [R10]
ADD             R1, R6, R4,LSL#5
ADD             R1, R1, #0x80
LDR             R0, [R0,#8]
LDR             R2, [R0]
LDR             R2, [R2,#0x14]
BLX             R2
CMP             R0, #0
BEQ             loc_108BB8
LDR             R5, [R10]
LDR             R0, [R5,#8]
LDR             R1, [R0]
LDR             R1, [R1,#0x24]
BLX             R1
CMP             R0, #0
BEQ             loc_108BB8
LDR             R0, [R5,#8]
ADD             R1, R5, #0xC
LDR             R2, [R0]
LDR             R2, [R2]
BLX             R2
ADD             R0, R5, #0x14
BL              sub_120E7C
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_108B5C
LDR             R2, =0x11B0
MOV             R1, R9
ADD             R0, R6, #0x138
BL              sub_1103A4
MOV             R0, #0
STR             R0, [SP,#0x30+var_30]; float
STR             R0, [SP,#0x30+var_2C]; int
LDR             R3, =0x179B0; int
ADD             R1, R8, #0x80; int
ADD             R0, R8, #0x20 ; ' '; int
ADD             R2, R6, #0x138; int
BL              sub_10D458
ADD             R7, R7, #1
CMP             R7, #2
BLT             loc_108AF0
MOV             R0, R6
BL              sub_112020
CMP             R0, #0
MOVEQ           R4, #0
BEQ             loc_108C5C
LDR             R2, =byte_6CF939
MOV             R0, #1
MOV             R1, #3
STRB            R0, [R2]
LDR             R2, =byte_6CF93A
STRB            R0, [R2]
STR             R1, [R10,#(dword_6CECB4 - 0x6CECB0)]
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
SUBS            R4, R7, #1
BMI             loc_108C74
ADD             R0, R6, R4,LSL#5
ADD             R0, R0, #0x20 ; ' '
BL              sub_10D420
SUBS            R4, R4, #1
NOP
BPL             loc_108C40
B               loc_108C74
ADD             R0, R6, R4,LSL#5
ADD             R0, R0, #0x20 ; ' '
BL              sub_10D420
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_108C5C
ADD             SP, SP, #0xC
MOV             R0, #0
POP             {R4-R11,PC}
