SUBS            R3, R0, R1
CMPCS           R2, R3
BLS             sub_127EB8
ADD             R0, R0, R2
TST             R0, #3
ADD             R1, R1, R2
SUBNE           R2, R2, #1
LDRBNE          R3, [R1,#-1]!
STRBNE          R3, [R0,#-1]!
TST             R0, #3
BNE             loc_127E44
SUBS            R2, R2, #0x10
BCC             loc_127E78
PUSH            {R4,LR}
LDMDB           R1!, {R3,R4,R12,LR}
SUBS            R2, R2, #0x10
STMDB           R0!, {R3,R4,R12,LR}
BCS             loc_127E64
POP             {R4,LR}
MOVS            R3, R2,LSL#29
LDMDBCS         R1!, {R3,R12}
STMDBCS         R0!, {R3,R12}
LDRMI           R3, [R1,#-4]!
STRMI           R3, [R0,#-4]!
TST             R2, #3
BXEQ            LR
MOVS            R2, R2,LSL#31
LDRHCS          R3, [R1,#-2]!
LDRBMI          R2, [R1,#-1]
STRHCS          R3, [R0,#-2]!
STRBMI          R2, [R0,#-1]
BX              LR
