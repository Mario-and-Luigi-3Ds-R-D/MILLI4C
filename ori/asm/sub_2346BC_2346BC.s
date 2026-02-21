PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =off_67E154
VPUSH           {D8}
LDRSH           R0, [R0,#0x40]
CMP             R0, #0
LDRLE           R0, [R4,#4]
BLE             loc_2346F8
ADD             R0, R4, #0x30 ; '0'
BL              sub_123CE8
ADD             R0, R4, #0x30 ; '0'
BL              sub_4857C8
CMP             R0, #0
BEQ             loc_234714
B               loc_234760
NOP
BNE             loc_23470C
CMP             R0, #0
BNE             loc_23476C
B               loc_2347C0
CMP             R0, #0
BNE             loc_23476C
LDRSH           R0, [R4,#0x42]
CMP             R0, #0
BEQ             loc_234740
CMP             R0, #1
LDRHNE          R1, [R4,#0x40]
CMPNE           R1, #0
BEQ             loc_234788
CMP             R0, #1
SUBGT           R0, R0, #1
STRHGT          R0, [R4,#0x42]
BLE             loc_234788
LDR             R1, [R4,#0x20]
LDR             R0, =unk_6EB568
MOV             R2, R4
BL              sub_51CCCC
LDRSH           R1, [R4,#0x40]
CMP             R1, #0
ADDGT           R0, R4, #0x30 ; '0'
BLGT            sub_123C70
LDR             R0, [R4,#4]
CMP             R0, #0
BEQ             loc_2347C8
LDR             R0, [R4,#0x24]
CMP             R0, #0
BEQ             loc_23482C
LDRB            R1, [R4,#0x3C]
TST             R1, #1
BEQ             loc_2347D0
B               loc_23482C
LDR             R0, [R4,#4]
CMP             R0, #0
MOVNE           R2, #0
BEQ             loc_2347C0
LDR             R0, =unk_6EB568
MOV             R1, R4
BL              sub_51C77C
MOV             R1, #0
ADD             R5, R5, #0x18
STR             R1, [R4,#0x24]
LDM             R5, {R1,R2}
STR             R1, [R4,#0x48]
STR             R2, [R4,#0x4C]
B               loc_234760
LDRD            R0, R1, [R5,#(off_67E174 - 0x67E154)]
STRD            R0, R1, [R4,#0x48]
VPOP            {D8}
POP             {R4-R6,PC}
VLDR            S1, [R0,#0x130]
LDR             R0, [R4,#0x24]
VLDR            S0, [R4,#0x28]
VADD.F32        S16, S1, S0
LDR             R0, [R0,#4]
ADD             R0, R0, #0x14000
LDR             R0, [R0,#0x180]
BL              sub_11C418
MOV             R0, R0,LSR#1
VMOV            S0, R0
VCVT.F32.U32    S1, S0
VDIV.F32        S0, S16, S1
VMOV            R0, S0
CMP             R0, #0x3F800000
VLDRGT          S0, =1.0
BGT             loc_234820
LDR             R1, =0xBF800000
VMOV            R0, S0
CMP             R0, R1
VLDRHI          S0, =-1.0
LDR             R0, =unk_6EB568
MOV             R1, R4
BL              sub_51CC84
LDR             R0, =unk_6EB568
VLDR            S0, [R4,#0x44]
MOV             R2, #0
MOV             R1, R4
BL              sub_20175C
VPOP            {D8}
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_106818
