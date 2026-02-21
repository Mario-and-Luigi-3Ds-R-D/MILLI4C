PUSH            {R4-R10,LR}
MOV             R4, R0
SUB             SP, SP, #0x70
LDR             R0, =off_6C0240
LDR             R3, =0x6A09E667
LDR             R5, =0xBB67AE85
STR             R0, [SP,#0x90+var_90]
MOV             R0, #0
LDR             R6, =0x3C6EF372
LDR             R7, =0xA54FF53A
LDR             R8, =0x510E527F
LDR             R9, =0x9B05688C
LDR             R10, =0x1F83D9AB
LDR             R12, =0x5BE0CD19
ADD             LR, SP, #0x90+var_40
STR             R0, [SP,#0x90+var_48]
STR             R0, [SP,#0x90+var_44]
STR             R0, [SP,#0x90+var_4C]
STM             LR, {R3,R5-R10,R12}
MOV             R0, SP
BL              sub_12AA38
MOV             R0, SP
BL              sub_12A9B0
LDR             R0, [SP,#0x90+var_40]
REV             R0, R0
STR             R0, [R4]
LDR             R0, [SP,#0x90+var_3C]
REV             R0, R0
STR             R0, [R4,#4]
LDR             R0, [SP,#0x90+var_38]
REV             R0, R0
STR             R0, [R4,#8]
LDR             R0, [SP,#0x90+var_34]
REV             R0, R0
STR             R0, [R4,#0xC]
LDR             R0, [SP,#0x90+var_30]
REV             R0, R0
STR             R0, [R4,#0x10]
LDR             R0, [SP,#0x90+var_2C]
REV             R0, R0
STR             R0, [R4,#0x14]
LDR             R0, [SP,#0x90+var_28]
REV             R0, R0
STR             R0, [R4,#0x18]
LDR             R0, [SP,#0x90+var_24]
REV             R0, R0
STR             R0, [R4,#0x1C]
ADD             SP, SP, #0x70 ; 'p'
POP             {R4-R10,PC}
