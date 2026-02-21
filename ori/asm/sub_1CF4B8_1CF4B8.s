PUSH            {R4-R11,LR}
MOV             R5, R0
AND             R0, R1, #2
MOV             R7, #0
MOV             R0, R0,LSR#1
VPUSH           {D8}
SUB             SP, SP, #0xC
STR             R0, [SP,#0x38+var_38]
AND             R0, R1, #1
STR             R0, [SP,#0x38+var_34]
LDR             R0, [R5,#0x190]
STR             R0, [R5,#0x194]
STRB            R7, [R5,#0x198]
BL              sub_47FFCC
LDR             R4, =unk_656C8C
LDR             R11, =off_6CE970
VLDR            S16, =0.0
EOR             R8, R0, #1
ADD             R6, R4, #0x54 ; 'T'
MOV             R10, #0xFFFFFF
LDRB            R0, [R4,#2]
CMP             R0, #2
CMPNE           R0, R8
BNE             loc_1CF634
MOV             R2, #0
LDRH            R0, [R4]
MOV             R1, R2
BL              sub_116B34
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1CF634
LDRB            R0, [R4,#3]
CMP             R0, #0
BEQ             loc_1CF58C
CMP             R0, #1
BEQ             loc_1CF558
CMP             R0, #2
CMPNE           R0, #3
BEQ             loc_1CF574
B               loc_1CF634
LDR             R0, [R11]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xCF00
LDRB            R0, [R0,#(byte_19CF32 - 0x19CF00)]
CMP             R0, #0
BEQ             loc_1CF634
B               loc_1CF58C
LDR             R0, [R11]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xCF00
LDRB            R0, [R0,#(byte_19CF31 - 0x19CF00)]
CMP             R0, #0
BNE             loc_1CF634
LDRH            R0, [R4,#4]
LDR             R2, [R5,#0x190]
MOV             R1, R0,LSR#1
LDR             R0, [R5,#0x194]
AND             R1, R10, R1,LSL#8
BIC             R1, R1, #0xFF
ORR             R7, R1, #2
MOV             R1, R2
MOV             R3, R0
CMP             R1, R0
LDRNE           R12, [R1]
CMPNE           R12, R7
ADDNE           R1, R1, #4
BNE             loc_1CF5B0
CMP             R1, R3
BNE             loc_1CF634
SUB             R0, R3, R2
MOV             R9, #1
ADD             R0, R9, R0,ASR#2
CMP             R0, #0x64 ; 'd'
BHI             loc_1CF5F4
CMP             R3, #0
STRNE           R7, [R3]
LDR             R0, [R5,#0x194]
ADD             R0, R0, #4
STR             R0, [R5,#0x194]
MOV             R0, R7,LSL#8
MOV             R1, R0,LSR#16
LDR             R0, =dword_6E7CD0
BL              sub_5F1148
CMP             R0, #0
NOP
BNE             loc_1CF634
LDR             R0, [SP,#0x38+var_38]
STRB            R9, [R5,#0x198]
CMP             R0, #0
BEQ             loc_1CF634
MOV             R0, R7,LSL#8
MOV             R2, #1
MOV             R1, R0,LSR#16
LDR             R0, =dword_6E7CD0
BL              sub_586D14
ADD             R4, R4, #6
CMP             R4, R6
BNE             loc_1CF508
LDR             R0, =0x10646C
LDR             R1, [R11]
ADD             R0, R0, R1; loc_10646C
LDR             R0, [R0,#(loc_106470 - 0x10646C)]
CMP             R0, #0
BEQ             loc_1CF664
SUBS            R0, R0, #0x1AC
ADDNE           R9, R0, #0x1AC
BNE             loc_1CF668
MOV             R9, #0
CMP             R9, #0
MOV             R0, #0
MOVNE           R11, #1
STR             R0, [SP,#0x38+var_30]
BEQ             loc_1CF778
CMP             R9, #0
MOVEQ           R0, #0
SUBNE           R0, R9, #0x1AC
LDRB            R1, [R0,#0x21F]
CMP             R1, #0
BEQ             loc_1CF768
ADD             R8, R0, #0x1C0
MOV             R4, #0
LDRH            R0, [R8,#0x36]
MOV             R7, R0,LSR#1
LDRB            R0, [R8,#0x38]
CMP             R0, #0
BLS             loc_1CF768
ADD             R1, R7, R4
LDR             R3, [R5,#0x190]
LDR             R2, [R5,#0x194]
AND             R1, R10, R1,LSL#8
BIC             R1, R1, #0xFF
ORR             R6, R1, #1
MOV             R0, R3
MOV             R1, R2
CMP             R0, R1
LDRNE           R12, [R0]
CMPNE           R12, R6
ADDNE           R0, R0, #4
BNE             loc_1CF6D0
CMP             R0, R2
BNE             loc_1CF754
SUB             R0, R2, R3
ADD             R0, R11, R0,ASR#2
CMP             R0, #0x64 ; 'd'
BHI             loc_1CF714
CMP             R2, #0
ADD             R0, R5, #0x190
STRNE           R6, [R2]
LDR             R1, [R0,#4]
ADD             R1, R1, #4
STR             R1, [R0,#4]
MOV             R0, R6,LSL#8
MOV             R1, R0,LSR#16
LDR             R0, =dword_6E7CD0
BL              sub_5F1148
CMP             R0, #0
NOP
BNE             loc_1CF754
LDR             R0, [SP,#0x38+var_38]
STRB            R11, [R5,#0x198]
CMP             R0, #0
BEQ             loc_1CF754
MOV             R0, R6,LSL#8
MOV             R2, #1
MOV             R1, R0,LSR#16
LDR             R0, =dword_6E7CD0
BL              sub_586D14
LDRB            R0, [R8,#0x38]
ADD             R1, R4, #1
AND             R4, R1, #0xFF
CMP             R0, R4
BHI             loc_1CF6B0
LDR             R9, [R9,#8]
LDR             R0, [SP,#0x38+var_30]
CMP             R9, R0
BNE             loc_1CF67C
LDR             R0, [SP,#0x38+var_34]
CMP             R0, #0
BEQ             loc_1CF8A8
ADD             R5, R5, #0x190
LDM             R5, {R4,R5}
CMP             R4, R5
BEQ             loc_1CF8A8
SUB             R6, R5, R4
MOV             R1, R5
MOV             R2, R6,ASR#2
MOV             R0, R4
BL              sub_635834
MOV             R0, #0x10
CMP             R0, R6,ASR#2
BGE             loc_1CF8B4
ADD             R8, R4, #0x40 ; '@'
ADD             R6, R4, #4
CMP             R6, R8
BEQ             loc_1CF86C
LDR             R7, [R6]
LDR             R1, [R4]
MOV             R0, R6
MOV             R9, R4
CMP             R7, R1
MOVCS           R1, R6
BCS             loc_1CF848
SUB             R2, R0, R9
ADD             R1, R0, #4
MOV             R3, R2,ASR#2
CMP             R3, #0
BLE             loc_1CF82C
MOVS            R3, R2,LSL#29
BPL             loc_1CF808
LDR             R3, [R6,#-4]
SUB             R0, R6, #4
STR             R3, [R1,#-4]!
MOVS            R2, R2,ASR#3
BEQ             loc_1CF82C
LDR             R12, [R0,#-4]
MOV             R3, R1
SUBS            R2, R2, #1
STR             R12, [R3,#-4]
LDR             R3, [R0,#-8]!
STR             R3, [R1,#-8]!
BNE             loc_1CF810
STR             R7, [R4]
B               loc_1CF860
DCD unk_656C8C
DCFS 0.0
DCD off_6CE970
DCD dword_6E7CD0
DCD 0x10646C
LDR             R2, [R1,#-4]!
CMP             R2, R7
STRHI           R2, [R0]
MOVHI           R0, R1
BHI             loc_1CF848
STR             R7, [R0]
ADD             R6, R6, #4
CMP             R6, R8
BNE             loc_1CF7C4
CMP             R8, R5
MOV             R3, R8
BEQ             loc_1CF8A8
LDR             R1, [R3]
MOV             R2, R3
MOV             R0, R3
LDR             R12, [R0,#-4]!
CMP             R1, R12
STRCC           R12, [R2]
MOVCC           R2, R0
BCC             loc_1CF884
ADD             R3, R3, #4
CMP             R3, R5
STR             R1, [R2]
BNE             loc_1CF878
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R11,PC}
ADD             R3, R4, #4
CMP             R3, R5
BEQ             loc_1CF8A8
LDR             R12, [R3]
LDR             R1, [R4]
MOV             R0, R3
CMP             R12, R1
MOVCS           R1, R3
BCS             loc_1CF92C
SUB             R2, R0, R4
ADD             R1, R0, #4
MOV             R6, R2,ASR#2
CMP             R6, #0
BLE             loc_1CF924
MOVS            R6, R2,LSL#29
BPL             loc_1CF900
LDR             R6, [R3,#-4]
SUB             R0, R3, #4
STR             R6, [R1,#-4]!
MOVS            R2, R2,ASR#3
BEQ             loc_1CF924
LDR             R7, [R0,#-4]
MOV             R6, R1
SUBS            R2, R2, #1
STR             R7, [R6,#-4]
LDR             R6, [R0,#-8]!
STR             R6, [R1,#-8]!
BNE             loc_1CF908
STR             R12, [R4]
B               loc_1CF944
LDR             R2, [R1,#-4]!
CMP             R2, R12
STRHI           R2, [R0]
MOVHI           R0, R1
BHI             loc_1CF92C
STR             R12, [R0]
ADD             R3, R3, #4
CMP             R3, R5
BNE             loc_1CF8C0
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R11,PC}
