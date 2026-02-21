PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0x10
LDR             R0, [R0,#8]
LDRB            R0, [R0,#4]
CMP             R0, #0
BEQ             def_2410BC; jumptable 002410BC default case, cases 5-16,20,22,25,28,30-33
LDR             R0, [R4,#8]
LDRSH           R0, [R0]
CMP             R0, #0x23; switch 35 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_2410BC; jumptable 002410BC default case, cases 5-16,20,22,25,28,30-33
DCD loc_241150; jump table for switch statement
LDR             R0, [R4,#8]; jumptable 002410BC cases 0,1,4
LDRSH           R0, [R0,#2]
CMP             R0, #0x17
CMPNE           R0, #0x1C
BEQ             loc_241170
CMP             R0, #0x13
CMPNE           R0, #0x14
BNE             loc_2411A0
LDR             R0, [R4,#4]
VLDR            S16, =-0.54
VLDR            S2, =6.0
VLDR            S1, =0.54
LDR             R1, [R0]
VMOV.F32        S3, S16
VLDR            S0, =2.4
LDR             R1, [R1,#0x54]
BLX             R1
LDR             R0, [R4,#4]
ADD             R0, R0, #0x800
VSTR            S16, [R0,#0x30]
LDR             R0, [R4,#8]
LDRSH           R0, [R0,#2]
CMP             R0, #0x12
CMPNE           R0, #0x13
BEQ             loc_2411C0
CMP             R0, #0x14
CMPNE           R0, #0x1C
BNE             loc_241220
LDR             R0, [R4,#4]
VLDR            S0, =199.0
ADD             R1, R4, #0xC
ADD             R0, R0, #0x19C00
VSTR            S0, [R0,#0x20]
LDR             R0, [R4,#4]
VLDR            S0, =49.0
ADD             R0, R0, #0x19C00
VSTR            S0, [R0,#0x24]
LDR             R0, [R4,#4]
VLDR            S0, =24.0
ADD             R0, R0, #0x19C00
VSTR            S0, [R0,#0x28]
STR             R1, [SP,#0x20+var_20]
LDR             R1, [R4,#4]
VLDR            S0, =1.0
LDR             R0, [R4,#8]
ADD             R2, R1, #0x108
LDR             R1, =byte_68DBBA
VMOV.F32        S1, S0
ADD             R0, R0, #0x10
LDRB            R3, [R1]
LDR             R1, =unk_68C17A
BL              sub_49FF54
LDR             R1, [R4,#8]
MOV             R0, #1
STRB            R0, [R1,#0x4B5]
ADD             SP, SP, #0x10; jumptable 002410BC default case, cases 5-16,20,22,25,28,30-33
VPOP            {D8}
POP             {R4,PC}
LDR             R0, [R4,#4]; jumptable 002410BC case 2
VLDR            S2, =-30.0
VLDR            S1, =1.6
VLDR            S0, =15.25
LDR             R1, [R0]
LDR             R1, [R1,#0x214]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4,LR}
BX              R1
LDR             R0, [R4,#8]; jumptable 002410BC case 3
LDRSH           R0, [R0,#2]
CMP             R0, #0
CMPNE           R0, #1
CMPNE           R0, #4
BNE             def_2410BC; jumptable 002410BC default case, cases 5-16,20,22,25,28,30-33
LDR             R0, [R4,#4]
VLDR            S0, =1.6
VLDR            S1, =-30.0
ADD             R0, R0, #0x400
VSTR            S0, [R0,#0xC8]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VSTR            S1, [R0,#0xCC]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4,PC}
LDR             R1, [R4,#8]; jumptable 002410BC cases 17,18
MOV             R0, #0
B               loc_241318
LDR             R0, [R4,#4]; jumptable 002410BC case 19
VLDR            S16, =-0.6
VLDR            S2, =2.4
VLDR            S1, =0.6
LDR             R1, [R0]
VMOV.F32        S3, S16
VLDR            S0, =0.4
LDR             R1, [R1,#0x54]
BLX             R1
LDR             R1, [R4,#4]
VLDR            S0, =20.0
VLDR            S1, =50.0
ADD             R1, R1, #0x800
VLDR            S2, =101.0
VSTR            S16, [R1,#0x30]
LDR             R1, [R4,#4]
MOV             R0, #1
ADD             R1, R1, #0x19C00
VSTR            S0, [R1,#0x24]
LDR             R1, [R4,#4]
ADD             R1, R1, #0x19C00
VSTR            S1, [R1,#0x28]
LDR             R1, [R4,#4]
ADD             R1, R1, #0x19C00
VSTR            S2, [R1,#0x20]
LDR             R1, [R4,#8]
STRB            R0, [R1,#0x4B5]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4,PC}
LDR             R0, [R4,#4]; jumptable 002410BC case 21
VLDR            S0, =49.0
VLDR            S1, =24.0
ADD             R0, R0, #0x19C00
VLDR            S3, =-0.28
VSTR            S0, [R0,#0x24]
LDR             R0, [R4,#4]
VLDR            S2, =2.0
VLDR            S0, =0.8
ADD             R0, R0, #0x19C00
VSTR            S1, [R0,#0x28]
LDR             R0, [R4,#4]
VLDR            S1, =0.54
LDR             R1, [R0]
LDR             R1, [R1,#0x54]
BLX             R1
LDR             R0, [R4,#4]
VLDR            S0, =-0.135
VLDR            S2, =0.0
ADD             R0, R0, #0x800
VLDR            S1, =0.58
VSTR            S0, [R0,#0x30]
LDR             R0, [R4,#4]
VLDR            S0, =40.0
LDR             R1, [R0]
LDR             R1, [R1,#0x214]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4,LR}
BX              R1
LDR             R0, [R4,#4]; jumptable 002410BC case 23
VLDR            S0, =1.2
ADD             R0, R0, #0x400
VSTR            S0, [R0,#0xC8]
LDR             R0, [R4,#8]
LDRH            R0, [R0,#2]
CMP             R0, #0x16
BEQ             def_2410BC; jumptable 002410BC default case, cases 5-16,20,22,25,28,30-33
LDR             R0, [R4,#4]
VLDR            S1, =0.125
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0xC4]
VMUL.F32        S0, S0, S1
VSTR            S0, [R0,#0xC4]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4,PC}
LDR             R1, [R4,#8]; jumptable 002410BC case 24
MOV             R0, #1
VLDR            S2, =1.0
VLDR            S1, =24.0
STRB            R0, [R1,#0x4B5]
LDR             R0, [R4,#8]
VLDR            S0, [R0,#0x364]
LDR             R0, [R4,#4]
VSUB.F32        S0, S2, S0
VLDR            S2, =0.0
LDR             R1, [R0]
LDR             R1, [R1,#0x214]
ADD             SP, SP, #0x10
VPOP            {D8}
VMUL.F32        S0, S0, S1
POP             {R4,LR}
VLDR            S1, =1.75
BX              R1
LDR             R1, [R4,#8]; jumptable 002410BC case 26
MOV             R0, #0
VLDR            S0, =0.0
STRB            R0, [R1,#0x4B5]
LDR             R1, [R4,#4]
LDR             R0, [R1,#0x4EC]
BIC             R0, R0, #0x10
STR             R0, [R1,#0x4EC]
BIC             R1, R0, #1
LDR             R0, [R4,#4]
STR             R1, [R0,#0x4EC]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VSTR            S0, [R0,#0x78]
LDR             R0, [R4,#4]
ADD             R1, R0, #0x108
ADD             R0, R0, #0x118
LDM             R1, {R1-R3}
STM             R0, {R1-R3}
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4,PC}
DCFS -0.54
DCFS 6.0
DCFS 0.54
DCFS 2.4
DCFS 199.0
DCFS 49.0
DCFS 24.0
DCD byte_68DBBA
DCFS 1.0
DCD unk_68C17A
DCFS -30.0
DCFS 1.6
DCFS 15.25
DCFS -0.6
DCFS 0.6
DCFS 0.4
DCFS 20.0
DCFS 50.0
DCFS 101.0
DCFS -0.28
DCFS 2.0
DCFS 0.8
DCFS -0.135
DCFS 0.0
DCFS 0.58
DCFS 40.0
DCFS 1.2
DCFS 0.125
DCFS 1.75
LDR             R0, [R4,#4]; jumptable 002410BC case 27
VLDR            S2, =16.0
VLDR            S1, =0.5
VLDR            S0, =-16.0
LDR             R1, [R0,#0x4EC]
ORR             R1, R1, #0x10
STR             R1, [R0,#0x4EC]
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x214]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4,LR}
BX              R1
LDR             R1, [R4,#8]; jumptable 002410BC case 29
MOV             R0, #0
STRB            R0, [R1,#0x4B5]
LDR             R2, [R4,#4]
ADD             R4, R4, #0x800
ADD             R4, R4, #0x28C
ADD             R2, R2, #0x108
LDM             R2, {R0-R2}
STM             R4, {R0-R2}
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4,PC}
VLDR            S2, =0.0; jumptable 002410BC case 34
LDR             R0, [R4,#4]
VMOV.F32        S0, S2
LDR             R1, [R0,#0x740]
CMP             R1, #0
VMOV.F32        S1, S0
BEQ             loc_2415F4
LDRB            R2, [R4,#0xAC0]
CMP             R2, #0
ADD             R2, R1, #0x400
BEQ             loc_2415BC
VLDR            S6, [R1,#0x108]
VLDR            S3, [R0,#0x10C]
VLDR            S5, [R2,#0x228]
VLDR            S4, =36.0
ADD             R1, R4, #0x800
VADD.F32        S5, S5, S6
VSUB.F32        S3, S3, S4
VLDR            S0, =101.0
VLDR            S1, [R1,#0x298]
VADD.F32        S0, S5, S0
VADD.F32        S1, S3, S1
B               loc_24167C
VLDR            S7, [R1,#0x108]
VLDR            S5, [R2,#0x224]
VLDR            S3, [R0,#0x10C]
VLDR            S4, =36.0
VADD.F32        S5, S5, S7
VLDR            S1, =99.0
VSUB.F32        S4, S3, S4
ADD             R1, R4, #0x800
VLDR            S0, =2.0
VLDR            S6, [R1,#0x298]
VSUB.F32        S3, S5, S1
VSUB.F32        S1, S4, S6
VSUB.F32        S0, S3, S0
B               loc_24167C
LDR             R1, [R4,#0xAC8]
CMP             R1, #0
BEQ             loc_241610
LDRB            R2, [R4,#0xAC0]
CMP             R2, #0
BNE             loc_241628
B               loc_241650
LDR             R1, [R0,#0x608]
CMP             R1, #0
BEQ             loc_24167C
LDRB            R2, [R4,#0xAC0]
CMP             R2, #0
BEQ             loc_241650
VLDR            S4, [R0,#0x10C]
VLDR            S5, =36.0
ADD             R2, R4, #0x800
VLDR            S0, [R1,#0x7C]
VSUB.F32        S4, S4, S5
VLDR            S3, =101.0
VLDR            S1, [R2,#0x298]
VADD.F32        S0, S0, S3
VADD.F32        S1, S4, S1
B               loc_24167C
VLDR            S5, [R1,#0x78]
VLDR            S3, [R0,#0x10C]
VLDR            S6, =99.0
VLDR            S4, =36.0
ADD             R1, R4, #0x800
VSUB.F32        S5, S5, S6
VSUB.F32        S3, S3, S4
VLDR            S0, =2.0
VLDR            S1, [R1,#0x298]
VSUB.F32        S0, S5, S0
VSUB.F32        S1, S3, S1
VSTMEA          SP, {S0-S2}
LDR             R1, [R0]
LDR             R2, [R1,#0x6C]
MOV             R1, SP
BLX             R2
LDR             R0, [R4,#4]
VLDR            S1, =-99.0
VLDR            S0, =99.0
ADD             R0, R0, #0x400
VLDR            S2, =72.0
VSTR            S1, [R0,#0x224]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VSTR            S1, [R0,#0x1BC]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VSTR            S0, [R0,#0x228]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VSTR            S0, [R0,#0x1C0]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x800
VSTR            S1, [R0,#0x5C]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x800
VSTR            S1, [R0,#0x3C]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x800
VSTR            S0, [R0,#0x60]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x800
VSTR            S0, [R0,#0x40]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x800
VSTR            S1, [R0,#0x4C]
LDR             R0, [R4,#4]
VLDR            S1, =-1.0
ADD             R0, R0, #0x800
VSTR            S0, [R0,#0x50]
LDR             R0, [R4,#4]
VLDR            S0, =-5.0
ADD             R2, R0, #0x800
LDR             R0, [R0,#0x5C8]
STR             R0, [R2,#0x58]
LDR             R1, [R4,#4]
STR             R0, [R1,#0x848]
LDR             R0, [R4,#4]
ADD             R1, R0, #0x800
LDR             R0, [R0,#0x5C4]
STR             R0, [R1,#0x54]
LDR             R1, [R4,#4]
STR             R0, [R1,#0x844]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VSTR            S2, [R0,#0x234]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VSTR            S2, [R0,#0x1CC]
LDR             R0, [R4,#4]
VMOV.F32        S2, S1
LDR             R1, [R0]
LDR             R1, [R1,#0x214]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4,LR}
BX              R1
