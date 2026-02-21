PUSH            {R4-R11,LR}
SUB             SP, SP, #0x44
MOV             R4, #0xFF
SVC             0x28 ; '('
LDR             R3, =0xBAD34AEE
MOV             R2, #3
MOV             R12, #0
MOV             R5, R1,ASR#31
UMULL           R8, R7, R0, R3
UMULL           R8, R9, R1, R2
ADDS            LR, R12, R7
ADC             R7, R8, R12
UMULL           R6, R8, R1, R3
LDR             R9, =0x20C49BA5
MLA             R3, R5, R3, R8
MLA             R1, R1, R12, R3
LDR             R12, =0xE353F7CF
MOV             R3, #0
UMLAL           R6, R1, R2, R0
MOV             R10, R3
ADDS            R0, R6, LR
ADC             R1, R1, R7
UMULL           R8, R7, R0, R12
UMULL           R8, R11, R1, R12
MLA             R7, R3, R12, R7
MOV             R2, R1,ASR#31
MOV             LR, R3
MLA             R12, R2, R12, R11
MLA             R7, R0, LR, R7
MLA             LR, R1, R3, R12
ADDS            R12, R8, R7
UMULL           R6, R7, R0, R9
ADC             LR, LR, R3
MOV             R5, R3
MLA             R3, R3, R9, R7
ADDS            R12, R12, R6
MLA             R0, R0, R10, R3
UMULL           R3, R7, R1, R9
ADC             R0, R0, R5
MLA             R2, R2, R9, R7
MOV             R12, R0,ASR#31
MLA             R7, R1, R10, R2
ADDS            R0, R0, LR
ADC             R2, R12, LR,ASR#31
ADDS            R0, R0, R3
LDR             R3, =byte_6CF938
ADC             R2, R2, R7
MOV             LR, R0,LSR#7
MOV             R12, R1,LSR#31
MOV             R0, R2,ASR#7
ORR             R1, LR, R2,LSL#25
LDR             R2, [R3,#(dword_6CF940 - 0x6CF938)]
ADDS            R1, R1, R12
ADC             R0, R0, #0
CMP             R2, #1
BEQ             loc_125200
CMP             R2, #2
BEQ             loc_1252E4
CMP             R2, #3
BNE             loc_125454
B               loc_125370
ADD             R12, R3, #0x20 ; ' '
LDR             R2, =0x14586
LDM             R12, {R12,LR}
MOV             R5, #2
SUBS            R6, R1, R12
SBCS            R6, R0, LR
BLT             loc_125254
SUBS            R12, R1, R12
MOV             R6, R2
SBC             LR, R0, LR
SUBS            R6, R12, R6
SBCS            R6, LR, #0
BGE             loc_1252B8
MOV             R3, LR,LSL#8
ORR             R1, R3, R12,LSR#24
MOV             R0, R12,LSL#8
MOV             R3, #0
BL              sub_116AC0
MOV             R4, R0
NOP
B               loc_125454
LDR             R6, =0x14586
CMP             R0, #0
BLT             loc_12529C
SUBS            R12, R1, R12
SBC             R7, R0, LR
MOVS            LR, R12
ADC             R12, R7, #0x80000000
SUBS            R6, LR, R6
SBCS            R6, R12, #0
BCS             loc_1252B8
MOV             R3, R12,LSL#8
ORR             R1, R3, LR,LSR#24
MOV             R0, LR,LSL#8
MOV             R3, #0
BL              sub_127B3C
NOP
NOP
B               loc_1252DC
ADDS            R12, R12, R1
ADC             LR, LR, R0
ADDS            R12, R12, #2
ADC             LR, LR, #0
SUBS            R6, R12, R6
SBCS            R6, LR, #0
BLT             loc_1252C8
STR             R5, [R3,#(dword_6CF940 - 0x6CF938)]!
STR             R1, [R3,#(dword_6CF958 - 0x6CF940)]
STR             R0, [R3,#(dword_6CF95C - 0x6CF940)]
B               loc_125454
MOV             R3, LR,LSL#8
ORR             R1, R3, R12,LSR#24
MOV             R0, R12,LSL#8
MOV             R3, #0
BL              sub_116AC0
MOV             R4, R0
B               loc_125454
ADD             R2, R3, #0x20 ; ' '
MOV             LR, #3
LDM             R2, {R2,R12}
SUBS            R5, R1, R2
SBCS            R5, R0, R12
BLT             loc_125318
LDR             R5, =0xF4241
SUBS            R2, R1, R2
SBC             R12, R0, R12
SUBS            R2, R2, R5
SBCS            R2, R12, #0
BLT             loc_125454
B               loc_125360
LDR             R5, =0xF4241
CMP             R0, #0
BLT             loc_125344
SUBS            R2, R1, R2
SBC             R12, R0, R12
MOVS            R6, R2
ADC             R2, R12, #0x80000000
SUBS            R12, R6, R5
SBCS            R2, R2, #0
BCC             loc_125454
B               loc_125360
ADDS            R2, R2, R1
ADC             R12, R12, R0
ADDS            R6, R2, #2
ADC             R2, R12, #0
SUBS            R12, R6, R5
SBCS            R2, R2, #0
BLT             loc_125454
STR             LR, [R3,#(dword_6CF940 - 0x6CF938)]!
STR             R1, [R3,#(dword_6CF958 - 0x6CF940)]
STR             R0, [R3,#(dword_6CF95C - 0x6CF940)]
B               loc_125454
LDR             LR, [R3,#(dword_6CF958 - 0x6CF938)]
LDR             R12, [R3,#(dword_6CF95C - 0x6CF938)]
LDR             R2, =0x51616
SUBS            R4, R1, LR
SBCS            R4, R0, R12
BLT             loc_1253C0
SUBS            LR, R1, LR
MOV             R4, R2
SBC             R12, R0, R12
SUBS            R4, LR, R4
SBCS            R4, R12, #0
BGE             loc_125424
MOV             R3, R12,LSL#8
ORR             R1, R3, LR,LSR#24
MOV             R0, LR,LSL#8
MOV             R3, #0
BL              sub_116AC0
RSBS            R4, R0, #0xFF
NOP
B               loc_125454
LDR             R4, =0x51616
CMP             R0, #0
BLT             loc_125408
SUBS            LR, R1, LR
SBC             R5, R0, R12
MOVS            R12, LR
ADC             LR, R5, #0x80000000
SUBS            R4, R12, R4
SBCS            R4, LR, #0
BCS             loc_125424
MOV             R3, LR,LSL#8
ORR             R1, R3, R12,LSR#24
MOV             R0, R12,LSL#8
MOV             R3, #0
BL              sub_127B3C
NOP
NOP
B               loc_125450
ADDS            LR, LR, R1
ADC             R5, R0, R12
ADDS            R12, LR, #2
ADC             LR, R5, #0
SUBS            R4, R12, R4
SBCS            R4, LR, #0
BLT             loc_12543C
MOV             R2, #0
STR             R2, [R3,#(dword_6CF940 - 0x6CF938)]!
MOV             R4, R2
STR             R1, [R3,#(dword_6CF958 - 0x6CF940)]
STR             R0, [R3,#(dword_6CF95C - 0x6CF940)]
B               loc_125454
MOV             R3, LR,LSL#8
ORR             R1, R3, R12,LSR#24
MOV             R0, R12,LSL#8
MOV             R3, #0
BL              sub_116AC0
RSBS            R4, R0, #0xFF
LDR             R0, =flt_658018
MOV             R3, #1
MOV             R2, #0
ORR             R1, R3, R3,LSL#10
VLDR            S1, [R0]
LDR             R0, =flt_658014
VLDR            S0, [R0]
MOV             R0, SP
BL              sub_12AB38
LDR             R0, =dword_6E1340
LDR             R0, [R0]
TST             R0, #1
BNE             loc_1254E0
LDR             R0, =dword_6E1340
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1254E0
LDR             R0, =flt_71203C
VLDR            S1, =1.0
VLDR            S0, =0.0
ADD             R1, R0, #0x10
VSTR            S1, [R0]
VSTR            S0, [R0,#(flt_712040 - 0x71203C)]
VSTR            S0, [R0,#(flt_712044 - 0x71203C)]
VSTR            S0, [R0,#(flt_712048 - 0x71203C)]
VSTM            R1, {S0-S1}
ADD             R1, R0, #0x24 ; '$'
VSTR            S0, [R0,#(flt_712054 - 0x71203C)]
VSTR            S0, [R0,#(flt_712058 - 0x71203C)]
VSTR            S0, [R0,#(flt_71205C - 0x71203C)]
VSTM            R1, {S0-S1}
VSTR            S0, [R0,#(flt_712068 - 0x71203C)]
LDR             R0, =dword_6E1340
NOP
LDR             R1, =flt_71203C
MOV             R0, SP
BL              sub_1280B0
LDR             R0, =unk_6EBB14
NOP
BL              sub_127FD4
LDR             R0, =unk_6EBB14
NOP
BL              sub_128004
LDR             R1, =unk_6EBA10
MOV             R0, #0
ADD             R2, SP, #0x68+var_28
STRB            R0, [R1,#(byte_6EBA81 - 0x6EBA10)]
MOV             R0, #0xFFFFFF00
ORR             R0, R0, R4
MOV             R1, #0
REV             R0, R0
STR             R0, [SP,#0x68+var_28]
LDR             R0, =unk_6EBA10
BL              sub_12C9C4
LDR             R1, =unk_6EBB14
SUB             R0, R1, #0x104
BL              sub_12CA08
ADD             SP, SP, #0x44 ; 'D'
POP             {R4-R11,PC}
