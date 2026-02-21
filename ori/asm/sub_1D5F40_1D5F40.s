PUSH            {R4-R11,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0xFC
BL              sub_1D1AC0
LDR             R0, =0x19D69A
LDRH            R1, [R0,R4]
MOV             R0, R4
BL              sub_52FACC
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
CMP             R0, #0
BEQ             loc_1D6C0C
LDR             R0, =0x121B7C
ADD             R0, R0, R4
MOV             R7, R0
BL              sub_5F1538
CMP             R0, #0
BEQ             loc_1D6C0C
LDR             R0, =0x138F24
ADD             R0, R0, R4
LDRB            R0, [R0,#0x12]
CMP             R0, #0
CMPNE           R0, #0xFF
BNE             loc_1D6C0C
LDR             R0, =0xFFE683CC
LDR             R1, =0x2000014
SUB             R0, R4, R0
MOV             R5, R0
BL              sub_5032DC
CMP             R0, #0
BEQ             loc_1D6C0C
BL              sub_47FFCC
CMP             R0, #0
LDREQ           R1, =0x2000016
LDRNE           R1, =0x2000015
MOV             R0, R5
BL              sub_5032DC
CMP             R0, #0
BEQ             loc_1D6C0C
LDR             R1, =0xC00A
MOV             R0, R4
BL              sub_52FACC
MOV             R5, R0
ADD             R0, R0, #0xA0
MOV             R6, R0
MOV             R1, #0
MOV             R0, R5
BL              sub_5F0474
MOV             R1, R0
LDR             R0, =0x1211BC
MOV             R9, #0
MOV             R8, #0x100
MOV             R2, R6
ADD             R0, R0, R4
MOV             R3, R9
MOV             R6, R0
STR             R9, [SP,#0x128+var_128]
STR             R9, [SP,#0x128+var_124]
STR             R8, [SP,#0x128+var_120]
BL              sub_1137FC
MOV             R10, #1
MOV             R1, #5
STRB            R10, [R6,#0x68]
ADD             R5, R4, #0x100000
STRB            R1, [R6,#0x6A]
ADD             R5, R5, #0x21000
MOV             R0, #0xFFFFFF80
STRB            R9, [R6,#0x69]
STRB            R10, [R5,#0x229]
REV             R0, R0
STRB            R9, [R5,#0x22A]
STRB            R10, [R5,#0x22D]
STR             R0, [SP,#0x128+var_38]
ADD             R2, SP, #0x128+var_38
MOV             R1, #0
MOV             R0, R6
BL              sub_12C9C4
LDR             R1, =0xC00B
MOV             R0, R4
BL              sub_52FACC
STR             R0, [SP,#0x128+var_118]
ADD             R0, R0, #0xA0
MOV             R11, R0
LDR             R0, [SP,#0x128+var_118]
MOV             R1, R9
BL              sub_5F0474
MOV             R1, R0
ADD             R0, R4, #0x120000
ADD             R0, R0, #0x12C0
MOV             R3, #0
MOV             R2, R11
STR             R9, [SP,#0x128+var_128]
STR             R0, [SP,#0x128+var_11C]
STR             R8, [SP,#0x128+var_120]
STR             R9, [SP,#0x128+var_124]
BL              sub_1137FC
LDR             R0, [SP,#0x128+var_11C]
MOV             R1, #5
MOV             R11, #0xFF
STRB            R10, [R0,#0x68]
STRB            R1, [R0,#0x6A]
STRB            R9, [R0,#0x69]
STRB            R10, [R5,#0x32D]
STRB            R11, [R5,#0x32E]
STRB            R9, [R5,#0x331]
LDR             R0, [SP,#0x128+var_11C]
MOV             R1, #3
STRB            R1, [R0,#0x6F]
LDR             R1, [SP,#0x128+var_118]
MOV             R0, R7
BL              sub_58FF44
LDR             R1, =0xC00D
MOV             R0, R4
BL              sub_52FACC
MOV             R7, R0
ADD             R0, R0, #0xA0
STR             R0, [SP,#0x128+var_118]
MOV             R0, R7
MOV             R1, #0
BL              sub_5F0474
MOV             R1, R0
MOV             R0, #0x100
STR             R0, [SP,#0x128+var_120]
LDR             R0, =0x1213C4
LDR             R2, [SP,#0x128+var_118]
MOV             R3, #0
ADD             R0, R0, R4
MOV             R8, R0
STR             R9, [SP,#0x128+var_128]
STR             R9, [SP,#0x128+var_124]
BL              sub_1137FC
MOV             R1, #5
STRB            R10, [R8,#0x68]
STRB            R1, [R8,#0x6A]
LDR             R1, =0x121431
STRB            R9, [R8,#0x69]
MOV             R0, #0xFF
ADD             R2, R1, #1
STRB            R10, [R4,R1]
ORR             R3, R1, R1,ASR#15
STRB            R0, [R4,R2]
MOV             R0, #3
STRB            R9, [R4,R3]
STRB            R0, [R8,#0x6F]
LDR             R1, =0xC010
MOV             R0, R4
BL              sub_52FACC
MOV             R7, R0
LDR             R0, [R0,#0x9C]
CMP             R0, #0
BEQ             loc_1D6210
MOV             R0, R7
ADD             R0, R0, #0xA0
MOV             R11, R0
MOV             R0, R7
MOV             R1, #0
BL              sub_5F0474
MOV             R1, #0x100
STR             R1, [SP,#0x128+var_120]
MOV             R1, R0
LDR             R0, =0x1214C8
MOV             R3, #0
MOV             R2, R11
ADD             R0, R0, R4
MOV             R7, R0
STR             R9, [SP,#0x128+var_128]
STR             R9, [SP,#0x128+var_124]
BL              sub_1137FC
LDR             R0, =0x121535
MOV             R1, #5
STRB            R10, [R7,#0x68]
STRB            R1, [R7,#0x6A]
ADD             R1, R0, #1
STRB            R9, [R7,#0x69]
ADD             R2, R0, #4
STRB            R10, [R4,R0]
STRB            R9, [R4,R1]
STRB            R10, [R4,R2]
LDR             R1, =0xC011
MOV             R0, R4
BL              sub_52FACC
MOV             R7, R0
NOP
LDR             R0, [R0,#0x9C]
CMP             R0, #0
NOP
BEQ             loc_1D62A0
MOV             R0, R7
ADD             R0, R0, #0xA0
MOV             R11, R0
MOV             R1, #0
MOV             R0, R7
BL              sub_5F0474
MOV             R1, R0
LDR             R0, =0x1215CC
MOV             R2, #0x100
STR             R2, [SP,#0x128+var_120]
ADD             R7, R4, R0
MOV             R3, #0
MOV             R2, R11
MOV             R0, R7
STR             R9, [SP,#0x128+var_128]
STR             R9, [SP,#0x128+var_124]
BL              sub_1137FC
MOV             R0, #5
STRB            R10, [R7,#0x68]
STRB            R0, [R7,#0x6A]
LDR             R0, =0x121639
STRB            R9, [R7,#0x69]
ADD             R1, R0, #1
ORR             R2, R0, R0,ASR#15
STRB            R10, [R4,R0]
STRB            R9, [R4,R1]
STRB            R10, [R4,R2]
LDR             R1, =0xC015
MOV             R0, R4
BL              sub_52FACC
MOV             R11, R0
NOP
LDR             R0, [R0,#0x9C]
CMP             R0, #0
NOP
BEQ             loc_1D6360
LDR             R0, =off_6CE970
MOV             R3, #0
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #8
MOV             R0, #0x3F4
BL              sub_10A358
CMP             R0, #0
NOP
BLNE            sub_14F198
LDR             R1, =0x120F88
MOV             R3, #0
MOV             R2, R3
ADD             R7, R4, R1
MOV             R1, R11
STR             R0, [R7]
BL              sub_14EEC0
MOV             R0, #0x100
MOV             R3, #0
STR             R0, [SP,#0x128+var_124]
STR             R9, [SP,#0x128+var_128]
LDR             R0, [R7]
MOV             R2, R3
MOV             R1, R3
BL              sub_14F048
VLDR            S0, =0.0
LDR             R0, [R7]
VSTR            S0, [SP,#0x128+var_118]
VSTR            S0, [SP,#0x128+var_114]
VSTR            S0, [SP,#0x128+var_110]
LDR             R2, [R0]
ADD             R1, SP, #0x128+var_118
LDR             R2, [R2,#0x20]
BLX             R2
LDR             R0, [R7]
LDR             R1, [R0]
LDR             R2, [R1,#0x1C]
MOV             R1, #1
BLX             R2
LDR             R0, =0x119820
LDR             R1, [SP,#0x128+var_11C]
MOV             R2, R8
ADD             R0, R0, R4
BL              sub_216B30
LDR             R0, [R5,#0x1C0]
MOV             R5, #0
LDRB            R7, [R0]
CMP             R7, #0x14
MOVHI           R7, #0x14
BHI             loc_1D6394
CMP             R7, #0
BLE             loc_1D63BC
LDR             R11, =0x1219DC
AND             R1, R5, #0xFF
MOV             R2, #0
MOV             R0, R6
BL              sub_5F1648
ADD             R1, R4, R5,LSL#2
ADD             R5, R5, #1
CMP             R5, R7
STR             R0, [R1,R11]
BLT             loc_1D6398
LDR             R0, =0x121A2C
LDR             R2, [SP,#0x128+var_11C]
MOV             R3, #0xC
MOV             R1, #0
ADD             R0, R0, R4
BL              sub_14A38C
LDR             R0, =0x121A64
LDR             R2, [SP,#0x128+var_11C]
MOV             R3, #0xC
MOV             R1, #0xA
ADD             R0, R0, R4
BL              sub_14A38C
LDR             R0, =0x121A9C
LDR             R2, [SP,#0x128+var_11C]
MOV             R3, #0xC
MOV             R1, #0x14
ADD             R0, R0, R4
BL              sub_14A38C
LDR             R0, =0x121AD4
MOV             R3, #0xE
MOV             R2, R8
MOV             R1, #0
ADD             R0, R0, R4
BL              sub_14A38C
LDR             R0, =0x121B0C
MOV             R3, #0x15
MOV             R2, R8
MOV             R1, #0xA
ADD             R0, R0, R4
BL              sub_14A38C
LDR             R0, =0x121B44
MOV             R3, #0xE
MOV             R2, R8
MOV             R1, #0x14
ADD             R0, R0, R4
BL              sub_14A38C
LDR             R1, =0xC016
MOV             R0, R4
BL              sub_52FACC
MOV             R5, R0
NOP
LDR             R0, [R0,#0x9C]
CMP             R0, #0
NOP
BEQ             loc_1D64EC
MOV             R0, R5
ADD             R0, R0, #0xA0
MOV             R6, R0
MOV             R0, R5
MOV             R1, #0
BL              sub_5F0474
MOV             R1, R0
LDR             R0, =0x1217D4
MOV             R2, #0x100
STR             R2, [SP,#0x128+var_120]
ADD             R0, R0, R4
MOV             R3, #0
MOV             R2, R6
MOV             R5, R0
STR             R9, [SP,#0x128+var_128]
STR             R9, [SP,#0x128+var_124]
BL              sub_1137FC
LDR             R0, =0xFFEDE7BF
MOV             R1, #5
STRB            R10, [R5,#0x68]
STRB            R1, [R5,#0x6A]
EOR             R3, R0, R0,ASR#19
SUB             R2, R4, R0
SUB             R1, R3, R0,ASR#19
STRB            R9, [R5,#0x69]
MOV             R0, #0xFF
STRB            R10, [R2]
STRB            R0, [R4,R3]
STRB            R10, [R4,R1]
MOV             R1, #3
STRB            R1, [R5,#0x6F]
LDR             R1, =0xC017
MOV             R0, R4
BL              sub_52FACC
MOV             R5, R0
NOP
LDR             R0, [R0,#0x9C]
CMP             R0, #0
NOP
BEQ             loc_1D658C
MOV             R0, R5
ADD             R0, R0, #0xA0
MOV             R6, R0
MOV             R0, R5
MOV             R1, #0
BL              sub_5F0474
MOV             R1, R0
LDR             R0, =0x1218D8
MOV             R2, #0x100
STR             R2, [SP,#0x128+var_120]
ADD             R0, R0, R4
MOV             R3, #0
MOV             R2, R6
MOV             R5, R0
STR             R9, [SP,#0x128+var_128]
STR             R9, [SP,#0x128+var_124]
BL              sub_1137FC
LDR             R0, =0x121945
MOV             R1, #5
STRB            R10, [R5,#0x68]
STRB            R1, [R5,#0x6A]
ADD             R3, R4, R0
ADD             R2, R0, #1
ADD             R1, R0, #4
STRB            R9, [R5,#0x69]
MOV             R0, #0xFF
STRB            R10, [R3]
STRB            R0, [R4,R2]
MOV             R0, #3
STRB            R9, [R4,R1]
STRB            R0, [R5,#0x6F]
MOV             R0, R4
BL              sub_1D4C70
LDR             R0, =0x10D4D8
ADD             R0, R0, R4
MOV             R5, R0
BL              sub_5EBE58
CMP             R0, #0
NOP
BEQ             loc_1D65C0
LDR             R0, =0x11915C
MOV             R1, R5
ADD             R0, R0, R4
BL              loc_2A453C
LDR             R0, =0x10E0A4
ADD             R0, R0, R4
MOV             R5, R0
BL              sub_5EBE58
CMP             R0, #0
NOP
BEQ             loc_1D65EC
LDR             R0, =0x1194B8
MOV             R1, R5
ADD             R0, R0, R4
BL              loc_2A453C
LDR             R0, =off_6CE970
LDR             R1, =0xC00F
LDR             R0, [R0]
BL              sub_52FACC
MOV             R1, #0
NOP
BL              sub_5F0474
LDRH            R1, [R0,#0x64]
LDR             R0, =dword_119814
ADD             R0, R0, R4
BL              sub_123C70
LDR             R0, =0x11981A
ADD             R1, R4, #8
STRH            R9, [R0,R4]
LDR             R0, =0x19D674
ADD             R0, R0, R4
BL              sub_2EA730
MOV             R0, R4
NOP
BL              sub_5290B4
STR             R0, [SP,#0x128+var_34]
LDR             R1, =0xC01B
MOV             R0, R4
BL              sub_52FACC
NOP
NOP
LDR             R0, [R0,#0x9C]
CMP             R0, #0
ADD             R8, R4, #0x1A0000
BEQ             loc_1D682C
MOV             R0, SP
BL              sub_1CCAE4
MOV             R5, #0
MOV             R11, SP
STRB            R9, [SP,#0x128+var_128]
ADD             R0, R5, #0xC000
ADD             R0, R0, #0x1B
UXTH            R1, R0
MOV             R0, R4
BL              sub_52FACC
MOV             R7, R0
MOV             R1, #0
BL              sub_5F0474
ADD             R1, R5, R5,LSL#1
ADD             R6, R11, R1,LSL#2
B               loc_1D675C
DCD 0x19D69A
DCD 0x121B7C
DCD 0x138F24
DCD 0x2000014
DCD 0xFFE683CC
DCD 0x2000016
DCD 0x2000015
DCD 0xC00A
DCD 0x1211BC
DCD 0xC00B
DCD 0xC00D
DCD 0x1213C4
DCD 0x121431
DCD 0xC010
DCD 0x1214C8
DCD 0x121535
DCD 0xC011
DCD 0x1215CC
DCD 0x121639
DCD 0xC015
DCD off_6CE970
DCD 0x120F88
DCFS 0.0
DCD 0x119820
DCD 0x1219DC
DCD 0x121A2C
DCD 0x121A64
DCD 0x121A9C
DCD 0x121AD4
DCD 0x121B0C
DCD 0x121B44
DCD 0xC016
DCD 0x1217D4
DCD 0xFFEDE7BF
DCD 0xC017
DCD 0x1218D8
DCD 0x121945
DCD 0x10D4D8
DCD 0x11915C
DCD 0x10E0A4
DCD 0x1194B8
DCD 0xC00F
DCD dword_119814
DCD 0x11981A
DCD 0x19D674
DCD 0xC01B
STR             R0, [R6,#4]
MOV             R0, R7
ADD             R0, R0, #0xA0
STR             R0, [R6,#8]
MOV             R0, R7
MOV             R1, #1
BL              sub_5F0474
ADD             R5, R5, #1
CMP             R5, #0x11
STR             R0, [R6,#0xC]
BLT             loc_1D6678
LDR             R2, =0x19DFF0
LDR             R0, =0x139014
ADD             R6, SP, #0x128+var_50
SUB             R1, R2, #0x1A8
ADD             R3, R4, R1
ADD             R0, R0, R4
ADD             R2, R2, R4
ADD             R5, R4, #0x1E4
STR             R3, [SP,#0x128+var_44]
STM             R6, {R0,R2,R5}
ADD             R12, R4, #0x140000
ADD             R0, SP, #0x128+var_58
ADD             R12, R12, #0xCB00
ADD             R1, R4, #8
STM             R0, {R1,R12}
MOV             R3, #0x10000
LDR             R0, [R8,#0x58]
MOV             R2, #0
LDRH            R0, [R0,#0xD4]
STRH            R0, [SP,#0x128+var_3C]
MOV             R0, #4
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, SP
BLNE            sub_1CCB44
LDR             R1, =0x19DFE8
ADD             R5, R4, R1
STR             R0, [R5]
MOV             R0, R4
BL              sub_5EE9AC
MOV             R6, R0
MOV             R0, R4
BL              sub_5EE710
LDR             R3, [R5]
MOV             R1, R0
MOV             R2, R6
MOV             R0, R3
BL              sub_1CC69C
LDR             R0, [R5]
LDR             R1, [SP,#0x128+var_34]
BL              sub_1CC86C
LDR             R0, =0x119888
ADD             R0, R0, R4
BL              sub_337620
LDR             R0, =sub_197BBC
ADD             R0, R0, R4
LDR             R0, [R0,#0x20]
MOV             R2, R0
LDR             R0, =sub_196DD8
ADD             R1, R4, #0x190000
ADD             R1, R1, #0x7A00
ADD             R0, R0, R4
BL              sub_4E1A38
NOP
NOP
BL              sub_48004C
CMP             R0, #0
NOP
BEQ             loc_1D6888
MOV             R3, #1
MOV             R2, #3
MOV             R1, #2
MOV             R0, R4
BL              sub_52A660
NOP
BL              sub_48004C
LDR             R11, =dword_6E2378
CMP             R0, #0
BEQ             loc_1D68A8
LDRB            R0, [R11,#(byte_6E2384 - 0x6E2378)]
CMP             R0, #1
BEQ             loc_1D68BC
LDRB            R0, [R11,#(byte_6E238B - 0x6E2378)]
LDR             R7, =unk_653FC0
CMP             R0, #2
BEQ             loc_1D68D0
B               loc_1D6BF8
LDRB            R0, [R11,#(byte_6E2387 - 0x6E2378)]
CMP             R0, #2
CMPNE           R0, #4
STRBEQ          R9, [R11,#(byte_6E2387 - 0x6E2378)]
B               loc_1D68A8
ADD             R5, R4, #0x1A0000
MOV             R3, #0
LDR             R1, =dword_6ED9B8
ADD             R5, R5, #0x64 ; 'd'
MOV             R2, R3
MOV             R0, #0xC10
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_1D6950
STR             R9, [R0]
STR             R9, [R0,#4]!
ADD             R0, R0, #0xC
BL              sub_14F198
LDR             R2, =off_6C31BC
MOV             R1, #2
STR             R2, [R0]
STRB            R1, [R0,#0x3F4]
ADD             R0, R0, #0x3F8
BL              sub_14F198
LDR             R6, =off_6C3158
MOV             R1, #3
STR             R6, [R0]
STRB            R1, [R0,#0x3F4]
ADD             R0, R0, #0x400
ADD             R0, R0, #4
BL              sub_14F198
MOV             R1, #3
STR             R6, [R0]
STRB            R1, [R0,#0x3F4]
SUB             R0, R0, #0x800
SUB             R0, R0, #0xC
LDR             R1, [R5]
STR             R0, [R5]
CMP             R1, #0
BEQ             loc_1D6990
ADD             R0, R1, #0x800
ADD             R0, R0, #0xC
BL              sub_14F3EC
SUB             R0, R0, #0x400
SUB             R0, R0, #4
BL              sub_14F3EC
SUB             R0, R0, #0x3F8
NOP
BL              sub_14F3EC
SUB             R0, R0, #0x10
NOP
BL              sub_300FD4
ADD             R1, R7, #0x4C ; 'L'
LDR             R0, [R5]
LDM             R1, {R1,R2}
ADD             R0, R0, #8
STM             R0, {R1,R2}
MOV             R1, #0
LDR             R0, [R5]
STR             R9, [R0]
LDR             R0, [R5]
STR             R9, [R0,#4]
LDR             R0, [R5]
ADD             R0, R0, #0x10
BL              sub_14C3E8
LDR             R0, [R8,#0x64]
MOV             R1, #3
STRB            R1, [R0,#0x404]
LDR             R0, [R5]
MOV             R1, #2
ADD             R0, R0, #0x10
BL              sub_14C450
LDR             R0, [R5]
MOV             R2, #1
MOV             R1, R2
ADD             R0, R0, #0x10
BL              sub_14B798
VLDR            S17, =120.0
VLDR            S0, =100.0
VLDR            S16, =350.0
VSTR            S17, [SP,#0x128+var_128]
VSTR            S0, [SP,#0x128+var_124]
VSTR            S16, [SP,#0x128+var_120]
LDR             R0, [R5]
MOV             R1, SP
ADD             R0, R0, #0x10
BL              sub_14E984
LDR             R9, =0xC019
MOV             R0, R4
MOV             R1, R9
BL              sub_52FACC
LDR             R1, [R5]
MOV             R2, #0
ADD             R3, R1, #0x10
MOV             R1, R0
MOV             R0, R3
BL              sub_14E6E0
LDR             R0, [R5]
MOV             R2, #0
MOV             R3, #0x100
ADD             R0, R0, #0x10
MOV             R1, R2
BL              sub_14C548
LDR             R0, [R8,#0x64]
MOV             R1, #0
STRB            R10, [R0,#0x102]
LDR             R0, [R5]
ADD             R0, R0, #0x800
ADD             R0, R0, #0xC
BL              sub_14C3E8
LDR             R0, [R5]
MOV             R1, #2
ADD             R0, R0, #0x800
ADD             R0, R0, #0xC
BL              sub_14C450
LDR             R0, [R5]
MOV             R2, #1
MOV             R1, R2
ADD             R0, R0, #0x800
ADD             R0, R0, #0xC
BL              sub_14B798
LDR             R0, [R5]
VLDR            S0, =-102.0
VSTR            S17, [SP,#0x128+var_128]
ADD             R6, R0, #0x800
ADD             R6, R6, #0xC
VSTR            S0, [SP,#0x128+var_124]
MOV             R1, SP
VSTR            S16, [SP,#0x128+var_120]
MOV             R0, R6
BL              sub_14E984
LDMFD           SP, {R0-R2}
ADD             R6, R6, #0x3F8
STM             R6, {R0-R2}
MOV             R1, R9
MOV             R0, R4
BL              sub_52FACC
LDR             R2, [R5]
MOV             R1, R0
ADD             R3, R2, #0x800
ADD             R3, R3, #0xC
MOV             R2, #0
MOV             R0, R3
BL              sub_14E6E0
LDR             R0, [R5]
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R0, #0x800
ADD             R0, R0, #0xC
MOV             R1, #1
BL              sub_14C548
LDR             R0, [R8,#0x64]
MOV             R1, #0
STRB            R10, [R0,#0x8FE]
LDR             R0, [R5]
ADD             R0, R0, #0x400
ADD             R0, R0, #8
BL              sub_14C3E8
LDR             R0, [R5]
MOV             R1, #2
ADD             R0, R0, #0x400
ADD             R0, R0, #8
BL              sub_14C450
LDR             R0, [R5]
MOV             R2, #1
MOV             R1, R2
ADD             R0, R0, #0x400
ADD             R0, R0, #8
BL              sub_14B798
LDR             R0, [R5]
VLDR            S1, =-134.0
VLDR            S0, =-100.0
ADD             R6, R0, #0x400
VSTR            S1, [SP,#0x128+var_128]
ADD             R6, R6, #8
VSTR            S0, [SP,#0x128+var_124]
MOV             R1, SP
VSTR            S16, [SP,#0x128+var_120]
MOV             R0, R6
BL              sub_14E984
LDMFD           SP, {R0-R2}
ADD             R6, R6, #0x3F8
STM             R6, {R0-R2}
SUB             R1, R9, #1
MOV             R0, R4
BL              sub_52FACC
LDR             R2, [R5]
MOV             R1, R0
ADD             R3, R2, #0x400
ADD             R3, R3, #8
MOV             R2, #0
MOV             R0, R3
BL              sub_14E6E0
LDR             R0, [R5]
MOV             R2, #0
MOV             R3, #0x100
ADD             R0, R0, #0x400
ADD             R0, R0, #8
MOV             R1, R2
BL              sub_14C548
LDR             R0, [R8,#0x64]
LDR             R1, =0x19B5C4
STRB            R10, [R0,#0x4FA]
LDR             R0, =dword_6D1F40
LDR             R0, [R0]
STR             R0, [R1,R4]
LDRB            R0, [R11,#(byte_6E2387 - 0x6E2378)]
CMP             R0, #0
LDRDNE          R0, R1, [R7,#(off_65401C - 0x653FC0)]
BEQ             loc_1D6C18
STRD            R0, R1, [R8,#0x5C]
ADD             SP, SP, #0xFC
VPOP            {D8}
POP             {R4-R11,PC}
LDR             R0, =0x19CF48
ADD             R0, R0, R4
LDR             R1, [R0]
ORR             R1, R1, #4
STR             R1, [R0]
LDRD            R0, R1, [R7,#(off_654014 - 0x653FC0)]
B               loc_1D6C08
