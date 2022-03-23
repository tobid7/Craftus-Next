	.arch armv6k
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"Chunk.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Chunk_GenerateHeightmap,"ax",%progbits
	.align	2
	.global	Chunk_GenerateHeightmap
	.syntax unified
	.arm
	.fpu vfp
	.type	Chunk_GenerateHeightmap, %function
Chunk_GenerateHeightmap:
.LVL0:
.LFB17:
	.file 1 "/home/tobi/Dokumente/Craftus-Next/source/world/Chunk.c"
	.loc 1 15 44 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 16 2 view .LVU1
	.loc 1 15 44 is_stmt 0 view .LVU2
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 1 16 39 view .LVU3
	add	r3, r0, #65536
	.loc 1 15 44 view .LVU4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
	.loc 1 16 39 view .LVU5
	ldr	r2, [r3, #668]
	str	r3, [sp, #16]
	.loc 1 16 5 view .LVU6
	ldr	r3, [r3, #664]
	.loc 1 15 44 view .LVU7
	str	r0, [sp, #8]
	.loc 1 16 5 view .LVU8
	cmp	r3, r2
	.loc 1 16 39 view .LVU9
	str	r2, [sp, #12]
	.loc 1 16 5 view .LVU10
	beq	.L3
.LBB13:
	.loc 1 17 12 view .LVU11
	mov	r5, #0
.LBB14:
.LBB15:
.LBB16:
.LBB17:
.LBB18:
.LBB19:
	.loc 1 39 17 view .LVU12
	mov	fp, #1
	ldr	r3, [sp, #8]
.LBE19:
.LBE18:
.LBE17:
.LBE16:
.LBE15:
.LBE14:
	.loc 1 17 12 view .LVU13
	str	r5, [sp, #4]
	add	r2, r3, #65536
	add	r10, r3, #65536
	add	r2, r2, #408
	add	r9, r3, #61696
	add	r10, r10, #364
	str	r2, [sp, #20]
	add	r9, r9, #104
.LVL1:
.L2:
.LBB37:
	.loc 1 18 22 is_stmt 1 view .LVU14
	.loc 1 18 13 is_stmt 0 view .LVU15
	mov	r6, #0
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #4]
	add	r8, r2, r3, lsl #8
	ldr	r2, [sp, #20]
	add	r8, r8, #57600
	add	r7, r2, r3, lsl #4
	add	r8, r8, #108
.LVL2:
.L14:
.LBB35:
	.loc 1 19 40 is_stmt 1 view .LVU16
	mov	ip, r10
.LBB29:
.LBB25:
	.loc 1 33 39 is_stmt 0 view .LVU17
	ldr	r3, [ip]
	.loc 1 33 5 view .LVU18
	ldr	r2, [ip, #8]
	mov	r1, r9
	cmp	r2, r3
.LBE25:
.LBE29:
	.loc 1 19 14 view .LVU19
	mov	lr, #7
	add	r0, r8, r6
.LVL3:
	.loc 1 20 6 is_stmt 1 view .LVU20
.LBB30:
.LBI16:
	.loc 1 32 5 view .LVU21
.LBB26:
	.loc 1 33 2 view .LVU22
	.loc 1 33 5 is_stmt 0 view .LVU23
	beq	.L28
.L4:
	.loc 1 34 2 is_stmt 1 view .LVU24
	sub	r4, ip, #8192
	.loc 1 35 25 is_stmt 0 view .LVU25
	str	r3, [ip, #8]
	.loc 1 34 17 view .LVU26
	strb	r5, [ip, #6]
	.loc 1 35 2 is_stmt 1 view .LVU27
	.loc 1 36 2 view .LVU28
.LVL4:
.LBB23:
.LBI18:
	.loc 1 32 5 view .LVU29
.LBB21:
.LBB20:
	.loc 1 36 20 view .LVU30
	sub	r3, r4, #4
	b	.L7
.LVL5:
.L30:
	.loc 1 36 20 is_stmt 0 view .LVU31
	cmp	r3, r1
	beq	.L29
.L7:
	.loc 1 37 3 is_stmt 1 view .LVU32
	.loc 1 36 67 view .LVU33
	.loc 1 36 20 view .LVU34
	.loc 1 37 6 is_stmt 0 view .LVU35
	ldr	r2, [r3, #4]!
	cmp	r2, #0
	beq	.L30
.LVL6:
.L6:
	.loc 1 37 6 view .LVU36
.LBE20:
.LBE21:
.LBE23:
.LBE26:
.LBE30:
	.loc 1 19 14 view .LVU37
	mov	r3, #15
.L11:
.LVL7:
.LBB31:
	.loc 1 22 7 is_stmt 1 view .LVU38
	.loc 1 21 37 view .LVU39
	.loc 1 22 10 is_stmt 0 view .LVU40
	ldrb	r2, [r0, r3, lsl #4]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L31
	.loc 1 21 31 discriminator 2 view .LVU41
	subs	r3, r3, #1
.LVL8:
	.loc 1 21 31 discriminator 2 view .LVU42
	bcs	.L11
.LVL9:
.L25:
	.loc 1 21 31 discriminator 2 view .LVU43
	sub	r4, ip, #8192
.L8:
	.loc 1 21 31 discriminator 2 view .LVU44
.LBE31:
	.loc 1 19 46 is_stmt 1 discriminator 2 view .LVU45
	sub	lr, lr, #1
.LVL10:
	.loc 1 19 40 discriminator 2 view .LVU46
	sub	r1, r1, #8192
	sub	r0, r0, #8192
	cmn	lr, #1
	sub	ip, r4, #48
	sub	r1, r1, #48
	sub	r0, r0, #48
	beq	.L10
	.loc 1 20 6 view .LVU47
.LBB32:
	.loc 1 32 5 view .LVU48
.LBB27:
	.loc 1 33 2 view .LVU49
	.loc 1 33 39 is_stmt 0 view .LVU50
	ldr	r3, [ip]
	.loc 1 33 5 view .LVU51
	ldr	r2, [ip, #8]
	cmp	r2, r3
	bne	.L4
.L28:
	.loc 1 33 51 is_stmt 1 view .LVU52
	.loc 1 33 51 is_stmt 0 view .LVU53
.LBE27:
.LBE32:
	.loc 1 20 9 view .LVU54
	ldrb	r3, [ip, #6]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L25
	b	.L6
.LVL11:
.L31:
.LBB33:
	.loc 1 23 8 is_stmt 1 view .LVU55
	.loc 1 23 46 is_stmt 0 view .LVU56
	add	r3, r3, lr, lsl #4
.LVL12:
	.loc 1 23 46 view .LVU57
	add	r3, r3, #1
	.loc 1 23 31 view .LVU58
	strb	r3, [r7, r6]
	.loc 1 24 8 is_stmt 1 view .LVU59
.LVL13:
	.loc 1 25 8 view .LVU60
	.loc 1 25 8 is_stmt 0 view .LVU61
.LBE33:
	.loc 1 19 46 is_stmt 1 view .LVU62
	.loc 1 19 40 view .LVU63
.L10:
	.loc 1 19 40 is_stmt 0 view .LVU64
.LBE35:
	.loc 1 18 31 is_stmt 1 discriminator 2 view .LVU65
	add	r6, r6, #1
.LVL14:
	.loc 1 18 22 discriminator 2 view .LVU66
	cmp	r6, #16
	bne	.L14
.LBE37:
	.loc 1 17 30 discriminator 2 view .LVU67
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	.loc 1 17 21 is_stmt 0 discriminator 2 view .LVU68
	cmp	r3, #16
	.loc 1 17 30 discriminator 2 view .LVU69
	str	r3, [sp, #4]
.LVL15:
	.loc 1 17 21 is_stmt 1 discriminator 2 view .LVU70
	bne	.L2
.LVL16:
.L3:
	.loc 1 17 21 is_stmt 0 discriminator 2 view .LVU71
.LBE13:
	.loc 1 29 2 is_stmt 1 view .LVU72
	.loc 1 29 27 is_stmt 0 view .LVU73
	ldrd	r2, [sp, #12]
	str	r2, [r3, #664]
	.loc 1 30 1 view .LVU74
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL17:
.L29:
	.cfi_restore_state
.LBB39:
.LBB38:
.LBB36:
.LBB34:
.LBB28:
.LBB24:
.LBB22:
	.loc 1 39 2 is_stmt 1 view .LVU75
	.loc 1 39 17 is_stmt 0 view .LVU76
	strb	fp, [ip, #6]
	.loc 1 40 2 is_stmt 1 view .LVU77
	.loc 1 40 2 is_stmt 0 view .LVU78
	b	.L8
.LBE22:
.LBE24:
.LBE28:
.LBE34:
.LBE36:
.LBE38:
.LBE39:
	.cfi_endproc
.LFE17:
	.size	Chunk_GenerateHeightmap, .-Chunk_GenerateHeightmap
	.section	.text.Cluster_IsEmpty,"ax",%progbits
	.align	2
	.global	Cluster_IsEmpty
	.syntax unified
	.arm
	.fpu vfp
	.type	Cluster_IsEmpty, %function
Cluster_IsEmpty:
.LVL18:
.LFB18:
	.loc 1 32 39 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 33 2 view .LVU80
	.loc 1 33 39 is_stmt 0 view .LVU81
	add	r1, r0, #8192
	ldr	r3, [r1, #4]
	.loc 1 33 5 view .LVU82
	ldr	r2, [r1, #12]
	cmp	r2, r3
	beq	.L38
	.loc 1 34 2 is_stmt 1 view .LVU83
	.loc 1 34 17 is_stmt 0 view .LVU84
	mov	r2, #0
	.loc 1 35 25 view .LVU85
	str	r3, [r1, #12]
	.loc 1 34 17 view .LVU86
	strb	r2, [r1, #10]
	.loc 1 35 2 is_stmt 1 view .LVU87
	.loc 1 36 2 view .LVU88
	.loc 1 36 7 view .LVU89
.LVL19:
.LBB43:
.LBI43:
	.loc 1 32 5 view .LVU90
.LBB44:
.LBB45:
	.loc 1 36 20 view .LVU91
	add	r2, r0, #4096
	b	.L35
.LVL20:
.L40:
	.loc 1 36 20 is_stmt 0 view .LVU92
	cmp	r0, r2
	beq	.L39
.L35:
	.loc 1 37 3 is_stmt 1 view .LVU93
	.loc 1 36 67 view .LVU94
	.loc 1 36 20 view .LVU95
	.loc 1 37 6 is_stmt 0 view .LVU96
	ldr	r3, [r0, #4]!
	cmp	r3, #0
	beq	.L40
	.loc 1 37 51 view .LVU97
	mov	r0, #0
.LVL21:
	.loc 1 37 51 view .LVU98
.LBE45:
.LBE44:
.LBE43:
	.loc 1 41 1 view .LVU99
	bx	lr
.LVL22:
.L38:
	.loc 1 33 51 is_stmt 1 discriminator 1 view .LVU100
	.loc 1 33 65 is_stmt 0 discriminator 1 view .LVU101
	ldrb	r0, [r1, #10]	@ zero_extendqisi2
.LVL23:
	.loc 1 33 65 discriminator 1 view .LVU102
	bx	lr
.LVL24:
.L39:
.LBB47:
.LBB46:
	.loc 1 39 2 is_stmt 1 view .LVU103
	.loc 1 39 17 is_stmt 0 view .LVU104
	mov	r3, #1
	.loc 1 40 8 view .LVU105
	mov	r0, r3
	.loc 1 39 17 view .LVU106
	strb	r3, [r1, #10]
	.loc 1 40 2 is_stmt 1 view .LVU107
	.loc 1 40 8 is_stmt 0 view .LVU108
	bx	lr
.LBE46:
.LBE47:
	.cfi_endproc
.LFE18:
	.size	Cluster_IsEmpty, .-Cluster_IsEmpty
	.global	_seethroughTable
	.global	uuidGenerator
	.section	.rodata
	.align	2
	.type	_seethroughTable, %object
	.size	_seethroughTable, 36
_seethroughTable:
	.ascii	"\377\000\001\003\006\012"
	.ascii	"\000\377\002\004\007\013"
	.ascii	"\001\002\377\005\010\014"
	.ascii	"\003\004\005\377\011\015"
	.ascii	"\006\007\010\011\377\016"
	.ascii	"\012\013\014\015\016\377"
	.data
	.align	2
	.type	uuidGenerator, %object
	.size	uuidGenerator, 4
uuidGenerator:
	.word	314159265
	.text
.Letext0:
	.file 2 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "/home/tobi/Dokumente/Craftus-Next/include/blocks/Block.h"
	.file 5 "/home/tobi/Dokumente/Craftus-Next/include/misc/Xorshift.h"
	.file 6 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/11.2.0/include/stddef.h"
	.file 7 "/home/tobi/Dokumente/Craftus-Next/include/rendering/VBOCache.h"
	.file 8 "/home/tobi/Dokumente/Craftus-Next/include/world/Chunk.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x5d4
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x16
	.4byte	.LASF92
	.byte	0x1d
	.4byte	.LASF93
	.4byte	.LASF94
	.4byte	.LLRL16
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x39
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x53
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x6d
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2d
	.uleb128 0xd
	.4byte	0x90
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x47
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x61
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x8
	.byte	0x11
	.4byte	0x90
	.uleb128 0xe
	.4byte	0x39
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.4byte	0x1c2
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x27
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF56
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x5
	.byte	0x5
	.byte	0x12
	.4byte	0xad
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0x6
	.byte	0xd1
	.byte	0x16
	.4byte	0x89
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF59
	.uleb128 0x18
	.byte	0x4
	.uleb128 0x19
	.byte	0x8
	.byte	0x7
	.byte	0x8
	.byte	0x9
	.4byte	0x20e
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0x7
	.byte	0x9
	.byte	0x9
	.4byte	0x1d5
	.byte	0
	.uleb128 0x6
	.4byte	.LASF61
	.byte	0x7
	.byte	0xa
	.byte	0x8
	.4byte	0x1e8
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0x7
	.byte	0xb
	.byte	0x3
	.4byte	0x1ea
	.uleb128 0x1a
	.2byte	0x2030
	.byte	0x8
	.byte	0x10
	.byte	0x9
	.4byte	0x2cc
	.uleb128 0xa
	.ascii	"y\000"
	.byte	0x11
	.byte	0x6
	.4byte	0x82
	.byte	0
	.uleb128 0x6
	.4byte	.LASF63
	.byte	0x8
	.byte	0x12
	.byte	0x8
	.4byte	0x2cc
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF64
	.byte	0x13
	.byte	0xa
	.4byte	0x2e8
	.2byte	0x1004
	.uleb128 0x5
	.4byte	.LASF65
	.byte	0x15
	.byte	0xb
	.4byte	0xad
	.2byte	0x2004
	.uleb128 0x5
	.4byte	.LASF66
	.byte	0x17
	.byte	0xb
	.4byte	0xa1
	.2byte	0x2008
	.uleb128 0x5
	.4byte	.LASF67
	.byte	0x19
	.byte	0x6
	.4byte	0x304
	.2byte	0x200a
	.uleb128 0x5
	.4byte	.LASF68
	.byte	0x1a
	.byte	0xb
	.4byte	0xad
	.2byte	0x200c
	.uleb128 0x1b
	.ascii	"vbo\000"
	.byte	0x8
	.byte	0x1c
	.byte	0xc
	.4byte	0x20e
	.2byte	0x2010
	.uleb128 0x5
	.4byte	.LASF69
	.byte	0x1c
	.byte	0x11
	.4byte	0x20e
	.2byte	0x2018
	.uleb128 0x5
	.4byte	.LASF70
	.byte	0x1d
	.byte	0x9
	.4byte	0x1d5
	.2byte	0x2020
	.uleb128 0x5
	.4byte	.LASF71
	.byte	0x1d
	.byte	0x13
	.4byte	0x1d5
	.2byte	0x2024
	.uleb128 0x5
	.4byte	.LASF72
	.byte	0x1e
	.byte	0xb
	.4byte	0xad
	.2byte	0x2028
	.uleb128 0x5
	.4byte	.LASF73
	.byte	0x1f
	.byte	0x6
	.4byte	0x304
	.2byte	0x202c
	.byte	0
	.uleb128 0x8
	.4byte	0xb9
	.4byte	0x2e8
	.uleb128 0x4
	.4byte	0x89
	.byte	0xf
	.uleb128 0x4
	.4byte	0x89
	.byte	0xf
	.uleb128 0x4
	.4byte	0x89
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0x90
	.4byte	0x304
	.uleb128 0x4
	.4byte	0x89
	.byte	0xf
	.uleb128 0x4
	.4byte	0x89
	.byte	0xf
	.uleb128 0x4
	.4byte	0x89
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF74
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0x8
	.byte	0x20
	.byte	0x3
	.4byte	0x21a
	.uleb128 0xe
	.4byte	0x39
	.byte	0x8
	.byte	0x22
	.byte	0xe
	.4byte	0x336
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0x8
	.byte	0x26
	.byte	0x3
	.4byte	0x317
	.uleb128 0x1c
	.4byte	0x102ac
	.byte	0x8
	.byte	0x28
	.byte	0x9
	.4byte	0x3fe
	.uleb128 0x6
	.4byte	.LASF80
	.byte	0x8
	.byte	0x2a
	.byte	0xb
	.4byte	0xad
	.byte	0
	.uleb128 0x6
	.4byte	.LASF81
	.byte	0x8
	.byte	0x2b
	.byte	0xb
	.4byte	0xad
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF82
	.byte	0x8
	.byte	0x2d
	.byte	0xb
	.4byte	0xad
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF83
	.byte	0x8
	.byte	0x2f
	.byte	0x13
	.4byte	0x336
	.byte	0xc
	.uleb128 0xa
	.ascii	"x\000"
	.byte	0x31
	.byte	0x6
	.4byte	0x82
	.byte	0x10
	.uleb128 0xa
	.ascii	"z\000"
	.byte	0x31
	.byte	0x9
	.4byte	0x82
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF84
	.byte	0x8
	.byte	0x32
	.byte	0xa
	.4byte	0x3fe
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF85
	.byte	0x34
	.byte	0xa
	.4byte	0x40e
	.4byte	0x10198
	.uleb128 0x7
	.4byte	.LASF86
	.byte	0x35
	.byte	0xb
	.4byte	0xad
	.4byte	0x10298
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x37
	.byte	0x9
	.4byte	0x1d5
	.4byte	0x1029c
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0x39
	.byte	0xb
	.4byte	0xad
	.4byte	0x102a0
	.uleb128 0x7
	.4byte	.LASF73
	.byte	0x3a
	.byte	0x6
	.4byte	0x304
	.4byte	0x102a4
	.uleb128 0x7
	.4byte	.LASF88
	.byte	0x3c
	.byte	0x6
	.4byte	0x82
	.4byte	0x102a8
	.byte	0
	.uleb128 0x8
	.4byte	0x30b
	.4byte	0x40e
	.uleb128 0x4
	.4byte	0x89
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0x90
	.4byte	0x424
	.uleb128 0x4
	.4byte	0x89
	.byte	0xf
	.uleb128 0x4
	.4byte	0x89
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0x8
	.byte	0x3d
	.byte	0x3
	.4byte	0x342
	.uleb128 0xf
	.4byte	.LASF90
	.byte	0x3f
	.byte	0x13
	.4byte	0x1c9
	.uleb128 0x8
	.4byte	0x9c
	.4byte	0x451
	.uleb128 0x4
	.4byte	0x89
	.byte	0x5
	.uleb128 0x4
	.4byte	0x89
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.4byte	0x43b
	.uleb128 0xf
	.4byte	.LASF91
	.byte	0x40
	.byte	0x16
	.4byte	0x451
	.uleb128 0x10
	.4byte	0x430
	.byte	0x3
	.byte	0xc
	.uleb128 0x5
	.byte	0x3
	.4byte	uuidGenerator
	.uleb128 0x10
	.4byte	0x456
	.byte	0x5
	.byte	0xf
	.uleb128 0x5
	.byte	0x3
	.4byte	_seethroughTable
	.uleb128 0x1d
	.4byte	.LASF95
	.byte	0x1
	.byte	0x20
	.byte	0x5
	.4byte	0x304
	.byte	0x1
	.4byte	0x4a5
	.uleb128 0x1e
	.4byte	.LASF96
	.byte	0x1
	.byte	0x20
	.byte	0x1e
	.4byte	0x4a5
	.uleb128 0x1f
	.uleb128 0x20
	.ascii	"i\000"
	.byte	0x1
	.byte	0x24
	.byte	0xb
	.4byte	0x82
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x30b
	.uleb128 0x21
	.4byte	.LASF97
	.byte	0x1
	.byte	0xf
	.byte	0x6
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x57c
	.uleb128 0x22
	.4byte	.LASF98
	.byte	0x1
	.byte	0xf
	.byte	0x25
	.4byte	0x57c
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0xb
	.4byte	.LLRL1
	.uleb128 0x9
	.ascii	"x\000"
	.byte	0x11
	.byte	0xc
	.4byte	0x82
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xb
	.4byte	.LLRL3
	.uleb128 0x9
	.ascii	"z\000"
	.byte	0x12
	.byte	0xd
	.4byte	0x82
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0xb
	.4byte	.LLRL5
	.uleb128 0x9
	.ascii	"i\000"
	.byte	0x13
	.byte	0xe
	.4byte	0x82
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x23
	.4byte	.LLRL10
	.4byte	0x531
	.uleb128 0x9
	.ascii	"j\000"
	.byte	0x15
	.byte	0xf
	.4byte	0x82
	.4byte	.LLST11
	.4byte	.LVUS11
	.byte	0
	.uleb128 0xc
	.4byte	0x47b
	.4byte	.LBI16
	.byte	.LVU21
	.4byte	.LLRL7
	.byte	0x14
	.byte	0xa
	.uleb128 0x12
	.4byte	0x48c
	.uleb128 0xc
	.4byte	0x47b
	.4byte	.LBI18
	.byte	.LVU29
	.4byte	.LLRL8
	.byte	0x20
	.byte	0x5
	.uleb128 0x12
	.4byte	0x48c
	.uleb128 0x13
	.4byte	0x498
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.uleb128 0x14
	.4byte	0x499
	.4byte	.LLST9
	.4byte	.LVUS9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x424
	.uleb128 0x24
	.4byte	0x47b
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	0x48c
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0xc
	.4byte	0x47b
	.4byte	.LBI43
	.byte	.LVU90
	.4byte	.LLRL13
	.byte	0x20
	.byte	0x5
	.uleb128 0x15
	.4byte	0x48c
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x13
	.4byte	0x498
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.uleb128 0x14
	.4byte	0x499
	.4byte	.LLST15
	.4byte	.LVUS15
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x6
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",%progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LFE17-.LVL0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
.LVUS2:
	.uleb128 .LVU14
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 .LVU71
	.uleb128 .LVU75
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL15-.LVL1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x4
	.uleb128 .LVL15-.LVL1
	.uleb128 .LVL16-.LVL1
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL17-.LVL1
	.uleb128 .LFE17-.LVL1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
.LVUS4:
	.uleb128 .LVU14
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 .LVU71
	.uleb128 .LVU75
	.uleb128 0
.LLST4:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL2-.LVL1
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL1
	.uleb128 .LVL16-.LVL1
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL17-.LVL1
	.uleb128 .LFE17-.LVL1
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS6:
	.uleb128 .LVU16
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU64
	.uleb128 .LVU75
	.uleb128 0
.LLST6:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL3-.LVL2
	.uleb128 0x2
	.byte	0x37
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.LVL2
	.uleb128 .LVL13-.LVL2
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL13-.LVL2
	.uleb128 .LVL13-.LVL2
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL13-.LVL2
	.uleb128 .LVL13-.LVL2
	.uleb128 0x3
	.byte	0x9
	.byte	0xfe
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL17-.LVL2
	.uleb128 .LFE17-.LVL2
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS11:
	.uleb128 .LVU38
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 .LVU43
	.uleb128 .LVU55
	.uleb128 .LVU57
.LLST11:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL8-.LVL7
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL8-.LVL7
	.uleb128 .LVL9-.LVL7
	.uleb128 0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.LVL7
	.uleb128 .LVL12-.LVL7
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS9:
	.uleb128 .LVU30
	.uleb128 .LVU31
.LLST9:
	.byte	0x8
	.4byte	.LVL4
	.uleb128 .LVL5-.LVL4
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 .LVU100
	.uleb128 .LVU100
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 .LVU103
	.uleb128 .LVU103
	.uleb128 0
.LLST12:
	.byte	0x6
	.4byte	.LVL18
	.byte	0x4
	.uleb128 .LVL18-.LVL18
	.uleb128 .LVL20-.LVL18
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL20-.LVL18
	.uleb128 .LVL22-.LVL18
	.uleb128 0x4
	.byte	0x72
	.sleb128 -4096
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL22-.LVL18
	.uleb128 .LVL23-.LVL18
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL23-.LVL18
	.uleb128 .LVL24-.LVL18
	.uleb128 0x4
	.byte	0x71
	.sleb128 -8192
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL24-.LVL18
	.uleb128 .LFE18-.LVL18
	.uleb128 0x4
	.byte	0x72
	.sleb128 -4096
	.byte	0x9f
	.byte	0
.LVUS14:
	.uleb128 .LVU90
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 .LVU98
	.uleb128 .LVU103
	.uleb128 0
.LLST14:
	.byte	0x6
	.4byte	.LVL19
	.byte	0x4
	.uleb128 .LVL19-.LVL19
	.uleb128 .LVL20-.LVL19
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL20-.LVL19
	.uleb128 .LVL21-.LVL19
	.uleb128 0x4
	.byte	0x72
	.sleb128 -4096
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL24-.LVL19
	.uleb128 .LFE18-.LVL19
	.uleb128 0x4
	.byte	0x72
	.sleb128 -4096
	.byte	0x9f
	.byte	0
.LVUS15:
	.uleb128 .LVU91
	.uleb128 .LVU92
.LLST15:
	.byte	0x8
	.4byte	.LVL19
	.uleb128 .LVL20-.LVL19
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	0
	.4byte	0
	.section	.debug_rnglists,"",%progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.LLRL1:
	.byte	0x5
	.4byte	.LBB13
	.byte	0x4
	.uleb128 .LBB13-.LBB13
	.uleb128 .LBE13-.LBB13
	.byte	0x4
	.uleb128 .LBB39-.LBB13
	.uleb128 .LBE39-.LBB13
	.byte	0
.LLRL3:
	.byte	0x5
	.4byte	.LBB14
	.byte	0x4
	.uleb128 .LBB14-.LBB14
	.uleb128 .LBE14-.LBB14
	.byte	0x4
	.uleb128 .LBB37-.LBB14
	.uleb128 .LBE37-.LBB14
	.byte	0x4
	.uleb128 .LBB38-.LBB14
	.uleb128 .LBE38-.LBB14
	.byte	0
.LLRL5:
	.byte	0x5
	.4byte	.LBB15
	.byte	0x4
	.uleb128 .LBB15-.LBB15
	.uleb128 .LBE15-.LBB15
	.byte	0x4
	.uleb128 .LBB35-.LBB15
	.uleb128 .LBE35-.LBB15
	.byte	0x4
	.uleb128 .LBB36-.LBB15
	.uleb128 .LBE36-.LBB15
	.byte	0
.LLRL7:
	.byte	0x5
	.4byte	.LBB16
	.byte	0x4
	.uleb128 .LBB16-.LBB16
	.uleb128 .LBE16-.LBB16
	.byte	0x4
	.uleb128 .LBB29-.LBB16
	.uleb128 .LBE29-.LBB16
	.byte	0x4
	.uleb128 .LBB30-.LBB16
	.uleb128 .LBE30-.LBB16
	.byte	0x4
	.uleb128 .LBB32-.LBB16
	.uleb128 .LBE32-.LBB16
	.byte	0x4
	.uleb128 .LBB34-.LBB16
	.uleb128 .LBE34-.LBB16
	.byte	0
.LLRL8:
	.byte	0x5
	.4byte	.LBB18
	.byte	0x4
	.uleb128 .LBB18-.LBB18
	.uleb128 .LBE18-.LBB18
	.byte	0x4
	.uleb128 .LBB23-.LBB18
	.uleb128 .LBE23-.LBB18
	.byte	0x4
	.uleb128 .LBB24-.LBB18
	.uleb128 .LBE24-.LBB18
	.byte	0
.LLRL10:
	.byte	0x5
	.4byte	.LBB31
	.byte	0x4
	.uleb128 .LBB31-.LBB31
	.uleb128 .LBE31-.LBB31
	.byte	0x4
	.uleb128 .LBB33-.LBB31
	.uleb128 .LBE33-.LBB31
	.byte	0
.LLRL13:
	.byte	0x5
	.4byte	.LBB43
	.byte	0x4
	.uleb128 .LBB43-.LBB43
	.uleb128 .LBE43-.LBB43
	.byte	0x4
	.uleb128 .LBB47-.LBB43
	.uleb128 .LBE47-.LBB43
	.byte	0
.LLRL16:
	.byte	0x7
	.4byte	.LFB17
	.uleb128 .LFE17-.LFB17
	.byte	0x7
	.4byte	.LFB18
	.uleb128 .LFE18-.LFB18
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF87:
	.ascii	"displayRevision\000"
.LASF34:
	.ascii	"Block_Snow_Grass\000"
.LASF93:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/source/world/Chun"
	.ascii	"k.c\000"
.LASF41:
	.ascii	"Block_Grass_Path\000"
.LASF92:
	.ascii	"GNU C17 11.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF24:
	.ascii	"Block_Leaves\000"
.LASF84:
	.ascii	"clusters\000"
.LASF31:
	.ascii	"Block_Coarse\000"
.LASF2:
	.ascii	"short int\000"
.LASF58:
	.ascii	"size_t\000"
.LASF94:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/build\000"
.LASF50:
	.ascii	"Block_Diamond_Block\000"
.LASF43:
	.ascii	"Block_Lava\000"
.LASF48:
	.ascii	"Block_Emerald_Ore\000"
.LASF68:
	.ascii	"emptyRevision\000"
.LASF76:
	.ascii	"ChunkGen_Empty\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF47:
	.ascii	"Block_Gold_Ore\000"
.LASF45:
	.ascii	"Block_Coal_Ore\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF15:
	.ascii	"Block\000"
.LASF38:
	.ascii	"Block_Sandstone\000"
.LASF67:
	.ascii	"empty\000"
.LASF30:
	.ascii	"Block_Bedrock\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF62:
	.ascii	"VBO_Block\000"
.LASF16:
	.ascii	"Block_Air\000"
.LASF54:
	.ascii	"Block_Furnace\000"
.LASF91:
	.ascii	"_seethroughTable\000"
.LASF18:
	.ascii	"Block_Dirt\000"
.LASF64:
	.ascii	"metadataLight\000"
.LASF72:
	.ascii	"vboRevision\000"
.LASF61:
	.ascii	"memory\000"
.LASF95:
	.ascii	"Cluster_IsEmpty\000"
.LASF55:
	.ascii	"Blocks_Count\000"
.LASF9:
	.ascii	"long long int\000"
.LASF6:
	.ascii	"long int\000"
.LASF25:
	.ascii	"Block_Glass\000"
.LASF65:
	.ascii	"revision\000"
.LASF82:
	.ascii	"uuid\000"
.LASF90:
	.ascii	"uuidGenerator\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF83:
	.ascii	"genProgress\000"
.LASF85:
	.ascii	"heightmap\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF75:
	.ascii	"Cluster\000"
.LASF35:
	.ascii	"Block_Snow\000"
.LASF59:
	.ascii	"long double\000"
.LASF52:
	.ascii	"Block_Iron_Block\000"
.LASF97:
	.ascii	"Chunk_GenerateHeightmap\000"
.LASF37:
	.ascii	"Block_Netherrack\000"
.LASF0:
	.ascii	"signed char\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF22:
	.ascii	"Block_Log\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF63:
	.ascii	"blocks\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF13:
	.ascii	"uint16_t\000"
.LASF77:
	.ascii	"ChunkGen_Terrain\000"
.LASF57:
	.ascii	"Xorshift32\000"
.LASF88:
	.ascii	"references\000"
.LASF21:
	.ascii	"Block_Sand\000"
.LASF69:
	.ascii	"transparentVBO\000"
.LASF73:
	.ascii	"forceVBOUpdate\000"
.LASF56:
	.ascii	"char\000"
.LASF17:
	.ascii	"Block_Stone\000"
.LASF81:
	.ascii	"graphicalTasksRunning\000"
.LASF66:
	.ascii	"seeThrough\000"
.LASF46:
	.ascii	"Block_Diamond_Ore\000"
.LASF49:
	.ascii	"Block_Gold_Block\000"
.LASF74:
	.ascii	"_Bool\000"
.LASF32:
	.ascii	"Block_Door_Top\000"
.LASF42:
	.ascii	"Block_Water\000"
.LASF70:
	.ascii	"vertices\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF89:
	.ascii	"Chunk\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF26:
	.ascii	"Block_Stonebrick\000"
.LASF23:
	.ascii	"Block_Gravel\000"
.LASF78:
	.ascii	"ChunkGen_Finished\000"
.LASF60:
	.ascii	"size\000"
.LASF29:
	.ascii	"Block_Wool\000"
.LASF96:
	.ascii	"cluster\000"
.LASF80:
	.ascii	"tasksRunning\000"
.LASF28:
	.ascii	"Block_Planks\000"
.LASF33:
	.ascii	"Block_Door_Bottom\000"
.LASF36:
	.ascii	"Block_Obsidian\000"
.LASF39:
	.ascii	"Block_Smooth_Stone\000"
.LASF71:
	.ascii	"transparentVertices\000"
.LASF51:
	.ascii	"Block_Coal_Block\000"
.LASF19:
	.ascii	"Block_Grass\000"
.LASF40:
	.ascii	"Block_Crafting_Table\000"
.LASF27:
	.ascii	"Block_Brick\000"
.LASF53:
	.ascii	"Block_Emerald_Block\000"
.LASF86:
	.ascii	"heightmapRevision\000"
.LASF44:
	.ascii	"Block_Iron_Ore\000"
.LASF98:
	.ascii	"chunk\000"
.LASF20:
	.ascii	"Block_Cobblestone\000"
.LASF79:
	.ascii	"ChunkGenProgress\000"
	.ident	"GCC: (devkitARM release 57) 11.2.0"
