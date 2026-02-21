PUSH            {R3-R11,LR}
BL              sub_10F508
CMP             R0, #0
BEQ             loc_10A13C
LDR             R4, =byte_6CF938
MOV             R11, #1
LDRSB           R1, [R4,#(byte_6CF93A - 0x6CF938)]
LDR             R0, [R4,#(dword_6CF940 - 0x6CF938)]
ORRS            R1, R1, R0
BEQ             loc_109F5C
CMP             R0, #0
BNE             loc_109F4C
SVC             0x28 ; '('
LDR             R2, =0xBAD34AEE
MOV             R3, #3
MOV             R12, #0
MOV             R5, R1,ASR#31
UMULL           R7, R6, R0, R2
UMULL           R7, R8, R1, R3
ADDS            R4, R12, R6
ADC             R6, R7, R12
UMULL           LR, R7, R1, R2
MLA             R2, R5, R2, R7
MLA             R1, R1, R12, R2
LDR             R12, =0xE353F7CF
UMLAL           LR, R1, R3, R0
MOV             R3, #0
ADDS            R0, LR, R4
ADC             R1, R1, R6
UMULL           R8, R7, R0, R12
UMULL           R8, R10, R1, R12
MLA             R7, R3, R12, R7
MOV             R2, R1,ASR#31
MOV             R4, R3
MLA             R12, R2, R12, R10
MLA             R7, R0, R4, R7
LDR             LR, =0x20C49BA5
MLA             R4, R1, R3, R12
ADDS            R12, R8, R7
UMULL           R6, R7, R0, LR
ADC             R4, R4, R3
MOV             R9, R3
MOV             R5, R3
MLA             R3, R3, LR, R7
ADDS            R12, R12, R6
MLA             R0, R0, R9, R3
UMULL           R3, R7, R1, LR
ADC             R0, R0, R5
MLA             R2, R2, LR, R7
MOV             R12, R0,ASR#31
MLA             LR, R1, R9, R2
ADDS            R0, R0, R4
ADC             R2, R12, R4,ASR#31
ADDS            R0, R0, R3
ADC             R2, R2, LR
MOV             R3, R1,LSR#31
MOV             LR, R0,LSR#7
MOV             R1, R2,ASR#7
ORR             R0, LR, R2,LSL#25
ADDS            R2, R3, R0
LDR             R0, =byte_6CF938
ADC             R1, R1, #0
STR             R11, [R0,#(dword_6CF940 - 0x6CF938)]!
STR             R2, [R0,#(dword_6CF958 - 0x6CF940)]
STR             R1, [R0,#(dword_6CF95C - 0x6CF940)]
NOP
BL              sub_11B19C
MOV             R0, #1
POP             {R3-R11,PC}
LDR             R0, =dword_6CF944
BL              sub_120F58
LDR             R0, =dword_6EB9F0
NOP
BL              sub_10DCDC
CMP             R0, #0
NOP
BEQ             loc_10A13C
LDR             R0, [R4,#(off_6CF93C - 0x6CF938)]
LDR             R5, =0x401
CMP             R0, #0
BEQ             loc_109FA0
LDR             R0, [R4,#(off_6CF93C - 0x6CF938)]
BLX             R0
CMP             R0, #0
BNE             loc_109F8C
B               loc_10A000
LDRB            R0, [R4,#(byte_6CF93B - 0x6CF938)]
CMP             R0, #0
BEQ             loc_10A000
LDR             R0, =dword_6E9820
MOV             R2, #0x4500
MOV             R1, #0x400
BL              sub_1102FC
LDR             R0, =dword_6E9820
MOV             R1, #0
BL              sub_110290
LDR             R0, =dword_6E9820
MOV             R2, #0x4500
MOV             R1, #0x410
BL              sub_1102FC
LDR             R0, =dword_6E9820
MOV             R1, #0
BL              sub_110290
LDR             R0, =dword_6E9820
MOV             R2, #0x4500
MOV             R1, R5
BL              sub_1102FC
LDR             R0, =dword_6E9820
MOV             R1, #0
BL              sub_110290
NOP
BL              sub_112D4C
LDR             R0, =unk_6E8CD0
LDRB            R0, [R0,#(byte_6E8E74 - 0x6E8CD0)]
ANDS            R4, R0, #1
LDRNE           R0, =dword_6E7CD0
BLNE            sub_1123B8
MOV             R0, #1
NOP
BL              sub_10F284
LDR             R0, =dword_6E9820
LDRB            R0, [R0,#(byte_6E99B4 - 0x6E9820)]
CMP             R0, #0
BNE             loc_10A0C0
MOV             R2, #0
MOV             R0, SP
REV             R1, R2
STR             R1, [SP,#0x28+var_28]
BL              sub_11027C
LDR             R0, =dword_6E9820
MOV             R2, #0x4500
MOV             R1, #0x400
BL              sub_1102FC
LDR             R0, =dword_6E9820
MOV             R1, #0
BL              sub_110290
LDR             R0, =dword_6E9820
MOV             R2, #0x4500
MOV             R1, #0x410
BL              sub_1102FC
LDR             R0, =dword_6E9820
MOV             R1, #0
BL              sub_110290
LDR             R0, =dword_6E9820
MOV             R2, #0x4500
MOV             R1, R5
BL              sub_1102FC
LDR             R0, =dword_6E9820
MOV             R1, #0
BL              sub_110290
LDR             R0, =0x402
NOP
BL              sub_11667C
NOP
NOP
BL              sub_10F224
LDR             R0, =dword_6E9820
STRB            R11, [R0,#(byte_6E99B4 - 0x6E9820)]
NOP
BL              sub_10C984
NOP
NOP
BL              sub_10F3E8
LDR             R0, =dword_6EB9F0
NOP
BL              sub_1327BC
LDR             R0, =dword_6CF944
NOP
BL              sub_118998
CMP             R4, #0
LDRNE           R0, =dword_6E7CD0
BLNE            sub_112494
NOP
NOP
BL              sub_112D1C
NOP
NOP
BL              sub_10F80C
CMP             R0, #0
NOP
BNE             loc_10A12C
BL              sub_10F3D8
CMP             R0, #0
NOP
BEQ             loc_10A134
MOV             R0, #0
POP             {R3-R11,PC}
MOV             R0, #1
BL              sub_10F264
MOV             R0, #1
POP             {R3-R11,PC}
