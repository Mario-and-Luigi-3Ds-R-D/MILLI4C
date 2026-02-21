PUSH            {R4-R7,LR}
MOV             R4, R0
SUB             SP, SP, #0x14
LDRB            R0, [R0,#4]
CMP             R0, #1
CMPNE           R0, #2
BEQ             loc_296984
CMP             R0, #4
BNE             loc_29697C
LDR             R0, [R4]
ADD             R0, R0, #0x11C
BL              sub_5F19B8
CMP             R0, #0
BNE             loc_29697C
LDR             R0, [R4]
ADD             R0, R0, #0x1C4
BL              sub_5F19B8
CMP             R0, #0
MOVEQ           R0, #5
BNE             loc_29697C
STRB            R0, [R4,#4]
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
LDRB            R0, [R4,#0x14]
MOV             R6, #0
MOV             R7, #1
CMP             R0, #0
ADD             R5, R4, #0xC
BEQ             loc_296A58
LDR             R0, [R5,#4]
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_296A58
LDR             R0, [R5,#0xC]
ADD             R1, R0, #1
STR             R1, [R5,#0xC]
LDM             R5, {R0,R3}
VLDR            S0, [R0,#0x10]
VCVT.U32.F32    S0, S0
VMOV            R2, S0
CMP             R2, R1
MOVLS           R0, R6
BLS             loc_296A54
ADD             R1, R1, R1,LSL#2
MOV             R2, SP
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x14
MOV             R1, #0
VLDM            R0, {S0-S3}
VSTMEA          SP, {S0-S3}
VLDR            S0, [R0,#0x10]
VCVT.U32.F32    S0, S0
VMOV            R0, S0
STRB            R0, [SP,#0x28+var_18]
MOV             R0, R3
LDRB            R3, [SP,#0x28+var_18]
CMP             R3, #0
BEQ             loc_296A34
CMP             R3, #1
BEQ             loc_296A48
CMP             R3, #2
VMOVEQ.F32      S0, S3
BLEQ            sub_5A2298
NOP
NOP
B               loc_296A50
VMOV.F32        S0, S3
BL              sub_5A2708
NOP
NOP
B               loc_296A50
VMOV.F32        S0, S3
BL              sub_5A2074
MOV             R0, R7
STRB            R0, [R5,#8]
LDRB            R0, [R4,#0x24]
ADD             R5, R4, #0x1C
CMP             R0, #0
BEQ             loc_296B34
LDR             R0, [R5,#4]
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_296B28
LDR             R0, [R5,#0xC]
ADD             R1, R0, #1
STR             R1, [R5,#0xC]
LDM             R5, {R0,R3}
VLDR            S0, [R0,#0x10]
VCVT.U32.F32    S0, S0
VMOV            R2, S0
CMP             R2, R1
BLS             loc_296B24
ADD             R1, R1, R1,LSL#2
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x14
LDR             R6, [R0,#0xC]
LDM             R0, {R1,R2,R12}
STR             R6, [SP,#0x28+var_1C]
STMEA           SP, {R1,R2,R12}
MOV             R2, SP
VLDR            S0, [R0,#0x10]
MOV             R1, #0
VCVT.U32.F32    S0, S0
VMOV            R0, S0
STRB            R0, [SP,#0x28+var_18]
MOV             R0, R3
LDRB            R3, [SP,#0x28+var_18]
CMP             R3, #0
BEQ             loc_296B04
CMP             R3, #1
BEQ             loc_296B18
CMP             R3, #2
VMOVEQ          S0, R6
BLEQ            sub_5A2298
NOP
NOP
B               loc_296B20
VMOV            S0, R6
BL              sub_5A2708
NOP
NOP
B               loc_296B20
VMOV            S0, R6
BL              sub_5A2074
MOV             R6, R7
STRB            R6, [R5,#8]
LDRB            R0, [R4,#0x24]
CMP             R0, #0
BNE             loc_29697C
LDRB            R0, [R4,#0x14]
CMP             R0, #0
MOVEQ           R0, #3
BNE             loc_29697C
B               loc_296978
