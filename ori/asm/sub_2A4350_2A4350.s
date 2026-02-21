PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6B3ED0
STR             R0, [R4]
ADD             R0, R4, #0x190
BL              sub_5B83E4
LDR             R1, =off_6C3340
ADD             R0, R4, #0x190
STR             R1, [R4,#0x190]
BL              sub_5B83E4
ADD             R4, R4, #0x25C
ADD             R0, R4, #0x9C
MOV             R1, #0
BL              sub_62D444
ADD             R0, R4, #0x9C
MOV             R1, #0
BL              sub_62D444
LDR             R0, [R4,#-0x78]!
CMP             R0, #0
LDRNE           R1, =dword_593390
BLNE            sub_3016C0
SUB             R0, R4, #0x70 ; 'p'
NOP
SUB             R4, R0, #0x174
LDR             R0, =off_6B7BFC
LDR             R1, =sub_5A2F60
MOV             R3, #1
STR             R0, [R4,#0x100]!
MOV             R2, #0x28 ; '('
ADD             R0, R4, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R4
NOP
POP             {R4,LR}
SUB             R0, R0, #0x100
B               sub_14CD84
