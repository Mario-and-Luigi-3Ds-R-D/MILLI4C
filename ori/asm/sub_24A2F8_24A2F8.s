LDR             R1, =off_6B3B90
PUSH            {R4,LR}
ADD             R2, R1, #0x24 ; '$'
STM             R0, {R1,R2}
ADD             R0, R0, #0x400
ADD             R0, R0, #0xEC
NOP
SUB             R0, R0, #0x400
BL              sub_14F3EC
SUB             R0, R0, #0xE8
BL              sub_437288
SUB             R0, R0, #4
POP             {R4,PC}
