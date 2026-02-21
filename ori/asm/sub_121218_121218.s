PUSH            {R0,R1,R4-R12,LR}
MOV             R8, R1
LDR             R0, =off_6D307C
LDR             R7, [R0,#(dword_6D3080 - 0x6D307C)]
CMP             R7, #0
BEQ             loc_1212C4
ADD             R0, R7, #0x350
LDM             R0, {R0,R1}
ADD             R9, R0, R7
MOV             R4, R9
ADD             R11, R9, R1,LSL#5
SUB             R0, R11, R9
MOV             R5, R0,ASR#5
CMP             R5, #0
BLE             loc_121290
ADD             R0, R5, R5,LSR#31
MOV             R2, #0x20 ; ' '
MOV             R6, R0,ASR#1
MOV             R1, R8
ADD             R10, R4, R6,LSL#5
MOV             R0, R10
BLX             sub_1004FC
CMP             R0, #0
MOVGE           R5, R6
BGE             loc_121288
SUB             R0, R5, R6
ADD             R4, R10, #0x20 ; ' '
SUB             R5, R0, #1
CMP             R5, #0
BGT             loc_121254
CMP             R4, R11
BEQ             loc_1212B8
SUB             R0, R4, R9
MOV             R0, R0,ASR#5
CMN             R0, #1
BEQ             loc_1212B8
LDR             R1, [SP,#0x30+var_30]
STR             R7, [R1]
ADD             SP, SP, #8
POP             {R4-R12,PC}
LDR             R7, [R7,#8]
CMP             R7, #0
BNE             loc_121230
ADD             SP, SP, #8
MOV             R0, #0xFFFFFFFF
POP             {R4-R12,PC}
