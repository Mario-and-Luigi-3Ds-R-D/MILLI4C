PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R1, [R0,#0x14C]
LDR             R0, [R0]
MOV             R3, #0xA
SUB             SP, SP, #0x1C
MOV             R2, R1,LSL#19
CMP             R3, R2,LSR#28
MOVHI           R5, R2,LSR#28
BLS             loc_1F151C
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R5, #0xA; switch 10 cases
LDRCC           PC, [PC,R5,LSL#2]; switch jump
B               def_1F11E0; jumptable 001F11E0 default case
DCD loc_1F1210; jump table for switch statement
ADD             SP, SP, #0x1C; jumptable 001F11E0 case 0
MOV             R3, #0
POP             {R4,R5,LR}
MOV             R1, R3
LDR             R2, =dword_6ED9B8
MOV             R0, #2
B               sub_5863F0
ADD             SP, SP, #0x1C; jumptable 001F11E0 case 1
MOV             R3, #0
POP             {R4,R5,LR}
MOV             R1, R3
LDR             R2, =dword_6ED9B8
MOV             R0, #3
B               sub_5863F0
NOP; jumptable 001F11E0 case 2
BL              sub_59FF9C
LDR             R0, [R4,#0x158]
SXTH            R0, R0
BL              sub_5A0650
LDR             R0, [R4,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x14]
TST             R1, #0x400000
LDREQ           R0, [R0,#4]
LDRNE           R0, [R0,#8]
LDR             R0, [R0,#4]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D00
LDRH            R0, [R0,#4]
BL              sub_2AF718
LDR             R0, [R0]
LDR             R3, =0x14308
TST             R0, #1
ADD             R0, R4, #0xBC
LDREQ           R1, =0x200000B
LDM             R0, {R0,R2}
LDRNE           R1, =0x200000C
LDRH            R12, [R3,R2]
LDRH            R3, [R3,R0]
ADD             R0, R0, #0x14000
ADD             R0, R0, #0x2F0
MOV             R5, R12,LSL#26
ADD             R12, R2, #0x14000
MOV             R3, R3,LSL#26
MOV             R2, R5,LSR#29
ADD             R5, SP, #0x28+var_1C
ADD             R12, R12, #0x2F0
MOV             R3, R3,LSR#29
STR             R2, [SP,#0x28+var_10]
STM             R5, {R0,R3,R12}
MOV             R2, #0x100000
LDR             R0, [R4,#0x148]
STR             R2, [SP,#0x28+var_28]
MOV             R3, R2
STRD            R0, R1, [SP,#0x28+var_24]
MOV             R1, #0x800000
MOV             R0, #0
BL              sub_59FFFC
ADD             SP, SP, #0x1C
MOV             R0, #5
POP             {R4,R5,LR}
B               sub_586338
LDR             R0, [R4,#0x158]; jumptable 001F11E0 case 3
UXTH            R0, R0
BL              sub_5A0670
ADD             SP, SP, #0x1C
MOV             R0, #6
POP             {R4,R5,LR}
B               sub_586338
NOP; jumptable 001F11E0 case 4
BL              sub_59FFCC
ADD             SP, SP, #0x1C
MOV             R0, #8
POP             {R4,R5,LR}
B               sub_586338
LDR             R0, [R4,#0x158]; jumptable 001F11E0 case 6
SXTH            R0, R0
BL              sub_5A02C0
LDR             R0, [R4,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x14]
TST             R1, #0x400000
LDREQ           R0, [R0,#4]
LDRNE           R0, [R0,#8]
LDR             R0, [R0,#4]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D00
LDRH            R0, [R0,#4]
BL              sub_2AF718
ADD             R1, R4, #0xBC
LDR             R3, =0x14308
LDM             R1, {R1,R2}
LDR             R0, [R0]
LDRH            R12, [R3,R2]
LDRH            R3, [R3,R1]
ADD             R1, R1, #0x14000
ADD             R1, R1, #0x2F0
MOV             R5, R12,LSL#26
ADD             R12, R2, #0x14000
MOV             R3, R3,LSL#26
MOV             R2, R5,LSR#29
ADD             R5, SP, #0x28+var_1C
STR             R2, [SP,#0x28+var_10]
ADD             R12, R12, #0x2F0
MOV             R3, R3,LSR#29
STM             R5, {R1,R3,R12}
TST             R0, #1
LDR             R1, [R4,#0x148]
LDREQ           R0, =0x200000B
LDRNE           R0, =0x200000C
MOV             R2, #0x100000
STR             R1, [SP,#0x28+var_24]
STR             R0, [SP,#0x28+var_20]
MOV             R3, R2
MOV             R1, #0x800000
MOV             R0, #0
STR             R2, [SP,#0x28+var_28]
BL              sub_59FFFC
ADD             SP, SP, #0x1C
MOV             R0, #9
POP             {R4,R5,LR}
B               sub_586338
NOP; jumptable 001F11E0 case 7
BL              sub_5A035C
LDR             R0, [R4,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x14]
TST             R1, #0x400000
LDREQ           R0, [R0,#4]
LDRNE           R0, [R0,#8]
LDR             R0, [R0,#4]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D00
LDRH            R0, [R0,#4]
BL              sub_2AF718
LDR             R0, [R0]
LDR             R3, =0x14308
TST             R0, #1
ADD             R0, R4, #0xBC
LDREQ           R1, =0x200000B
LDM             R0, {R0,R2}
LDRNE           R1, =0x200000C
LDRH            R12, [R3,R2]
LDRH            R3, [R3,R0]
ADD             R0, R0, #0x14000
ADD             R0, R0, #0x2F0
MOV             R5, R12,LSL#26
ADD             R12, R2, #0x14000
MOV             R3, R3,LSL#26
MOV             R2, R5,LSR#29
ADD             R5, SP, #0x28+var_1C
ADD             R12, R12, #0x2F0
MOV             R3, R3,LSR#29
STR             R2, [SP,#0x28+var_10]
STM             R5, {R0,R3,R12}
MOV             R2, #0x100000
LDR             R0, [R4,#0x148]
STR             R2, [SP,#0x28+var_28]
MOV             R3, R2
STRD            R0, R1, [SP,#0x28+var_24]
MOV             R1, #0x800000
MOV             R0, #0
BL              sub_59FFFC
ADD             SP, SP, #0x1C
MOV             R0, #4
POP             {R4,R5,LR}
B               sub_586338
LDR             R4, =off_6CF9A8; jumptable 001F11E0 case 8
NOP
BL              sub_585EA4
CMP             R0, #0xA
NOP
BEQ             loc_1F1588
CMN             R0, #1
BEQ             loc_1F14E0
LDR             R0, [R4]
BL              sub_5864B8
NOP
NOP
B               loc_1F14B0
ADD             SP, SP, #0x1C
MOV             R0, #0xA
POP             {R4,R5,LR}
B               sub_58622C
ADD             SP, SP, #0x1C; jumptable 001F11E0 case 9
MOV             R0, #0xB
POP             {R4,R5,LR}
B               sub_586338
LDR             R0, [R4]; jumptable 001F11E0 default case
MOV             R1, R5
LDR             R2, [R0,#0xC8]
ADD             SP, SP, #0x1C
MOV             R0, R4
POP             {R4,R5,LR}
BX              R2
TST             R1, #0x100
BEQ             loc_1F15A4
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
LDR             R5, =word_6EBB64
LDR             R1, =0x422E
LDRH            R0, [R5,#(word_6EBB6C - 0x6EBB64)]
STRH            R0, [R5]
LDRH            R0, [R1,R4]
STRH            R0, [R5,#(word_6EBB66 - 0x6EBB64)]
BL              sub_585EA4
CMP             R0, #0
NOP
BEQ             loc_1F1588
LDRH            R0, [R5]
BL              sub_2AF718
LDR             R0, [R0]
LDR             R2, =dword_6ED9B8
MOV             R3, #0
TST             R0, #1
MOV             R1, R5
BEQ             loc_1F1594
ADD             SP, SP, #0x1C
MOV             R0, #1
POP             {R4,R5,LR}
B               sub_5863F0
ADD             SP, SP, #0x1C
POP             {R4,R5,LR}
B               sub_585EFC
ADD             SP, SP, #0x1C
MOV             R0, #0
POP             {R4,R5,LR}
B               sub_5863F0
LDR             R1, [R0,#0xD0]
MOV             R0, R4
BLX             R1
LDR             R0, [R4,#0x48]
TST             R0, #1
LDREQ           R1, [R4,#0x44]
ADD             R0, R4, R0,ASR#1
BEQ             loc_1F15D0
LDR             R1, [R0]
LDR             R2, [R4,#0x44]
LDR             R1, [R1,R2]
NOP
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0xD8]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0x24]
MOV             R0, R4
BLX             R1
LDRB            R0, [R4,#0x3E]
CMP             R0, #0
MOVNE           R0, #0x10
ORR             R1, R0, #1
LDR             R0, =dword_6E9820
BL              sub_485B94
LDRB            R0, [R4,#0x3C]
EOR             R0, R0, #1
STRB            R0, [R4,#0x3C]
ADD             SP, SP, #0x1C; jumptable 001F11E0 case 5
POP             {R4,R5,PC}
