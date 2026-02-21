PUSH            {R4-R9,LR}
MOV             R7, R0
VPUSH           {D8}
SUB             SP, SP, #0x14
BL              sub_52C5FC
CMP             R0, #0
BEQ             loc_1D3768
MOV             R0, R7
BL              sub_5295A8
CMP             R0, #0
BNE             loc_1D3768
MOV             R0, R7
BL              sub_528E64
ADD             R5, R0, #0x400
MOV             R4, R0
LDRH            R0, [R5,#0x98]
AND             R0, R0, #0x7F
CMP             R0, #4
BNE             loc_1D3688
MOV             R0, R7
BL              sub_5EE458
SUB             R1, R0, #0x1000
SUBS            R1, R1, #0x1C
BNE             loc_1D3688
LDR             R8, =dword_6E1330
MOV             R6, #0xFFFFFFFF
MOV             R0, #0
STRH            R0, [SP,#0x38+var_38]
STR             R6, [SP,#0x38+var_34]
LDR             R0, [R8]
VLDR            S16, =0.0
TST             R0, #1
BNE             loc_1D35EC
MOV             R0, R8
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_1D35EC
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
MOV             R0, R8
NOP
LDR             R9, =flt_711FE4
ADD             R3, SP, #0x38+var_30
LDM             R9, {R0-R2}
STM             R3, {R0-R2}
LDR             R0, =dword_6D1F40
BL              sub_546DB0
RSB             R0, R0, R0,LSL#3
LDR             R1, =unk_6541CC
ADD             R0, R0, R0,LSL#2
MOV             R0, R0,LSR#16
ADD             R0, R1, R0,LSL#1
LDRH            R0, [R0]
STR             R6, [SP,#0x38+var_34]
STRH            R0, [SP,#0x38+var_38]
LDR             R0, [R8]
TST             R0, #1
BNE             loc_1D365C
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1D365C
MOV             R0, R9
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDM             R9, {R0-R2}
ADD             R3, SP, #0x38+var_30
STM             R3, {R0-R2}
MOV             R1, SP
MOV             R0, R7
BL              sub_52C6C4
LDR             R0, =loc_19CF44
ADD             R0, R0, R7
LDR             R1, [R0]
ORR             R1, R1, #0x200
STR             R1, [R0]
LDRH            R0, [R5,#0x98]
LDR             R8, =0x1869F
MOV             R1, #0
AND             R0, R0, #0x7F
CMP             R0, #9; switch 9 cases
ADD             R6, R7, #0x1A0000
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1D36A0; jumptable 001D36A0 default case, cases 0,7
DCD def_1D36A0; jump table for switch statement
NOP; jumptable 001D36A0 case 1
BL              sub_47FFCC
CMP             R0, #0
LDR             R0, [R4,#0x224]
LDREQ           R1, =0xD002
MOVNE           R1, #0xD000
ADD             R0, R0, #1
CMP             R8, R0
BLE             loc_1D36FC
CMP             R0, #0
MOVLE           R8, #0
MOVGT           R8, R0
STR             R8, [R4,#0x224]
B               def_1D36A0; jumptable 001D36A0 default case, cases 0,7
NOP; jumptable 001D36A0 case 2
BL              sub_47FFCC
CMP             R0, #0
LDR             R0, [R4,#0x228]
LDRNE           R1, =0xD001
LDREQ           R1, =0xD003
ADD             R0, R0, #1
CMP             R8, R0
BLE             loc_1D3734
CMP             R0, #0
MOVLE           R8, #0
MOVGT           R8, R0
STR             R8, [R4,#0x228]
B               def_1D36A0; jumptable 001D36A0 default case, cases 0,7
LDR             R0, [R4,#0x22C]; jumptable 001D36A0 case 3
ADD             R0, R0, #1
CMP             R8, R0
BLE             loc_1D3758
CMP             R0, #0
MOVLE           R8, #0
MOVGT           R8, R0
LDR             R1, =off_6540F4
STR             R8, [R4,#0x22C]
LDM             R1, {R0,R1}
STRD            R0, R1, [R6,#0x5C]
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R9,PC}
LDRH            R1, [R5,#0x9C]; jumptable 001D36A0 case 5
BIC             R0, R1, #0xF000
ADD             R2, R4, R0,LSL#2
LDR             R0, [R2,#0x230]
ADD             R0, R0, #1
CMP             R8, R0
BLE             loc_1D379C
CMP             R0, #0
MOVLE           R8, #0
MOVGT           R8, R0
STR             R8, [R2,#0x230]
B               def_1D36A0; jumptable 001D36A0 default case, cases 0,7
LDRH            R1, [R5,#0x9C]; jumptable 001D36A0 case 6
BIC             R0, R1, #0xF000
ADD             R2, R4, R0,LSL#2
LDR             R0, [R2,#0x270]
ADD             R0, R0, #1
CMP             R0, R8
MOVGE           R0, R8
BGE             loc_1D37CC
CMP             R0, #0
MOVLE           R0, #0
STR             R0, [R2,#0x270]
CMP             R1, #0; jumptable 001D36A0 default case, cases 0,7
MOVNE           R0, R7
BLNE            sub_529264
LDR             R1, =off_6540FC; jumptable 001D36A0 case 4
LDM             R1, {R0,R1}
STRD            R0, R1, [R6,#0x5C]
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R9,PC}
LDR             R1, =unk_653FC0; jumptable 001D36A0 case 8
LDRD            R0, R1, [R1,#(off_653FD4 - 0x653FC0)]
B               loc_1D37E4
