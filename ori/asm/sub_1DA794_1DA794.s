PUSH            {R4-R9,LR}
MOV             R4, R0
MOV             R1, #1
LDR             R8, =off_6CE970
VPUSH           {D8}
SUB             SP, SP, #0x14
LDR             R0, [R8]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x214
BL              sub_58F5A4
VLDR            S16, =0.0
BL              sub_47FFCC
LDR             R7, =dword_6E2378
CMP             R0, #0
BEQ             loc_1DA7DC
LDRB            R0, [R7,#(byte_6E2385 - 0x6E2378)]
CMP             R0, #0
BEQ             loc_1DAA30
MOV             R1, #3
VMOV.F32        S0, S16
MOV             R0, R4
BL              sub_1DB5F8
LDRB            R0, [R4,#0x53]
MOV             R5, #0
CMP             R0, #0
BLE             loc_1DA818
ADD             R0, R4, R5,LSL#2
LDR             R0, [R0,#0x54]
BL              sub_592584
LDRB            R0, [R4,#0x53]
ADD             R5, R5, #1
CMP             R0, R5
BGT             loc_1DA7FC
LDR             R0, [R4,#0x80]
CMP             R0, #0
ADDEQ           R0, R4, #0x74 ; 't'
BLEQ            sub_214E30
ADD             R0, R4, #0x74 ; 't'
NOP
BL              sub_214B40
LDR             R0, =0x11BC
LDR             R9, =flt_6E34B0
ADD             R5, R4, #0xC00
ADD             R5, R5, #0x1C8
LDRB            R0, [R0,R4]
CMP             R0, #0
BEQ             loc_1DA888
VLDR            S0, [R9,#(flt_6E355C - 0x6E34B0)]
ADD             R2, R9, #0x9C
MOV             R1, #0
VCVT.F32.U32    S0, S0
ADD             R0, R5, #0x1DC
BL              sub_5A2298
MOV             R0, #0xFFFFFF00
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x38+var_38]
VLDR            S0, [R9,#(flt_6E355C - 0x6E34B0)]
ADD             R0, R5, #0x32C
VCVT.F32.U32    S0, S0
BL              sub_4E6784
MOV             R6, #0
ADD             R0, R9, #0x148
STRB            R6, [R5,#0x3F4]
LDM             R0, {R0,R1,R3}
ADD             R5, R4, #0x11C0
MOV             R2, SP
STMEA           SP, {R0,R1,R3}
ADD             R0, R4, #0x1000
VLDR            S0, [R9,#(flt_6E3604 - 0x6E34B0)]
MOV             R1, R6
ADD             R0, R0, #0x39C
BL              sub_5A2298
MOV             R0, #0xFFFFFF00
ADD             R1, SP, #0x38+var_2C
REV             R0, R0
STR             R0, [SP,#0x38+var_2C]
VLDR            S0, [R9,#(flt_6E35F4 - 0x6E34B0)]
ADD             R0, R5, #0x32C
BL              sub_4E6784
STRB            R6, [R4,#0x4F]
MOV             R5, #0
STRH            R6, [R4,#0x48]
ADD             R0, R5, R5,LSL#1
ADD             R0, R4, R0,LSL#2
ADD             R6, R0, #0x20800
LDR             R0, [R8]
ADD             R6, R6, #0x2C4
BL              sub_528E64
MOV             R1, R0
LDR             R0, [R6,#4]
CMP             R1, R0
BNE             loc_1DA91C
LDR             R0, [R0,#0x18]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #1
BL              sub_14C430
ADD             R5, R5, #1
CMP             R5, #2
BLT             loc_1DA8E0
LDR             R0, [R8]
MOV             R1, #1
BL              sub_529274
LDR             R0, [R8]
MOV             R3, #0
MOV             R2, R3
ADD             R0, R0, #0x10C000
MOV             R1, #1
ADD             R0, R0, #0x214
BL              sub_58E7CC
LDR             R6, =unk_656B78
VLDR            S17, [R6,#(flt_656B80 - 0x656B78)]
BL              sub_47FFCC
CMP             R0, #0
NOP
BEQ             loc_1DA974
LDRB            R0, [R7,#(byte_6E2385 - 0x6E2378)]
CMP             R0, #0
BEQ             loc_1DAA4C
MOV             R1, #3
VMOV.F32        S0, S17
MOV             R0, R4
BL              sub_1DB5F8
LDR             R0, [R8]
MOV             R3, #0
MOV             R2, #3
MOV             R1, #2
BL              sub_52A660
ADD             R0, R4, #0x1F000
ADD             R0, R0, #0x820
BL              sub_338778
LDR             R0, [R8]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xCF00
LDRB            R0, [R0,#(byte_19CF31 - 0x19CF00)]
CMP             R0, #0
BEQ             loc_1DAA00
ADD             R5, R4, #0x1FC00
ADD             R0, R4, #0x1F000
ADD             R5, R5, #0x154
VLDR            S0, [R9,#(flt_6E37C0 - 0x6E34B0)]
ADD             R2, R9, #0x2F8
MOV             R1, #0
ADD             R0, R0, #0xF30
BL              sub_5A2298
MOV             R0, #0xFFFFFFFF
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x38+var_38]
VLDR            S0, [R9,#(flt_6E37C0 - 0x6E34B0)]
ADD             R0, R5, #0x32C
BL              sub_4E665C
MOV             R0, #1
STRB            R0, [R5,#0x3F4]
LDR             R0, [R8]
ADD             R5, R4, #0x20000
ADD             R5, R5, #0xF00
LDR             R1, [R0,#4]
LDRB            R1, [R1]
CMP             R1, #0
BEQ             loc_1DAA94
BL              sub_5EE4D4
CMP             R0, #0
NOP
BEQ             loc_1DAA68
B               loc_1DAA94
LDR             R0, [R8]
BL              sub_528E64
LDRB            R0, [R0,#0x495]
CMP             R0, #0
MOVEQ           R1, #1
MOVNE           R1, #2
B               loc_1DA7E0
LDR             R0, [R8]
BL              sub_528E64
LDRB            R0, [R0,#0x495]
CMP             R0, #0
MOVEQ           R1, #1
MOVNE           R1, #2
B               loc_1DA978
MOV             R2, #0
LDR             R0, =0xE007
MOV             R1, R2
BL              sub_116B34
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_1DAA94
LDRB            R0, [R5,#0xE]
CMP             R0, #0
MOVNE           R0, #1
BNE             loc_1DAA98
MOV             R0, #0
LDR             R1, [R8]
ADD             R1, R1, #0x190000
ADD             R1, R1, #0xD600
LDRH            R1, [R1,#(word_19D6AC - 0x19D600)]
CMP             R1, #0
LDRBNE          R1, [R5,#0xF]
CMPNE           R1, #0
MOVEQ           R1, #0
MOVNE           R1, #2
ORR             R5, R0, R1
MOV             R0, R4
BL              sub_5C738C
CMP             R0, #0
MOVNE           R0, #4
ORR             R1, R5, R0
ADD             R6, R6, #0x24 ; '$'
STRB            R1, [R4,#0x52]
LDM             R6, {R1,R2}
ADD             R0, R4, #0x20800
ADD             R0, R0, #0x2BC
STM             R0, {R1,R2}
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R9,PC}
