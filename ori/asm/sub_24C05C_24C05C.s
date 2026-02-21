LDR             R1, =off_6BBADC
PUSH            {R4,LR}
STR             R1, [R0],#0x30
BL              sub_14F3EC
SUB             R4, R0, #0x30 ; '0'
LDR             R0, [R0,#-0x10]
ADD             R4, R4, #0x20 ; ' '
CMP             R0, #0
BEQ             loc_24C08C
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R1, [R4,#8]
ADD             R2, R4, #4
CMP             R1, R2
BNE             loc_24C0D0
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_24C0B4
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
MOV             R1, #0
MOV             R0, R4
STR             R1, [R4]
BL              sub_629344
POP             {R4,LR}
SUB             R0, R0, #0x20 ; ' '
B               sub_300FD4
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_24C0B4
