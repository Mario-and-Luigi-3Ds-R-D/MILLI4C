PUSH            {R4-R8,LR}
MOV             R6, R1
MOV             R7, R0
ADD             R0, R2, #0xC
LDR             R1, [R2,#8]
MOV             R4, R2
LDM             R0, {R0,R2}
MOV             R5, #0
LDR             R3, =off_6CE970
SXTH            R1, R1
CMP             R2, #0
LDR             R2, =0x19B5C8
LDR             R3, [R3]
AND             R12, R0, #0xFF
ADD             R1, R1, R1,LSR#31
ADD             R3, R3, R2
MOVNE           R0, #1
LDRH            R2, [R3,#8]
MOVEQ           R0, #0
MOV             R1, R1,ASR#1
SUB             R2, R2, #1
SXTH            R2, R2
CMP             R1, R2
MOVGE           R1, R2
BGE             loc_212938
CMP             R1, #0
MOVLE           R1, R5
CMP             R0, #0
MOV             R5, #0
BEQ             loc_2129B8
CMP             R1, #0
LDRSHGE         R8, [R3,#6]
BLT             loc_212A14
RSB             R0, R1, #0
ADD             R0, R0, R8
SXTH            R0, R0
CMP             R0, #0
LDRSHLT         R2, [R3,#4]
BGE             loc_212978
ADD             R0, R0, R2
SXTH            R0, R0
CMP             R0, #0
BLT             loc_212968
LDRSH           R2, [R3,#4]
CMP             R2, R0
BGT             loc_212994
SUB             R0, R0, R2
SXTH            R0, R0
CMP             R2, R0
BLE             loc_212984
ADD             R0, R0, R0,LSL#3
LDR             R2, [R3]
ADD             R0, R0, R0,LSL#1
SUBS            R1, R1, #1
ADD             R0, R2, R0,LSL#2
LDR             R0, [R0,R12,LSL#2]
ORR             R5, R5, R0
BPL             loc_212950
B               loc_212A14
RSB             R0, R1, #0
LDRH            R1, [R3,#6]
ADD             R0, R0, R1
SXTH            R0, R0
CMP             R0, #0
LDRSHLT         R1, [R3,#4]
BGE             loc_2129E4
ADD             R0, R0, R1
SXTH            R0, R0
CMP             R0, #0
BLT             loc_2129D4
LDRSH           R1, [R3,#4]
CMP             R1, R0
BGT             loc_212A00
SUB             R0, R0, R1
SXTH            R0, R0
CMP             R1, R0
BLE             loc_2129F0
ADD             R0, R0, R0,LSL#3
LDR             R1, [R3]
ADD             R0, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#2
LDR             R5, [R0,R12,LSL#2]
MOV             R0, R5
BL              sub_1464D4
LDR             R3, =0x2F0B
MOV             R1, R5,LSL#24
MOV             R2, R5,LSR#28
MOV             R1, R1,LSR#28
AND             R3, R3, R5
ORR             R3, R3, R0
ORR             R1, R3, R1,LSL#16
ORR             R0, R1, R2,LSL#20
BIC             R0, R0, #0xFF000000
VMOV            S0, R0
CMP             R6, #0
LDRH            R0, [R4,#2]
ADDNE           R2, R6, #4
MOVEQ           R2, #0
MOV             R1, R7
VCVT.F32.U32    S0, S0
BL              sub_145730
MOV             R0, #0
POP             {R4-R8,PC}
