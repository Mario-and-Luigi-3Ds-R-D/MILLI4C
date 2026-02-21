PUSH            {R4-R6,LR}
MOV             R6, R0
MOV             R5, R1
MOV             R4, R2
BL              sub_13DF78
CMP             R0, #0
BEQ             locret_1335C0
LDR             R0, =0x131E
LDRH            R2, [R4]
ADD             R1, R5, R5,LSL#2
ADD             R12, R1, R5,LSL#3
LDRH            R0, [R0,R6]
TST             R2, #1
LDR             R2, =0x10A0
ADD             R3, R6, R0,LSL#2
LDR             R2, [R2,R3]
ADD             R3, R2, #4
BEQ             loc_1334D4
LDRH            R0, [R4,#2]
ADD             R1, R3, R12,LSL#2
STRH            R0, [R1,#0x52]
LDRH            R0, [R4]
TST             R0, #4
BEQ             loc_13354C
LDRH            R1, [R4,#6]
ADD             R0, R3, R12,LSL#2
STRH            R1, [R0,#0x56]
LDRH            R1, [R4,#0x1C]
STRH            R1, [R0,#0x6C]
LDRH            R1, [R4,#0x1E]
STRH            R1, [R0,#0x6E]
LDRH            R1, [R4,#0x20]
STRH            R1, [R0,#0x70]
LDRH            R1, [R4,#0x22]
STRH            R1, [R0,#0x72]
LDRH            R1, [R4,#0x24]
STRH            R1, [R0,#0x74]
LDRH            R1, [R4,#0x26]
STRH            R1, [R0,#0x76]
LDRH            R1, [R4,#0x28]
STRH            R1, [R0,#0x78]
LDRH            R1, [R4,#0x2A]
STRH            R1, [R0,#0x7A]
LDRH            R1, [R4,#0x2C]
STRH            R1, [R0,#0x7C]
LDRH            R1, [R4,#0x2E]
STRH            R1, [R0,#0x7E]
LDRH            R1, [R4,#0x30]
STRH            R1, [R0,#0x80]
LDRH            R1, [R4,#0x32]
STRH            R1, [R0,#0x82]
LDRH            R0, [R4]
TST             R0, #2
BEQ             loc_133584
LDR             R1, [R4,#8]
ADD             R0, R3, R12,LSL#2
STR             R1, [R0,#0x58]
LDR             R1, [R4,#0xC]
STR             R1, [R0,#0x5C]
LDR             R1, [R4,#0x10]
STR             R1, [R0,#0x60]
LDR             R1, [R4,#0x14]
STR             R1, [R0,#0x64]
LDR             R1, [R4,#0x18]
STR             R1, [R0,#0x68]
ADD             R0, R3, R12,LSL#2
LDRH            R1, [R4]
LDRH            R3, [R0,#0x50]
CMP             R5, #0
ORR             R1, R1, R3
STRH            R1, [R0,#0x50]
LDREQ           R0, [R2]
ORREQ           R0, R0, #0x1000
BEQ             loc_1335B8
CMP             R5, #1
LDREQ           R0, [R2]
ORREQ           R0, R0, #0x2000
BNE             loc_1335BC
STR             R0, [R2]
MOV             R0, #1
POP             {R4-R6,PC}
