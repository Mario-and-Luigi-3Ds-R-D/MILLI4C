PUSH            {R4-R10}
MOV             R4, R1,LSR#7
BIC             R12, R1, #1
ADD             R4, R12, R4,LSL#1
LDR             R6, =dword_6D2418
LDM             R6, {R3,R12}
ADD             R4, R3, R4,LSL#2
ADD             R4, R4, #8
CMP             R12, R4
STRLS           R12, [R6]
BLS             loc_1407C8
CMP             R1, #0
MOV             R5, #0
SUBHI           R7, R5, #0x100000
BLS             loc_1407C4
ADD             R12, R2, R5,LSL#2
SUB             R8, R1, R5
LDR             R4, [R12],#4
CMP             R8, #0x80
MOVHI           R8, #0x80
STR             R4, [R3],#4
MOV             R4, R8,LSR#1
ADD             R9, R0, R5
ADD             R8, R7, R8,LSL#20
ORR             R8, R8, R9
ORR             R8, R8, #0x80000000
ORR             R8, R8, #0xF0000
CMN             R4, #0x80000001
STR             R8, [R3],#4
BLS             loc_140784
LDR             R8, [R12],#4
SUBS            R4, R4, #1
STR             R8, [R3],#4
LDR             R8, [R12],#4
STR             R8, [R3],#4
BNE             loc_140768
B               loc_1407B8
MOV             R9, R4,LSL#1
CMP             R9, #0
BLE             loc_1407B8
SUB             R12, R12, #4
SUB             R8, R3, #4
MOV             R9, R9,ASR#1
LDR             R10, [R12,#4]
SUBS            R9, R9, #1
STR             R10, [R8,#4]
LDR             R10, [R12,#8]!
STR             R10, [R8,#8]!
BNE             loc_14079C
ADD             R3, R3, R4,LSL#3
ADD             R5, R5, #0x80
CMP             R5, R1
BCC             loc_14072C
STR             R3, [R6]
POP             {R4-R10}
BX              LR
