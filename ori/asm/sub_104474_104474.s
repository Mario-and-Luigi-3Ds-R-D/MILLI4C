PUSH            {R4-R10,LR}
MOV             R3, #0x30000
MOV             R8, #0
MOV             R9, #1
LDR             R1, =unk_6582C0
MOV             R7, R0
VPUSH           {D8}
SUB             SP, SP, #0x7E0
MOV             R2, #0x340
STRD            R8, R9, [SP,#0x808+var_808]
BL              sub_112340
LDR             R1, =unk_658600
MOV             R3, #0x20000
MOV             R2, #0x34 ; '4'
ADD             R0, R7, #0x14
STRD            R8, R9, [SP,#0x808+var_808]
BL              sub_112340
LDR             R1, =sub_10DCA0
MOV             R6, SP
MOV             R3, #0xC
MOV             R2, #0x70 ; 'p'
ADD             R0, SP, #0x808+var_6A8
BLX             sub_1002F4
LDR             R1, =sub_10DC94
MOV             R3, #0xC
MOV             R2, #0x14
ADD             R0, R0, #0x540
BLX             sub_1002F4
SUB             R5, R0, #0x6A0
STR             R8, [R0,#-0x6A0]
SUB             R0, R0, #0x400
MOV             R1, #0x150
SUB             R0, R0, #0x29C
BL              sub_2FFE8C
VLDR            S16, =0.0
MOV             R4, #0
ADD             R0, R5, R4
STRB            R8, [R0,#0x154]
RSB             R0, R4, R4,LSL#3
ADD             R0, R5, R0,LSL#4
ADD             R0, R0, #0x160
BL              sub_118650
ADD             R0, R4, R4,LSL#2
ADD             R4, R4, #1
ADD             R0, R5, R0,LSL#2
CMP             R4, #0xC
STRB            R8, [R0,#0x6A0]!
VSTR            S16, [R0,#4]
VSTR            S16, [R0,#8]
VSTR            S16, [R0,#0xC]
VSTR            S16, [R0,#0x10]
BCC             loc_104504
MOV             R1, #0
ADD             R5, SP, #0x808+var_78
MOV             R0, R1
STRB            R8, [SP,#0x808+var_78]
STR             R8, [SP,#0x808+var_74]
STR             R8, [SP,#0x808+var_70]
STR             R8, [SP,#0x808+var_6C]
ADD             R2, R5, R1,LSL#2
ADD             R1, R1, #1
ADD             R0, R0, #2
ADD             R3, R5, R1,LSL#2
STR             R8, [R2,#0x10]
CMP             R0, #0xC
ADD             R1, R1, #1
STR             R8, [R3,#0x10]
BCC             loc_104560
MOV             R0, #0
STRB            R0, [SP,#0x808+var_38]
MOV             R1, #1
STRB            R1, [SP,#0x808+var_37]
MOV             R3, #0xFF
STRB            R3, [SP,#0x808+var_35]
MOV             R0, #0xF
STRB            R8, [SP,#0x808+var_36]
STRB            R0, [SP,#0x808+var_74]
ADD             R2, SP, #0x808+var_38
MOV             R1, #0x150
ADD             R0, R6, #4
STR             R8, [SP,#0x808+var_34]
STR             R2, [SP,#0x808+var_68]
STRB            R9, [SP,#0x808+var_78]
STR             R8, [SP,#0x808+var_808]
BL              sub_2FFE8C
MOV             R4, #0
ADD             R0, R6, R4
RSB             R1, R4, R4,LSL#3
STRB            R8, [R0,#0x154]
ADD             R0, R6, R1,LSL#4
ADD             R0, R0, #0x160
BL              sub_118650
ADD             R1, R4, R4,LSL#2
ADD             R4, R4, #1
ADD             R0, R6, R1,LSL#2
CMP             R4, #0xC
STRB            R8, [R0,#0x6A0]!
VSTR            S16, [R0,#4]
VSTR            S16, [R0,#8]
VSTR            S16, [R0,#0xC]
VSTR            S16, [R0,#0x10]
BCC             loc_1045CC
LDR             R0, [R7,#4]
BL              sub_122B64
MOV             R2, R0
MOV             R1, R5
MOV             R0, R6
BL              sub_10DB58
LDR             R5, =dword_6CEF18
LDR             R1, =0xF0201
LDR             R4, [R5,#(off_6CEF20 - 0x6CEF18)]; dword_6CF490
ADD             R0, R1, #1
STR             R8, [R4],#4
STR             R1, [R4],#4
MOV             R1, #0x98
STR             R8, [R4],#4
STR             R0, [R4],#4
MOV             R0, R4
BL              sub_2FFE8C
LDR             R0, =0x823F0203
LDR             R12, =0x803F0232
ADD             R2, R4, #0x98
STR             R0, [R4,#(dword_6CF4A4 - 0x6CF4A0)]
MOV             R0, R2
MOV             R1, #0
MOV             R3, #0xC
STR             R8, [R0,#8]
STR             R8, [R0,#0xC]
STR             R8, [R0,#0x10]
STR             R8, [R0,#0x14]
STM             R0, {R1,R12}
SUBS            R3, R3, #1
ADD             R0, R0, #0x18
ADD             R1, R1, #1
BNE             loc_10466C
LDR             R0, [SP,#0x808+var_808]
ADD             R4, R2, #0x120
CMP             R0, #0
BNE             loc_1046BC
ADD             R1, R6, #4
MOV             R0, R6
BL              sub_113E84
SUB             R0, R0, R6
SUB             R0, R0, #4
MOV             R0, R0,ASR#2
STR             R0, [SP,#0x808+var_808]
MOV             R2, R0,LSL#2
ADD             R1, R6, #4
MOV             R0, R4
BL              sub_127EB8
LDR             R0, [SP,#0x808+var_808]
ADD             R0, R4, R0,LSL#2
LDR             R4, =unk_6CEF40
SUB             R0, R0, R4
BIC             R0, R0, #3
STR             R0, [R5]
LDR             R0, [R7,#0x18]
BL              sub_122B64
MOV             R6, R0
MOV             R0, #0x20000
BL              sub_10BB5C
NOP
NOP
BL              sub_122B64
SUB             R0, R6, R0
STR             R0, [R7,#0x28]
LDR             R0, [R5]
TST             R0, #0xF
STR             R0, [R5,#(dword_6CEF1C - 0x6CEF18)]
BNE             loc_10473C
BIC             R0, R0, #3
LDR             R1, =unk_6582A8
ADD             R0, R0, R4
MOV             R2, #8
BL              sub_1273D0
LDR             R0, [R5,#(dword_6CEF1C - 0x6CEF18)]
ADD             R0, R0, #8
STR             R0, [R5,#(dword_6CEF1C - 0x6CEF18)]
LDR             R0, [R5]
LDR             R1, =unk_6582B0
MOV             R2, #8
BIC             R0, R0, #3
ADD             R0, R0, R4
BL              sub_1273D0
LDR             R0, [R5,#(dword_6CEF1C - 0x6CEF18)]
LDR             R1, =unk_6CEF40
MOV             R3, #0x30000
ADD             R2, R0, #8
STR             R2, [R5,#(dword_6CEF1C - 0x6CEF18)]
ADD             R0, R7, #0x2C ; ','
STRD            R8, R9, [SP,#0x808+var_808]
BL              sub_109244
ADD             SP, SP, #0x7E0
VPOP            {D8}
POP             {R4-R10,PC}
