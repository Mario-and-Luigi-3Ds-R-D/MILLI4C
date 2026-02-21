PUSH            {R4-R6,LR}
MOV             R4, R0
LDRB            R0, [R0,#0x40]
MOV             R5, #5
MOV             R6, #0
CMP             R0, #6; switch 6 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_158238; jumptable 00158238 default case
DCD loc_158258; jump table for switch statement
MOV             R0, #0; jumptable 00158238 case 0
POP             {R4-R6,PC}
LDR             R0, [R4,#0x14]; jumptable 00158238 case 1
CMP             R0, #0
BEQ             def_158238; jumptable 00158238 default case
LDR             R0, [R4,#0x18]
CMP             R0, #0x64 ; 'd'
BEQ             loc_1582A4
CMP             R0, #0xC8
SUBNE           R0, R0, #0x12C
CMPNE           R0, #2
BHI             def_158238; jumptable 00158238 default case
BL              sub_112D3C
LDR             R1, [R4,#0x14]
NOP
BL              sub_113630
NOP
NOP
B               def_158238; jumptable 00158238 default case
LDR             R0, [R4,#0x1C]
LDR             R1, =0x10624DD3
SMULL           R1, R0, R1, R0
MOV             R1, R0,ASR#6
SUB             R0, R1, R0,ASR#31
ORR             R5, R0, #0x1000000
BL              sub_112D3C
MOV             R2, #1
MOV             R1, R5
MOV             R0, #0x64 ; 'd'
BL              sub_11DAF4
CMP             R0, #0
NOP
BNE             def_158238; jumptable 00158238 default case
BL              sub_112D3C
LDR             R1, [R4,#0x1C]
MOV             R2, #0
MOV             R0, #0x64 ; 'd'
BL              sub_11DAF4
NOP
NOP
B               def_158238; jumptable 00158238 default case
ADD             R0, R4, #0x34 ; '4'; jumptable 00158238 case 2
BL              sub_123CE8
ADD             R0, R4, #0x34 ; '4'
NOP
BL              sub_4857C8
CMP             R0, #0
NOP
BNE             def_158238; jumptable 00158238 default case
ADD             R0, R4, #0x10
BL              sub_106818
LDRSH           R1, [R4,#0x44]
CMP             R1, #0
ADDGT           R0, R4, #0x34 ; '4'
BLGT            sub_123C70
MOV             R0, #3
STRB            R0, [R4,#0x40]
B               def_158238; jumptable 00158238 default case
LDRSH           R0, [R4,#0x44]; jumptable 00158238 case 3
CMP             R0, #0
BLE             loc_158370
ADD             R0, R4, #0x34 ; '4'
BL              sub_123CE8
ADD             R0, R4, #0x34 ; '4'
NOP
BL              sub_4857C8
CMP             R0, #0
NOP
BEQ             loc_1583A0
B               loc_15841C
NOP
BNE             loc_15838C
LDR             R0, [R4,#0x14]
CMP             R0, #0
BNE             loc_158428
STRB            R5, [R4,#0x40]
B               def_158238; jumptable 00158238 default case
CMN             R0, #1
BNE             loc_15841C
LDR             R0, [R4,#0x14]
CMP             R0, #0
BNE             loc_158428
LDRSH           R0, [R4,#0x46]
CMP             R0, #0
BEQ             loc_1583CC
CMP             R0, #1
LDRHNE          R1, [R4,#0x44]
CMPNE           R1, #0
BEQ             loc_1583F8
CMP             R0, #1
SUBGT           R0, R0, #1
STRHGT          R0, [R4,#0x46]
BLE             loc_1583F8
LDR             R1, [R4,#0x30]
LDR             R0, =unk_6EB568
ADD             R2, R4, #0x10
BL              sub_51CCCC
LDRSH           R1, [R4,#0x44]
CMP             R1, #0
ADDGT           R0, R4, #0x34 ; '4'
BLGT            sub_123C70
NOP
NOP
B               loc_15841C
LDR             R0, [R4,#0x14]
CMP             R0, #0
MOVNE           R2, #2
BEQ             loc_158384
LDR             R0, =unk_6EB568
ADD             R1, R4, #0x10
BL              sub_51C77C
MOV             R1, #4
STRB            R1, [R4,#0x40]
LDR             R0, [R4,#0x14]
CMP             R0, #0
BEQ             def_158238; jumptable 00158238 default case
LDR             R0, [R4,#0x50]
CMP             R0, #0
BEQ             loc_158478
LDRB            R1, [R4,#0x41]
CMP             R1, #0
BNE             loc_158478
ADD             R5, R4, #0x10
BL              sub_5C414C
VLDR            S2, =1.0
VLDR            S1, =-1.0
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S0, S2
BGE             loc_15846C
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S0, S1
LDR             R0, =unk_6EB568
MOV             R1, R5
BL              sub_51CC84
ADD             R0, R4, #0x10
BL              sub_106818
NOP
NOP
B               def_158238; jumptable 00158238 default case
LDR             R0, [R4,#0x14]; jumptable 00158238 case 4
CMP             R0, #0
BEQ             loc_158384
MOV             R0, #1; jumptable 00158238 default case
POP             {R4-R6,PC}
LDR             R5, [R4,#0x50]; jumptable 00158238 case 5
CMP             R5, #0
BEQ             loc_1584C4
MOV             R1, R4
MOV             R0, R5
BL              sub_14CA14
LDR             R0, [R4,#0x50]
CMP             R0, R5
STREQ           R6, [R4,#0x50]
LDR             R0, [R4,#0x64]
CMP             R0, #0
BEQ             loc_1584DC
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
MOV             R0, #0
STRB            R6, [R4,#0x40]
POP             {R4-R6,PC}
