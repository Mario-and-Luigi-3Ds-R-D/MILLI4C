PUSH            {R4-R11,LR}
MOV             R11, R0
ADD             R0, R0, #0x2C4
VPUSH           {D8}
SUB             SP, SP, #0x24
BL              sub_598FD8
LDR             R0, =off_6D1648
ADD             R4, R11, #0x13000
ADD             R4, R4, #0xB10
LDR             R0, [R0]
LDRB            R1, [R0,#0x3C]
LDR             R0, [R4]
BL              sub_3A14D4
LDR             R0, [R4]
BL              sub_3A119C
ADD             R0, R11, #0x10000
ADD             R0, R0, #0x3D40
LDR             R1, [R0]
TST             R1, #1
BEQ             loc_191720
LDR             R2, =0x13AD0
LDRH            R2, [R2,R11]
CMP             R2, #0
BEQ             loc_19176C
LDR             R0, [R11]
LDR             R1, [R0,#0x1FC]
MOV             R0, R11
BLX             R1
LDR             R0, [R11]
LDR             R1, [R0,#0x200]
MOV             R0, R11
BLX             R1
ADD             R6, R11, #0x14000
LDR             R8, [R6,#0x16C]
CMP             R8, #0
BEQ             loc_1918E0
LDR             R0, [R8]
LDR             R1, [R0,#0x78]
MOV             R0, R8
BLX             R1
CMP             R0, #0
BNE             loc_1918D4
B               loc_1917B4
LDR             R4, =off_6D1648
BIC             R1, R1, #2
STR             R1, [R0]
LDR             R0, [R4]
BL              sub_1EC6E8
LDR             R0, [R4]
NOP
BL              sub_1EF1C4
LDR             R0, [R11]
MOV             R3, #0
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DDBC
LDM             R0, {R1,R2}
ADD             SP, SP, #0x24 ; '$'
MOV             R0, R11
VPOP            {D8}
POP             {R4-R11,LR}
BX              R12
LDRB            R0, [R8,#0xDE]
TST             R0, #8
BNE             loc_1918D4
LDR             R0, [R8]
LDR             R1, [R0,#0x44]
MOV             R0, R8
BLX             R1
LDRB            R0, [R8,#0xDE]
TST             R0, #1
BEQ             loc_1918D4
LDR             R0, [R8]
LDR             R1, [R0,#8]
MOV             R0, R8
BLX             R1
CMP             R0, #3
BEQ             loc_1918D4
LDR             R0, [R8]
LDR             R1, [R0,#8]
MOV             R0, R8
BLX             R1
CMP             R0, #4
BEQ             loc_1918D4
LDR             R0, [R8]
LDR             R1, [R0,#0x28C]
MOV             R0, R8
BLX             R1
LDR             R0, [R8]
ADD             R1, R6, #0x170
LDM             R1, {R1,R2}
LDR             R3, [R0,#0x2E4]
MOV             R0, R8
BLX             R3
LDR             R0, [R8]
LDR             R1, [R0,#8]
MOV             R0, R8
BLX             R1
CMP             R0, #2
BCS             loc_1918D4
LDR             R0, [R8]
LDR             R1, [R0,#0x3C4]
MOV             R0, R8
BLX             R1
MOV             R4, R0
LDR             R0, [R8]
LDR             R1, [R0,#0x3CC]
MOV             R0, R8
BLX             R1
SUBS            R7, R0, #0
MOV             R5, #0
BLS             loc_1918D4
LDR             R2, [R4]
LDRB            R0, [R2,#0xDE]
TST             R0, #1
BEQ             loc_1918C4
LDR             R0, [R2]
LDR             R1, [R0,#0x44]
MOV             R0, R2
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#0x28C]
BLX             R1
LDR             R0, [R4]
ADD             R1, R6, #0x170
LDM             R1, {R1,R2}
LDR             R3, [R0]
LDR             R3, [R3,#0x2E4]
BLX             R3
ADD             R5, R5, #1
CMP             R5, R7
ADD             R4, R4, #4
BCC             loc_19187C
LDR             R8, [R8,#8]
CMP             R8, #0
BNE             loc_191750
LDR             R4, [R6,#0x16C]
CMP             R4, #0
BEQ             loc_19196C
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #3
BEQ             loc_191960
LDR             R0, [R4]
LDR             R1, [R0,#0x78]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BNE             loc_191960
LDRB            R0, [R4,#0xDE]
TST             R0, #8
BNE             loc_191960
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #4
BEQ             loc_191950
LDR             R0, [R4]
LDR             R1, [R0,#0x32C]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0x48]
MOV             R0, R4
BLX             R1
LDR             R4, [R4,#8]
CMP             R4, #0
BNE             loc_1918EC
ADD             R10, R11, #0x14C00
ADD             R10, R10, #0x3FC
ADD             R9, R11, #0x15000
LDR             R0, [R10]
CMP             R0, #0
BEQ             loc_191B7C
LDR             R0, =off_6D1648
VLDR            S16, =0.0
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
ADD             R0, R0, #4
LDM             R0, {R7,R8}
LDRB            R0, [R7,#0xDE]
TST             R0, #1
BEQ             loc_191A1C
LDRB            R0, [R9]
MOV             R4, #0
CMP             R0, #0
BLE             loc_191A1C
LDR             R0, [R10]
ADD             R1, R4, R4,LSL#1
ADD             R1, R1, R4,LSL#7
MOV             R2, #0
ADD             R5, R0, R1,LSL#4
LDR             R0, =0x82A
MOV             R1, R2
LDRH            R0, [R0,R5]
BL              sub_116B34
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_191A0C
LDR             R0, [R7]
MOV             R1, R5
LDR             R2, [R0,#0x3AC]
MOV             R0, R7
BLX             R2
CMP             R0, #0
MOVNE           R0, R5
BLNE            sub_598DFC
LDRB            R0, [R9]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_1919BC
LDRB            R0, [R8,#0xDE]
TST             R0, #1
BEQ             loc_191A98
LDRB            R0, [R9]
MOV             R4, #0
CMP             R0, #0
BLE             loc_191A98
LDR             R0, [R10]
ADD             R1, R4, R4,LSL#1
ADD             R1, R1, R4,LSL#7
MOV             R2, #0
ADD             R5, R0, R1,LSL#4
LDR             R0, =0x82A
MOV             R1, R2
LDRH            R0, [R0,R5]
BL              sub_116B34
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_191A88
LDR             R0, [R8]
MOV             R1, R5
LDR             R2, [R0,#0x3AC]
MOV             R0, R8
BLX             R2
CMP             R0, #0
MOVNE           R0, R5
BLNE            sub_598DFC
LDRB            R0, [R9]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_191A38
LDR             R0, [R11]
LDR             R1, [R0,#0x8C]
MOV             R0, R11
BLX             R1
CMP             R0, #0
BEQ             loc_191B7C
LDRB            R0, [R9]
MOV             R5, #0
CMP             R0, #0
BLE             loc_191B7C
LDR             R1, [R10]
ADD             R0, R5, R5,LSL#1
ADD             R0, R0, R5,LSL#7
ADD             R4, R1, R0,LSL#4
ADD             R0, R4, #0x400
VLDR            S1, [R4,#0x108]
VLDR            S0, [R0,#0x1BC]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x50+var_4C]
VSTR            S0, [SP,#0x50+var_50]
VLDR            S0, [R4,#0x108]
VLDR            S1, [R0,#0x1C0]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_48]
VSTR            S0, [SP,#0x50+var_44]
VLDR            S0, [R4,#0x110]
VLDR            S1, [R0,#0x1C4]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_34]
VSTR            S0, [SP,#0x50+var_40]
VLDR            S0, [R4,#0x110]
VLDR            S1, [R0,#0x1C8]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_38]
VSTR            S0, [SP,#0x50+var_3C]
LDR             R0, [R4]
LDR             R1, [R0,#0x288]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
MOV             R2, #0
MOV             R1, SP
LDR             R3, [R0,#0x2B0]
MOV             R0, R4
BLX             R3
LDR             R0, [R4]
LDR             R1, [R0,#0x32C]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0x324]
MOV             R0, R4
BLX             R1
LDRB            R0, [R9]
ADD             R5, R5, #1
CMP             R0, R5
BGT             loc_191AC0
LDR             R0, =0x14408
LDR             R0, [R0,R11]
BL              sub_2FB9D0
ADD             R7, R11, #0x14000
ADD             R7, R7, #0xB60
MOV             R8, #0
LDR             R5, [R7]
LDR             R4, [R5,#4]!
CMP             R4, R5
BEQ             loc_191CD0
LDR             R0, [R4,#0xC0]
LDRB            R1, [R0]
AND             R1, R1, #3
CMP             R1, #1
BEQ             loc_191BC4
CMP             R1, #2
BNE             loc_191CC4
B               loc_191C74
LDRB            R1, [R0,#2]
SUB             R1, R1, #1
ANDS            R1, R1, #0xFF
STRB            R1, [R0,#2]
LDR             R0, [R4,#0xC0]
BNE             loc_191CC4
MOV             R1, #0x1E
STRB            R1, [R0,#2]
LDR             R0, [R4,#0xC0]
ADD             R2, R4, #0x14
ADD             R12, SP, #0x50+var_44
ADD             R3, R4, #0xC
LDRB            R1, [R0]
BIC             R1, R1, #3
ORR             R1, R1, #2
STRB            R1, [R0]
MOV             R0, #0xFFFFFF00
MOV             R1, #0xFFFFFF80
REV             R0, R0
REV             R1, R1
STR             R0, [SP,#0x50+var_34]
STR             R1, [R4,#0xC]
LDR             R0, [R4,#0xC0]
MOV             R1, #1
LDRB            R0, [R0,#2]
STR             R2, [SP,#0x50+var_38]
ADD             R2, R4, #0xC
STM             R12, {R0,R1,R3}
ADD             R3, SP, #0x50+var_34
STR             R0, [SP,#0x50+var_50]
STR             R0, [SP,#0x50+var_4C]
STR             R0, [SP,#0x50+var_48]
LDR             R0, [R4,#8]
MOV             R1, #0
LDR             R12, [R0,#0xC]
ADD             R0, R4, #8
BLX             R12
B               loc_191CC4
DCD off_6D1648
DCD 0x13AD0
DCD off_67DDBC
DCFS 0.0
DCD 0x82A
DCD 0x14408
LDR             R0, [R4,#8]
ADD             R1, R4, #0x14
LDR             R2, [R0,#0x1C]
ADD             R0, R4, #8
BLX             R2
LDR             R0, [R4,#8]
ADD             R1, R4, #0x14
LDR             R2, [R0,#0x20]
ADD             R0, R4, #8
BLX             R2
LDR             R0, [R4,#0xC0]
LDRB            R1, [R0,#2]
SUB             R1, R1, #1
STRB            R1, [R0,#2]
LDR             R0, [R4,#0xC0]
LDR             R1, [R4,#0xC]
STR             R1, [R0,#0x10]
LDRB            R0, [R4,#0x14]
TST             R0, #0xF
BEQ             loc_191D5C
LDR             R4, [R4]
CMP             R4, R5
BNE             loc_191BA4
LDR             R0, =0x14B6C
LDR             R0, [R0,R11]
CMP             R0, #0
BEQ             loc_191D00
LDRH            R1, [R0,#2]
CMP             R1, #0
SUBNE           R1, R1, #1
STRHNE          R1, [R0,#2]
LDRB            R1, [R0]
TST             R1, #1
ADDEQ           R0, R0, #0x94
BEQ             loc_191CE0
ADD             R7, R11, #0x14C00
ADD             R7, R7, #0x3F4
ADD             R0, R11, #0x10000
LDR             R5, [R7]
ADD             R0, R0, #0x4300
LDR             R4, [R5,#4]!
STR             R0, [SP,#0x50+var_50]
CMP             R4, R5
BEQ             loc_191E24
LDR             R0, [R4,#0xC]
CMP             R0, #0
BEQ             loc_191E04
LDR             R1, [R0]
LDR             R1, [R1,#0x140]
BLX             R1
LDR             R0, [R4,#0xC]
LDR             R1, [R0]
LDR             R2, [R1,#0x48]
MOV             R1, #3
BLX             R2
CMP             R0, #0
BEQ             loc_191DA4
B               loc_191E04
LDR             R0, [R4,#0xAC]
ADD             R0, R0, #0x104
BL              sub_58DD64
ADD             R0, R4, #8
NOP
BL              sub_592ECC
STR             R8, [R4,#0xAC]
LDR             R0, [R4,#0xC0]
LDRB            R1, [R0]
BIC             R1, R1, #3
STRB            R1, [R0]
LDR             R0, [R7]
MOV             R1, R4
BL              sub_4658FC
MOV             R4, R0
LDR             R0, [R7]
ADD             R5, R0, #4
B               loc_191CC8
LDR             R0, [R4,#0xC]
LDR             R1, [R0]
LDR             R2, [R1,#0x4C]
MOV             R1, #3
BLX             R2
CMP             R0, #0
BNE             loc_191E04
LDR             R0, [R4,#0xC]
LDR             R1, [R0]
LDR             R2, [R1,#0x50]
MOV             R1, #3
BLX             R2
CMP             R0, #0
BNE             loc_191E04
LDR             R0, [R4,#0xC]
LDR             R1, [R0]
LDR             R1, [R1,#0x24]
BLX             R1
STR             R8, [R4,#0xC]
LDR             R0, [SP,#0x50+var_50]
LDRH            R0, [R0,#8]
ORR             R1, R0, #1
LDR             R0, [SP,#0x50+var_50]
STRH            R1, [R0,#8]
LDR             R0, [R4,#8]
CMP             R0, #0
LDREQ           R0, [R4,#0xC]
CMPEQ           R0, #0
LDRNE           R4, [R4]
BEQ             loc_191ECC
CMP             R4, R5
BNE             loc_191D24
LDR             R8, [R6,#0x16C]
CMP             R8, #0
BEQ             loc_191F58
LDR             R0, [R8]
LDR             R1, [R0,#8]
MOV             R0, R8
BLX             R1
CMP             R0, #3
BEQ             loc_191F4C
LDR             R0, [R8]
LDR             R1, [R0,#0xC]
MOV             R0, R8
BLX             R1
CMP             R0, #0
BEQ             loc_191F4C
LDR             R0, [R8]
LDR             R1, [R0,#8]
MOV             R0, R8
BLX             R1
CMP             R0, #4
BEQ             loc_191E98
LDR             R0, [R8]
LDR             R1, [R0,#0x38]
MOV             R0, R8
BLX             R1
LDR             R0, [R0,#0xA4]
LDR             R1, [R0,#4]
CMP             R1, #0
BLNE            sub_592F14
LDR             R0, [R8]
LDR             R1, [R0,#8]
MOV             R0, R8
BLX             R1
CMP             R0, #0
BEQ             loc_191EF8
LDR             R0, [R8]
LDR             R1, [R0,#8]
MOV             R0, R8
BLX             R1
CMP             R0, #1
BEQ             loc_191EF8
B               loc_191F4C
LDR             R0, [R4,#0x10]
LDRB            R1, [R0]
BIC             R1, R1, #1
STRB            R1, [R0]
LDR             R0, [R7]
MOV             R1, R4
BL              sub_4658FC
LDR             R1, [R7]
MOV             R4, R0
ADD             R5, R1, #4
B               loc_191E1C
LDR             R0, [R8]
LDR             R1, [R0,#0x3C4]
MOV             R0, R8
BLX             R1
MOV             R5, R0
LDR             R0, [R8]
LDR             R1, [R0,#0x3CC]
MOV             R0, R8
BLX             R1
SUBS            R7, R0, #0
MOV             R4, #0
BLS             loc_191F4C
LDR             R0, [R5]
LDR             R0, [R0,#0x7FC]
LDR             R1, [R0,#4]
CMP             R1, #0
BLNE            sub_592F14
ADD             R4, R4, #1
CMP             R4, R7
ADD             R5, R5, #4
BCC             loc_191F28
LDR             R8, [R8,#8]
CMP             R8, #0
BNE             loc_191E30
LDRB            R0, [R9]
MOV             R4, #0
CMP             R0, #0
BLE             loc_191FA4
LDR             R1, [R10]
ADD             R0, R4, R4,LSL#1
ADD             R0, R0, R4,LSL#7
ADD             R0, R1, R0,LSL#4
LDR             R1, [R0]
LDR             R1, [R1,#0x38]
BLX             R1
LDR             R0, [R0,#0xA4]
LDR             R1, [R0,#4]
CMP             R1, #0
BLNE            sub_592F14
LDRB            R0, [R9]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_191F68
MOV             R4, #0
ADD             R0, R11, R4,LSL#3
ADD             R0, R0, #0x13800
ADD             R0, R0, #0x364
BL              sub_1E5028
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_191FA8
LDR             R4, [SP,#0x50+var_50]
LDRH            R0, [R4,#8]
TST             R0, #1
BEQ             loc_191FE8
ADD             R0, R11, #0xCC
BL              sub_4B1570
LDRH            R0, [R4,#8]
BIC             R0, R0, #1
STRH            R0, [R4,#8]
LDR             R0, =0x14291
LDRSB           R2, [R0,R11]
CMP             R2, #0
BLT             loc_1920B0
LDR             R0, [R6,#0x31C]
TST             R0, #7
BNE             loc_1920B0
LDR             R0, [R6,#0x35C]
TST             R0, #7
BNE             loc_1920B0
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#4]
LDR             R0, [R0,#8]
LDRB            R3, [R1,#0xDC]
CMP             R2, R3
BEQ             loc_192040
LDRB            R12, [R0,#0xDC]
CMP             R2, R12
BNE             loc_192074
CMP             R2, R3
BNE             loc_192058
ADD             R1, R1, #0x400
LDRH            R1, [R1,#0x68]
CMP             R1, #5
BNE             loc_192074
LDRB            R1, [R0,#0xDC]
CMP             R2, R1
BNE             loc_1920B0
ADD             R0, R0, #0x400
LDRH            R0, [R0,#0x68]
CMP             R0, #5
BEQ             loc_1920B0
LDR             R0, [R11]
LDRB            R1, [R6,#0x291]
LDR             R2, [R0,#0x208]
MOV             R0, R11
BLX             R2
MOV             R0, #0xFF
STRB            R0, [R6,#0x291]
LDR             R0, [R11]
MOV             R1, #1
LDR             R2, [R0,#0x204]
ADD             SP, SP, #0x24 ; '$'
MOV             R0, R11
VPOP            {D8}
POP             {R4-R11,LR}
BX              R2
ADD             SP, SP, #0x24 ; '$'
VPOP            {D8}
POP             {R4-R11,PC}
