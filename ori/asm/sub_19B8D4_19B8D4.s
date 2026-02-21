PUSH            {R4,LR}
SUB             SP, SP, #0x10
MOV             R4, R0
MOV             R1, SP
BL              sub_19BD30
LDR             R0, =off_6D1648
LDR             R0, [R0]
BL              sub_1E4614
ADD             R1, R0, #0x108
LDR             R0, [R0,#0x110]
LDM             R1, {R1,R2}
ADD             R3, R4, #0xC8
STR             R0, [R4,#0xD0]
ADD             R4, R4, #0xBC
STM             R3, {R1,R2}
LDMFD           SP, {R0-R2}
STM             R4, {R0-R2}
ADD             SP, SP, #0x10
POP             {R4,PC}
