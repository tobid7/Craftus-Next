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
	.file	"FontLoader.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Failed to load font %s\012\000"
	.section	.text.FontLoader_Init,"ax",%progbits
	.align	2
	.global	FontLoader_Init
	.syntax unified
	.arm
	.fpu vfp
	.type	FontLoader_Init, %function
FontLoader_Init:
.LVL0:
.LFB182:
	.file 1 "/home/tobi/Dokumente/Craftus-Next/source/gui/FontLoader.c"
	.loc 1 9 56 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 10 2 view .LVU1
	.loc 1 9 56 is_stmt 0 view .LVU2
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
	.loc 1 11 15 view .LVU3
	mov	r3, #255
	.loc 1 9 56 view .LVU4
	mov	r4, r1
	.loc 1 10 12 view .LVU5
	mov	ip, #0
	.loc 1 9 56 view .LVU6
	sub	sp, sp, #36
	.cfi_def_cfa_offset 72
	.loc 1 11 15 view .LVU7
	str	r3, [sp, #24]
	.loc 1 11 28 view .LVU8
	str	r3, [sp, #28]
	.loc 1 9 56 view .LVU9
	mov	r5, r0
	.loc 1 12 19 view .LVU10
	mov	r3, r4
	add	r2, sp, #28
	add	r1, sp, #24
	add	r0, sp, #20
	.loc 1 10 12 view .LVU11
	str	ip, [sp, #20]
	.loc 1 11 2 is_stmt 1 view .LVU12
	.loc 1 12 2 view .LVU13
	.loc 1 12 19 is_stmt 0 view .LVU14
	bl	lodepng_decode32_file
.LVL1:
	.loc 1 13 2 is_stmt 1 view .LVU15
	.loc 1 13 5 is_stmt 0 view .LVU16
	cmp	r0, #0
	bne	.L2
	.loc 1 13 17 discriminator 1 view .LVU17
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L2
.LBB12:
	.loc 1 14 3 is_stmt 1 view .LVU18
	.loc 1 14 56 is_stmt 0 view .LVU19
	ldr	r3, [sp, #28]
	ldr	r0, [sp, #24]
.LVL2:
	.loc 1 14 56 view .LVU20
	mul	r0, r3, r0
	.loc 1 14 38 view .LVU21
	lsl	r0, r0, #1
	bl	linearAlloc
.LVL3:
.LBB13:
	.loc 1 15 29 view .LVU22
	ldr	r7, [sp, #28]
	ldr	r3, [sp, #24]
.LBE13:
	.loc 1 14 38 view .LVU23
	mov	r4, r0
.LVL4:
	.loc 1 15 3 is_stmt 1 view .LVU24
.LBB17:
	.loc 1 15 8 view .LVU25
	.loc 1 15 21 view .LVU26
	.loc 1 15 29 is_stmt 0 view .LVU27
	mul	r7, r3, r7
	.loc 1 15 21 view .LVU28
	cmp	r7, #0
.LBB14:
	.loc 1 16 23 view .LVU29
	ldr	r8, [sp, #20]
.LBE14:
	.loc 1 15 21 view .LVU30
	beq	.L5
	lsl	r7, r7, #2
	sub	r2, r8, #4
	sub	r0, r0, #2
.LVL5:
	.loc 1 15 21 view .LVU31
	add	ip, r2, r7
.LVL6:
.L4:
.LBB15:
	.loc 1 16 4 is_stmt 1 discriminator 3 view .LVU32
	.loc 1 16 23 is_stmt 0 discriminator 3 view .LVU33
	ldr	r1, [r2, #4]!
.LVL7:
	.loc 1 17 4 is_stmt 1 discriminator 3 view .LVU34
	.loc 1 18 4 discriminator 3 view .LVU35
	.loc 1 19 4 discriminator 3 view .LVU36
	.loc 1 20 4 discriminator 3 view .LVU37
	.loc 1 20 24 is_stmt 0 discriminator 3 view .LVU38
	lsl	r3, r1, #8
	.loc 1 20 36 discriminator 3 view .LVU39
	lsr	lr, r1, #5
	and	lr, lr, #1984
	.loc 1 20 24 discriminator 3 view .LVU40
	and	r3, r3, #63488
	.loc 1 20 31 discriminator 3 view .LVU41
	orr	r3, r3, lr
	.loc 1 20 47 discriminator 3 view .LVU42
	lsr	lr, r1, #18
	.loc 1 20 53 discriminator 3 view .LVU43
	orr	r3, r3, r1, lsr #31
	.loc 1 20 47 discriminator 3 view .LVU44
	and	r1, lr, #62
.LVL8:
	.loc 1 20 53 discriminator 3 view .LVU45
	orr	r3, r3, r1
.LBE15:
	.loc 1 15 21 discriminator 3 view .LVU46
	cmp	ip, r2
.LBB16:
	.loc 1 20 19 discriminator 3 view .LVU47
	strh	r3, [r0, #2]!	@ movhi
.LBE16:
	.loc 1 15 40 is_stmt 1 discriminator 3 view .LVU48
	.loc 1 15 21 discriminator 3 view .LVU49
	bne	.L4
.LVL9:
.L5:
	.loc 1 15 21 is_stmt 0 discriminator 3 view .LVU50
.LBE17:
	.loc 1 23 7 view .LVU51
	mov	r9, #0
	add	r8, r8, #8
	sub	r10, r5, #1
.L6:
.LVL10:
.LBB18:
.LBB19:
	.loc 1 25 22 is_stmt 1 view .LVU52
.LBB20:
.LBB21:
	.loc 1 29 17 is_stmt 0 view .LVU53
	mov	r0, r8
.LBE21:
.LBE20:
	.loc 1 25 13 view .LVU54
	mov	r1, #0
	add	r6, r10, r9
.LVL11:
.L11:
.LBB26:
.LBB24:
	.loc 1 28 27 is_stmt 1 view .LVU55
.LBE24:
.LBE26:
.LBE19:
.LBE18:
.LBE12:
	.loc 1 9 56 is_stmt 0 view .LVU56
	mov	ip, r0
.LBB34:
.LBB31:
.LBB30:
.LBB27:
	.loc 1 26 9 view .LVU57
	mov	lr, #2
.LVL12:
.L8:
.LBB25:
	.loc 1 29 6 is_stmt 1 view .LVU58
	.loc 1 30 6 view .LVU59
.LBB22:
	.loc 1 31 15 is_stmt 0 view .LVU60
	mov	r3, #0
.LBE22:
	.loc 1 29 17 view .LVU61
	mov	r2, r3
	.loc 1 30 12 view .LVU62
	add	lr, lr, #1
.LVL13:
	.loc 1 31 6 is_stmt 1 view .LVU63
.LBB23:
	.loc 1 31 11 view .LVU64
	.loc 1 31 24 view .LVU65
.L7:
	.loc 1 31 34 discriminator 3 view .LVU66
	ldr	fp, [ip, r3, lsl #9]
	.loc 1 31 30 is_stmt 0 discriminator 3 view .LVU67
	add	r3, r3, #1
.LVL14:
	.loc 1 31 30 discriminator 3 view .LVU68
	cmp	fp, #0
	orrne	r2, r2, #1
.LVL15:
	.loc 1 31 30 is_stmt 1 discriminator 3 view .LVU69
	.loc 1 31 24 discriminator 3 view .LVU70
	cmp	r3, #8
	bne	.L7
.LVL16:
	.loc 1 31 24 is_stmt 0 discriminator 3 view .LVU71
.LBE23:
	.loc 1 28 27 is_stmt 1 discriminator 1 view .LVU72
	cmp	lr, #7
	movgt	r2, #0
	andle	r2, r2, #1
.LVL17:
	.loc 1 28 27 is_stmt 0 discriminator 1 view .LVU73
	cmp	r2, #0
	add	ip, ip, #4
	bne	.L8
.LBE25:
	.loc 1 34 5 is_stmt 1 discriminator 2 view .LVU74
	.loc 1 34 5 is_stmt 0 discriminator 2 view .LVU75
.LBE27:
	.loc 1 25 31 discriminator 2 view .LVU76
	add	r1, r1, #8
.LVL18:
	.loc 1 25 22 discriminator 2 view .LVU77
	cmp	r1, #128
.LBB28:
	.loc 1 34 26 discriminator 2 view .LVU78
	strb	lr, [r6, #1]!
.LBE28:
	.loc 1 25 31 is_stmt 1 discriminator 2 view .LVU79
.LVL19:
	.loc 1 25 22 discriminator 2 view .LVU80
	add	r0, r0, #32
	bne	.L11
.LBB29:
	.loc 1 34 22 is_stmt 0 discriminator 2 view .LVU81
	add	r9, r9, #16
.LBE29:
.LBE30:
	.loc 1 24 30 is_stmt 1 discriminator 2 view .LVU82
.LVL20:
	.loc 1 24 21 discriminator 2 view .LVU83
	cmp	r9, #256
	add	r8, r8, #4096
	bne	.L6
.LBE31:
	.loc 1 38 3 view .LVU84
	mov	r1, r7
.LVL21:
	.loc 1 38 3 is_stmt 0 view .LVU85
	mov	r0, r4
	str	r2, [sp, #12]
	bl	GSPGPU_FlushDataCache
.LVL22:
	.loc 1 39 3 is_stmt 1 view .LVU86
	ldr	r0, [sp, #20]
	bl	free
.LVL23:
	.loc 1 41 3 view .LVU87
	ldrh	r0, [sp, #28]
.LVL24:
.LBB32:
.LBI32:
	.file 2 "/opt/devkitpro/libctru/include/c3d/texture.h"
	.loc 2 112 19 view .LVU88
.LBB33:
	.loc 2 114 2 view .LVU89
	.loc 2 115 22 is_stmt 0 view .LVU90
	ldrh	r3, [sp, #24]
	.loc 2 114 9 view .LVU91
	ldr	r2, [sp, #12]
	mov	r1, r2
	orr	r2, r3, r0, lsl #16
	mov	r3, #2080
	add	r0, r5, #256
.LVL25:
	.loc 2 114 9 view .LVU92
	bl	C3D_TexInitWithParams
.LVL26:
	.loc 2 114 9 view .LVU93
.LBE33:
.LBE32:
	.loc 1 44 3 is_stmt 1 view .LVU94
	.loc 1 45 41 is_stmt 0 view .LVU95
	ldr	r2, [sp, #28]
	.loc 1 45 55 view .LVU96
	ldrh	r3, [sp, #24]
	.loc 1 44 3 view .LVU97
	ldr	r1, .L21
	.loc 1 45 46 view .LVU98
	orr	r3, r3, r2, lsl #16
	.loc 1 44 3 view .LVU99
	mov	r0, r4
	ldr	r2, [r5, #256]
	str	r1, [sp]
	mov	r1, r3
	bl	C3D_SyncDisplayTransfer
.LVL27:
	.loc 1 49 3 is_stmt 1 view .LVU100
	mov	r0, r4
	bl	linearFree
.LVL28:
.LBE34:
	.loc 1 53 1 is_stmt 0 view .LVU101
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL29:
.L2:
	.cfi_restore_state
	.loc 1 51 3 is_stmt 1 view .LVU102
	mov	r1, r4
	ldr	r0, .L21+4
.LVL30:
	.loc 1 51 3 is_stmt 0 view .LVU103
	bl	Crash
.LVL31:
	.loc 1 53 1 view .LVU104
	add	sp, sp, #36
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL32:
.L22:
	.loc 1 53 1 view .LVU105
	.align	2
.L21:
	.word	13059
	.word	.LC0
	.cfi_endproc
.LFE182:
	.size	FontLoader_Init, .-FontLoader_Init
	.text
.Letext0:
	.file 3 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/11.2.0/include/stddef.h"
	.file 6 "/opt/devkitpro/libctru/include/3ds/types.h"
	.file 7 "/opt/devkitpro/libctru/include/3ds/gpu/gx.h"
	.file 8 "/opt/devkitpro/libctru/include/3ds/gpu/enums.h"
	.file 9 "/home/tobi/Dokumente/Craftus-Next/include/gui/FontLoader.h"
	.file 10 "/home/tobi/Dokumente/Craftus-Next/include/misc/Crash.h"
	.file 11 "/opt/devkitpro/libctru/include/3ds/allocator/linear.h"
	.file 12 "/opt/devkitpro/libctru/include/c3d/renderqueue.h"
	.file 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h"
	.file 14 "/opt/devkitpro/libctru/include/3ds/services/gspgpu.h"
	.file 15 "/home/tobi/Dokumente/Craftus-Next/dependencies/lodepng/lodepng.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x7c5
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1f
	.4byte	.LASF89
	.byte	0x1d
	.4byte	.LASF90
	.4byte	.LASF91
	.4byte	.LLRL27
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x39
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x39
	.byte	0x1c
	.4byte	0x53
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4d
	.byte	0x12
	.4byte	0x66
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x79
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x20
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x2d
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2c
	.byte	0x13
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x6d
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0xd1
	.byte	0x16
	.4byte	0x95
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.4byte	.LASF18
	.uleb128 0xc
	.ascii	"u8\000"
	.byte	0x15
	.byte	0x11
	.4byte	0x9c
	.uleb128 0xc
	.ascii	"u16\000"
	.byte	0x16
	.byte	0x12
	.4byte	0xa8
	.uleb128 0xc
	.ascii	"u32\000"
	.byte	0x17
	.byte	0x12
	.4byte	0xc0
	.uleb128 0xc
	.ascii	"s32\000"
	.byte	0x1c
	.byte	0x11
	.4byte	0xb4
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x2a
	.byte	0xd
	.4byte	0xff
	.uleb128 0x21
	.byte	0x4
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.4byte	.LASF20
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF21
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.uleb128 0x22
	.4byte	0x126
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF23
	.uleb128 0x6
	.4byte	0xf4
	.uleb128 0x6
	.4byte	0x143
	.uleb128 0x23
	.uleb128 0x6
	.4byte	0x39
	.uleb128 0x6
	.4byte	0x12d
	.uleb128 0xd
	.4byte	0x39
	.byte	0x7
	.byte	0x13
	.4byte	0x178
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	0x39
	.byte	0x7
	.byte	0x22
	.4byte	0x196
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.4byte	0x39
	.byte	0x8
	.byte	0x2d
	.4byte	0x1c6
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x8
	.byte	0x34
	.byte	0x3
	.4byte	0x196
	.uleb128 0xd
	.4byte	0x39
	.byte	0x8
	.byte	0x40
	.4byte	0x232
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x8
	.byte	0x4f
	.byte	0x3
	.4byte	0x1d2
	.uleb128 0x9
	.byte	0x18
	.byte	0x4
	.byte	0x9
	.4byte	0x254
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x2
	.byte	0x6
	.byte	0x8
	.4byte	0x254
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	0x116
	.4byte	0x264
	.uleb128 0x1b
	.4byte	0x95
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x2
	.byte	0x7
	.byte	0x3
	.4byte	0x23e
	.uleb128 0x12
	.byte	0xb
	.4byte	0x28d
	.uleb128 0x13
	.4byte	.LASF55
	.byte	0xd
	.byte	0x9
	.4byte	0x116
	.uleb128 0x13
	.4byte	.LASF56
	.byte	0xe
	.byte	0x10
	.4byte	0x28d
	.byte	0
	.uleb128 0x6
	.4byte	0x264
	.uleb128 0x9
	.byte	0x4
	.byte	0x17
	.byte	0x3
	.4byte	0x2b5
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x2
	.byte	0x19
	.byte	0x8
	.4byte	0xe9
	.byte	0
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0x2
	.byte	0x1a
	.byte	0x8
	.4byte	0xe9
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.byte	0x14
	.4byte	0x2cd
	.uleb128 0x24
	.ascii	"dim\000"
	.byte	0x2
	.byte	0x16
	.byte	0x7
	.4byte	0xf4
	.uleb128 0x1c
	.4byte	0x292
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x23
	.byte	0x3
	.4byte	0x2fd
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0x2
	.byte	0x25
	.byte	0x8
	.4byte	0xe9
	.byte	0
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0x2
	.byte	0x26
	.byte	0x7
	.4byte	0xdf
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0x2
	.byte	0x27
	.byte	0x7
	.4byte	0xdf
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.byte	0x20
	.4byte	0x314
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0x22
	.byte	0x7
	.4byte	0xf4
	.uleb128 0x1c
	.4byte	0x2cd
	.byte	0
	.uleb128 0x9
	.byte	0x18
	.byte	0x9
	.byte	0x9
	.4byte	0x364
	.uleb128 0x14
	.4byte	0x270
	.byte	0
	.uleb128 0x25
	.ascii	"fmt\000"
	.byte	0x2
	.byte	0x11
	.byte	0xf
	.4byte	0x232
	.byte	0x4
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x12
	.byte	0x9
	.4byte	0xcc
	.byte	0x1c
	.byte	0x24
	.uleb128 0x14
	.4byte	0x2b5
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF64
	.byte	0x2
	.byte	0x1e
	.byte	0x6
	.4byte	0xf4
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x2
	.byte	0x1f
	.byte	0x6
	.4byte	0xf4
	.byte	0x10
	.uleb128 0x14
	.4byte	0x2fd
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x2
	.byte	0x2a
	.byte	0x3
	.4byte	0x314
	.uleb128 0x9
	.byte	0x8
	.byte	0x2c
	.byte	0x9
	.4byte	0x3c7
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0x2
	.byte	0x2e
	.byte	0x6
	.4byte	0xe9
	.byte	0
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x2
	.byte	0x2f
	.byte	0x6
	.4byte	0xe9
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x30
	.byte	0x5
	.4byte	0xdf
	.byte	0x4
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x31
	.byte	0xf
	.4byte	0x232
	.byte	0x4
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x32
	.byte	0x19
	.4byte	0x1c6
	.byte	0x3
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x33
	.byte	0x6
	.4byte	0x132
	.byte	0x1
	.byte	0x2b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x2
	.byte	0x34
	.byte	0x3
	.4byte	0x370
	.uleb128 0x26
	.2byte	0x118
	.byte	0x9
	.byte	0x7
	.byte	0x9
	.4byte	0x3f9
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0x9
	.byte	0x8
	.byte	0xa
	.4byte	0x3f9
	.byte	0
	.uleb128 0x27
	.4byte	.LASF72
	.byte	0x9
	.byte	0x9
	.byte	0xa
	.4byte	0x364
	.2byte	0x100
	.byte	0
	.uleb128 0x1a
	.4byte	0x9c
	.4byte	0x409
	.uleb128 0x1b
	.4byte	0x95
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x9
	.byte	0xa
	.byte	0x3
	.4byte	0x3d3
	.uleb128 0x6
	.4byte	0x144
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0x2
	.byte	0x36
	.byte	0x5
	.4byte	0x132
	.4byte	0x43a
	.uleb128 0x2
	.4byte	0x43a
	.uleb128 0x2
	.4byte	0x28d
	.uleb128 0x2
	.4byte	0x3c7
	.byte	0
	.uleb128 0x6
	.4byte	0x364
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0xa
	.byte	0x3
	.4byte	0x451
	.uleb128 0x2
	.4byte	0x149
	.uleb128 0x28
	.byte	0
	.uleb128 0xf
	.4byte	.LASF75
	.byte	0xb
	.byte	0x29
	.4byte	0x462
	.uleb128 0x2
	.4byte	0x116
	.byte	0
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0xc
	.byte	0x4d
	.4byte	0x487
	.uleb128 0x2
	.4byte	0x139
	.uleb128 0x2
	.4byte	0xf4
	.uleb128 0x2
	.4byte	0x139
	.uleb128 0x2
	.4byte	0xf4
	.uleb128 0x2
	.4byte	0xf4
	.byte	0
	.uleb128 0xf
	.4byte	.LASF77
	.byte	0xd
	.byte	0x5e
	.4byte	0x498
	.uleb128 0x2
	.4byte	0x116
	.byte	0
	.uleb128 0xe
	.4byte	.LASF79
	.byte	0xe
	.byte	0xd2
	.byte	0x8
	.4byte	0x10a
	.4byte	0x4b3
	.uleb128 0x2
	.4byte	0x13e
	.uleb128 0x2
	.4byte	0xf4
	.byte	0
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0xb
	.byte	0xc
	.byte	0x7
	.4byte	0x116
	.4byte	0x4c9
	.uleb128 0x2
	.4byte	0xcc
	.byte	0
	.uleb128 0xe
	.4byte	.LASF81
	.byte	0xf
	.byte	0x8a
	.byte	0xa
	.4byte	0x95
	.4byte	0x4ee
	.uleb128 0x2
	.4byte	0x415
	.uleb128 0x2
	.4byte	0x4ee
	.uleb128 0x2
	.4byte	0x4ee
	.uleb128 0x2
	.4byte	0x149
	.byte	0
	.uleb128 0x6
	.4byte	0x95
	.uleb128 0x29
	.4byte	.LASF92
	.byte	0x1
	.byte	0x9
	.byte	0x6
	.4byte	.LFB182
	.4byte	.LFE182-.LFB182
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x781
	.uleb128 0x1d
	.4byte	.LASF82
	.byte	0x1c
	.4byte	0x781
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x1d
	.4byte	.LASF83
	.byte	0x2e
	.4byte	0x149
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0xa
	.byte	0xc
	.4byte	0x786
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0xb
	.byte	0xf
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0xb
	.byte	0x1c
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.4byte	.LASF85
	.byte	0xc
	.byte	0xb
	.4byte	0xc0
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x16
	.4byte	.LLRL3
	.4byte	0x741
	.uleb128 0x10
	.4byte	.LASF86
	.byte	0xe
	.byte	0xd
	.4byte	0x78b
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x8
	.ascii	"c\000"
	.byte	0x17
	.byte	0x7
	.4byte	0x8e
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x16
	.4byte	.LLRL6
	.4byte	0x5fc
	.uleb128 0x8
	.ascii	"i\000"
	.byte	0xf
	.byte	0xc
	.4byte	0x8e
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0xb
	.4byte	.LLRL8
	.uleb128 0x8
	.ascii	"r\000"
	.byte	0x10
	.byte	0xd
	.4byte	0xa8
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x8
	.ascii	"g\000"
	.byte	0x11
	.byte	0xd
	.4byte	0xa8
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x8
	.ascii	"b\000"
	.byte	0x12
	.byte	0xd
	.4byte	0xa8
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x8
	.ascii	"a\000"
	.byte	0x13
	.byte	0xd
	.4byte	0xa8
	.4byte	.LLST12
	.4byte	.LVUS12
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LLRL13
	.4byte	0x681
	.uleb128 0x2a
	.ascii	"y\000"
	.byte	0x1
	.byte	0x18
	.byte	0xc
	.4byte	0x8e
	.uleb128 0xb
	.4byte	.LLRL14
	.uleb128 0x8
	.ascii	"x\000"
	.byte	0x19
	.byte	0xd
	.4byte	0x8e
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0xb
	.4byte	.LLRL16
	.uleb128 0x10
	.4byte	.LASF87
	.byte	0x1a
	.byte	0x9
	.4byte	0x8e
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x10
	.4byte	.LASF88
	.byte	0x1b
	.byte	0x9
	.4byte	0x132
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0xb
	.4byte	.LLRL19
	.uleb128 0x8
	.ascii	"i\000"
	.byte	0x1c
	.byte	0xe
	.4byte	0x8e
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0xb
	.4byte	.LLRL21
	.uleb128 0x8
	.ascii	"j\000"
	.byte	0x1f
	.byte	0xf
	.4byte	0x8e
	.4byte	.LLST22
	.4byte	.LVUS22
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	0x790
	.4byte	.LBI32
	.byte	.LVU88
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.byte	0x29
	.byte	0x3
	.4byte	0x6e8
	.uleb128 0x11
	.4byte	0x7bd
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x11
	.4byte	0x7b3
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x11
	.4byte	0x7a9
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x11
	.4byte	0x79d
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x17
	.4byte	.LVL26
	.4byte	0x41a
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x75
	.sleb128 256
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL3
	.4byte	0x4b3
	.uleb128 0x18
	.4byte	.LVL22
	.4byte	0x498
	.4byte	0x70b
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL23
	.4byte	0x487
	.uleb128 0x18
	.4byte	.LVL27
	.4byte	0x462
	.4byte	0x730
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3303
	.byte	0
	.uleb128 0x17
	.4byte	.LVL28
	.4byte	0x451
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL1
	.4byte	0x4c9
	.4byte	0x767
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL31
	.4byte	0x43f
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x409
	.uleb128 0x6
	.4byte	0xc0
	.uleb128 0x6
	.4byte	0xa8
	.uleb128 0x2c
	.4byte	.LASF93
	.byte	0x2
	.byte	0x70
	.byte	0x13
	.4byte	0x132
	.byte	0x3
	.uleb128 0x2d
	.ascii	"tex\000"
	.byte	0x2
	.byte	0x70
	.byte	0x2c
	.4byte	0x43a
	.uleb128 0x19
	.4byte	.LASF58
	.byte	0x35
	.4byte	0xe9
	.uleb128 0x19
	.4byte	.LASF57
	.byte	0x40
	.4byte	0xe9
	.uleb128 0x19
	.4byte	.LASF67
	.byte	0x55
	.4byte	0x232
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 112
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0x1e
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
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
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
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
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-1-.LVL0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL1-1-.LVL0
	.uleb128 .LVL32-.LVL0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL32-.LVL0
	.uleb128 .LFE182-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-1-.LVL0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL1-1-.LVL0
	.uleb128 .LVL4-.LVL0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL4-.LVL0
	.uleb128 .LVL29-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL29-.LVL0
	.uleb128 .LVL32-.LVL0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL32-.LVL0
	.uleb128 .LFE182-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU15
	.uleb128 .LVU20
	.uleb128 .LVU102
	.uleb128 .LVU103
.LLST2:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL2-.LVL1
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL29-.LVL1
	.uleb128 .LVL30-.LVL1
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS4:
	.uleb128 .LVU24
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 .LVU102
.LLST4:
	.byte	0x6
	.4byte	.LVL4
	.byte	0x4
	.uleb128 .LVL4-.LVL4
	.uleb128 .LVL5-.LVL4
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL5-.LVL4
	.uleb128 .LVL29-.LVL4
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS5:
	.uleb128 .LVU52
	.uleb128 .LVU55
	.uleb128 .LVU83
	.uleb128 .LVU102
.LLST5:
	.byte	0x6
	.4byte	.LVL10
	.byte	0x4
	.uleb128 .LVL10-.LVL10
	.uleb128 .LVL11-.LVL10
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL20-.LVL10
	.uleb128 .LVL29-.LVL10
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS7:
	.uleb128 .LVU26
	.uleb128 .LVU32
.LLST7:
	.byte	0x8
	.4byte	.LVL4
	.uleb128 .LVL6-.LVL4
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 .LVU34
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU50
.LLST9:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL8-.LVL7
	.uleb128 0x7
	.byte	0x71
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.LVL7
	.uleb128 .LVL9-.LVL7
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x33
	.byte	0x25
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 .LVU35
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU50
.LLST10:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL8-.LVL7
	.uleb128 0x7
	.byte	0x71
	.sleb128 0
	.byte	0x3b
	.byte	0x25
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.LVL7
	.uleb128 .LVL9-.LVL7
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x3b
	.byte	0x25
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS11:
	.uleb128 .LVU36
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU50
.LLST11:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL8-.LVL7
	.uleb128 0x7
	.byte	0x71
	.sleb128 0
	.byte	0x43
	.byte	0x25
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.LVL7
	.uleb128 .LVL9-.LVL7
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x43
	.byte	0x25
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 .LVU37
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU50
.LLST12:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL8-.LVL7
	.uleb128 0x5
	.byte	0x71
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.LVL7
	.uleb128 .LVL9-.LVL7
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x4f
	.byte	0x25
	.byte	0x9f
	.byte	0
.LVUS15:
	.uleb128 .LVU52
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 .LVU85
.LLST15:
	.byte	0x6
	.4byte	.LVL10
	.byte	0x4
	.uleb128 .LVL10-.LVL10
	.uleb128 .LVL11-.LVL10
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.LVL10
	.uleb128 .LVL18-.LVL10
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL18-.LVL10
	.uleb128 .LVL19-.LVL10
	.uleb128 0x3
	.byte	0x71
	.sleb128 -8
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL19-.LVL10
	.uleb128 .LVL21-.LVL10
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS17:
	.uleb128 .LVU55
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU86
.LLST17:
	.byte	0x6
	.4byte	.LVL11
	.byte	0x4
	.uleb128 .LVL11-.LVL11
	.uleb128 .LVL12-.LVL11
	.uleb128 0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL12-.LVL11
	.uleb128 .LVL22-1-.LVL11
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS18:
	.uleb128 .LVU55
	.uleb128 .LVU59
	.uleb128 .LVU59
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU73
.LLST18:
	.byte	0x6
	.4byte	.LVL11
	.byte	0x4
	.uleb128 .LVL11-.LVL11
	.uleb128 .LVL12-.LVL11
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL12-.LVL11
	.uleb128 .LVL13-.LVL11
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL13-.LVL11
	.uleb128 .LVL17-.LVL11
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS20:
	.uleb128 .LVU55
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 .LVU86
.LLST20:
	.byte	0x6
	.4byte	.LVL11
	.byte	0x4
	.uleb128 .LVL11-.LVL11
	.uleb128 .LVL12-.LVL11
	.uleb128 0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL12-.LVL11
	.uleb128 .LVL13-.LVL11
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL13-.LVL11
	.uleb128 .LVL16-.LVL11
	.uleb128 0x3
	.byte	0x7e
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.LVL11
	.uleb128 .LVL22-1-.LVL11
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS22:
	.uleb128 .LVU65
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 .LVU86
.LLST22:
	.byte	0x6
	.4byte	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL13-.LVL13
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL14-.LVL13
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL14-.LVL13
	.uleb128 .LVL15-.LVL13
	.uleb128 0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL15-.LVL13
	.uleb128 .LVL22-1-.LVL13
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS23:
	.uleb128 .LVU89
	.uleb128 .LVU93
.LLST23:
	.byte	0x8
	.4byte	.LVL24
	.uleb128 .LVL26-.LVL24
	.uleb128 0x2
	.byte	0x32
	.byte	0x9f
	.byte	0
.LVUS24:
	.uleb128 .LVU88
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 .LVU93
.LLST24:
	.byte	0x6
	.4byte	.LVL24
	.byte	0x4
	.uleb128 .LVL24-.LVL24
	.uleb128 .LVL25-.LVL24
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL25-.LVL24
	.uleb128 .LVL26-1-.LVL24
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
.LVUS25:
	.uleb128 .LVU88
	.uleb128 .LVU93
.LLST25:
	.byte	0x8
	.4byte	.LVL24
	.uleb128 .LVL26-1-.LVL24
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
.LVUS26:
	.uleb128 .LVU88
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 .LVU93
.LLST26:
	.byte	0x6
	.4byte	.LVL24
	.byte	0x4
	.uleb128 .LVL24-.LVL24
	.uleb128 .LVL25-.LVL24
	.uleb128 0x4
	.byte	0x75
	.sleb128 256
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL25-.LVL24
	.uleb128 .LVL26-1-.LVL24
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL26-1-.LVL24
	.uleb128 .LVL26-.LVL24
	.uleb128 0x4
	.byte	0x75
	.sleb128 256
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB182
	.4byte	.LFE182-.LFB182
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
.LLRL3:
	.byte	0x5
	.4byte	.LBB12
	.byte	0x4
	.uleb128 .LBB12-.LBB12
	.uleb128 .LBE12-.LBB12
	.byte	0x4
	.uleb128 .LBB34-.LBB12
	.uleb128 .LBE34-.LBB12
	.byte	0
.LLRL6:
	.byte	0x5
	.4byte	.LBB13
	.byte	0x4
	.uleb128 .LBB13-.LBB13
	.uleb128 .LBE13-.LBB13
	.byte	0x4
	.uleb128 .LBB17-.LBB13
	.uleb128 .LBE17-.LBB13
	.byte	0
.LLRL8:
	.byte	0x5
	.4byte	.LBB14
	.byte	0x4
	.uleb128 .LBB14-.LBB14
	.uleb128 .LBE14-.LBB14
	.byte	0x4
	.uleb128 .LBB15-.LBB14
	.uleb128 .LBE15-.LBB14
	.byte	0x4
	.uleb128 .LBB16-.LBB14
	.uleb128 .LBE16-.LBB14
	.byte	0
.LLRL13:
	.byte	0x5
	.4byte	.LBB18
	.byte	0x4
	.uleb128 .LBB18-.LBB18
	.uleb128 .LBE18-.LBB18
	.byte	0x4
	.uleb128 .LBB31-.LBB18
	.uleb128 .LBE31-.LBB18
	.byte	0
.LLRL14:
	.byte	0x5
	.4byte	.LBB19
	.byte	0x4
	.uleb128 .LBB19-.LBB19
	.uleb128 .LBE19-.LBB19
	.byte	0x4
	.uleb128 .LBB30-.LBB19
	.uleb128 .LBE30-.LBB19
	.byte	0
.LLRL16:
	.byte	0x5
	.4byte	.LBB20
	.byte	0x4
	.uleb128 .LBB20-.LBB20
	.uleb128 .LBE20-.LBB20
	.byte	0x4
	.uleb128 .LBB26-.LBB20
	.uleb128 .LBE26-.LBB20
	.byte	0x4
	.uleb128 .LBB27-.LBB20
	.uleb128 .LBE27-.LBB20
	.byte	0x4
	.uleb128 .LBB28-.LBB20
	.uleb128 .LBE28-.LBB20
	.byte	0x4
	.uleb128 .LBB29-.LBB20
	.uleb128 .LBE29-.LBB20
	.byte	0
.LLRL19:
	.byte	0x5
	.4byte	.LBB21
	.byte	0x4
	.uleb128 .LBB21-.LBB21
	.uleb128 .LBE21-.LBB21
	.byte	0x4
	.uleb128 .LBB24-.LBB21
	.uleb128 .LBE24-.LBB21
	.byte	0x4
	.uleb128 .LBB25-.LBB21
	.uleb128 .LBE25-.LBB21
	.byte	0
.LLRL21:
	.byte	0x5
	.4byte	.LBB22
	.byte	0x4
	.uleb128 .LBB22-.LBB22
	.uleb128 .LBE22-.LBB22
	.byte	0x4
	.uleb128 .LBB23-.LBB22
	.uleb128 .LBE23-.LBB22
	.byte	0
.LLRL27:
	.byte	0x7
	.4byte	.LFB182
	.uleb128 .LFE182-.LFB182
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF41:
	.ascii	"GPU_RGBA5551\000"
.LASF81:
	.ascii	"lodepng_decode32_file\000"
.LASF46:
	.ascii	"GPU_L8\000"
.LASF89:
	.ascii	"GNU C17 11.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF82:
	.ascii	"font\000"
.LASF68:
	.ascii	"type\000"
.LASF17:
	.ascii	"size_t\000"
.LASF91:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/build\000"
.LASF53:
	.ascii	"GPU_TEXCOLOR\000"
.LASF75:
	.ascii	"linearFree\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF36:
	.ascii	"GPU_TEX_SHADOW_CUBE\000"
.LASF83:
	.ascii	"filename\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF88:
	.ascii	"foundPixel\000"
.LASF62:
	.ascii	"lodParam\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF73:
	.ascii	"Font\000"
.LASF2:
	.ascii	"short int\000"
.LASF24:
	.ascii	"GX_TRANSFER_FMT_RGBA8\000"
.LASF59:
	.ascii	"lodBias\000"
.LASF79:
	.ascii	"GSPGPU_FlushDataCache\000"
.LASF52:
	.ascii	"GPU_ETC1A4\000"
.LASF19:
	.ascii	"Result\000"
.LASF77:
	.ascii	"free\000"
.LASF31:
	.ascii	"GX_TRANSFER_SCALE_XY\000"
.LASF58:
	.ascii	"width\000"
.LASF87:
	.ascii	"length\000"
.LASF21:
	.ascii	"float\000"
.LASF26:
	.ascii	"GX_TRANSFER_FMT_RGB565\000"
.LASF10:
	.ascii	"long long int\000"
.LASF78:
	.ascii	"C3D_TexInitWithParams\000"
.LASF56:
	.ascii	"cube\000"
.LASF7:
	.ascii	"long int\000"
.LASF92:
	.ascii	"FontLoader_Init\000"
.LASF86:
	.ascii	"imgInLinRam\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF61:
	.ascii	"minLevel\000"
.LASF49:
	.ascii	"GPU_L4\000"
.LASF30:
	.ascii	"GX_TRANSFER_SCALE_X\000"
.LASF80:
	.ascii	"linearAlloc\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF18:
	.ascii	"long double\000"
.LASF50:
	.ascii	"GPU_A4\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF74:
	.ascii	"Crash\000"
.LASF47:
	.ascii	"GPU_A8\000"
.LASF27:
	.ascii	"GX_TRANSFER_FMT_RGB5A1\000"
.LASF60:
	.ascii	"maxLevel\000"
.LASF0:
	.ascii	"signed char\000"
.LASF37:
	.ascii	"GPU_TEX_DISABLED\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF57:
	.ascii	"height\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF76:
	.ascii	"C3D_SyncDisplayTransfer\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF29:
	.ascii	"GX_TRANSFER_SCALE_NO\000"
.LASF70:
	.ascii	"C3D_TexInitParams\000"
.LASF33:
	.ascii	"GPU_TEX_CUBE_MAP\000"
.LASF40:
	.ascii	"GPU_RGB8\000"
.LASF64:
	.ascii	"param\000"
.LASF69:
	.ascii	"onVram\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF54:
	.ascii	"C3D_TexCube\000"
.LASF45:
	.ascii	"GPU_HILO8\000"
.LASF22:
	.ascii	"char\000"
.LASF34:
	.ascii	"GPU_TEX_SHADOW_2D\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF48:
	.ascii	"GPU_LA4\000"
.LASF23:
	.ascii	"_Bool\000"
.LASF44:
	.ascii	"GPU_LA8\000"
.LASF72:
	.ascii	"texture\000"
.LASF66:
	.ascii	"C3D_Tex\000"
.LASF43:
	.ascii	"GPU_RGBA4\000"
.LASF55:
	.ascii	"data\000"
.LASF39:
	.ascii	"GPU_RGBA8\000"
.LASF51:
	.ascii	"GPU_ETC1\000"
.LASF38:
	.ascii	"GPU_TEXTURE_MODE_PARAM\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF93:
	.ascii	"C3D_TexInitVRAM\000"
.LASF90:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/source/gui/FontLo"
	.ascii	"ader.c\000"
.LASF84:
	.ascii	"image\000"
.LASF35:
	.ascii	"GPU_TEX_PROJECTION\000"
.LASF63:
	.ascii	"size\000"
.LASF42:
	.ascii	"GPU_RGB565\000"
.LASF28:
	.ascii	"GX_TRANSFER_FMT_RGBA4\000"
.LASF71:
	.ascii	"fontWidth\000"
.LASF85:
	.ascii	"error\000"
.LASF25:
	.ascii	"GX_TRANSFER_FMT_RGB8\000"
.LASF20:
	.ascii	"double\000"
.LASF32:
	.ascii	"GPU_TEX_2D\000"
.LASF67:
	.ascii	"format\000"
.LASF65:
	.ascii	"border\000"
	.ident	"GCC: (devkitARM release 57) 11.2.0"
