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
	.file	"VBOCache.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.sort_by_size,"ax",%progbits
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	sort_by_size, %function
sort_by_size:
.LVL0:
.LFB103:
	.file 1 "/home/tobi/Dokumente/Craftus-Next/source/rendering/VBOCache.c"
	.loc 1 42 55 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 42 57 view .LVU1
	.loc 1 42 86 is_stmt 0 view .LVU2
	ldr	r3, [r0]
	ldr	r0, [r1]
.LVL1:
	.loc 1 42 111 view .LVU3
	sub	r0, r0, r3
	bx	lr
	.cfi_endproc
.LFE103:
	.size	sort_by_size, .-sort_by_size
	.section	.text.VBOCache_Init,"ax",%progbits
	.align	2
	.global	VBOCache_Init
	.syntax unified
	.arm
	.fpu vfp
	.type	VBOCache_Init, %function
VBOCache_Init:
.LFB100:
	.loc 1 11 22 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 12 2 view .LVU5
	mov	r2, #0
	ldr	r3, .L4
	.loc 1 13 2 is_stmt 0 view .LVU6
	add	r0, r3, #12
	.loc 1 12 2 view .LVU7
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	.loc 1 13 2 is_stmt 1 view .LVU8
	b	LightLock_Init
.LVL2:
.L5:
	.align	2
.L4:
	.word	.LANCHOR0
	.cfi_endproc
.LFE100:
	.size	VBOCache_Init, .-VBOCache_Init
	.section	.text.VBOCache_Deinit,"ax",%progbits
	.align	2
	.global	VBOCache_Deinit
	.syntax unified
	.arm
	.fpu vfp
	.type	VBOCache_Deinit, %function
VBOCache_Deinit:
.LFB101:
	.loc 1 15 24 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 16 2 view .LVU10
	.loc 1 17 2 view .LVU11
	.loc 1 18 2 view .LVU12
	.loc 1 15 24 is_stmt 0 view .LVU13
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 18 21 view .LVU14
	ldr	r5, .L11
	.loc 1 18 5 view .LVU15
	ldr	r3, [r5, #4]
	cmp	r3, #0
	ble	.L7
	.loc 1 18 46 view .LVU16
	mov	r4, #0
.L8:
.LVL3:
	.loc 1 18 136 is_stmt 1 discriminator 4 view .LVU17
	.loc 1 18 93 is_stmt 0 discriminator 4 view .LVU18
	ldr	r3, [r5]
	add	r3, r3, r4, lsl #3
	.loc 1 18 136 discriminator 4 view .LVU19
	ldr	r0, [r3, #4]
	bl	linearFree
.LVL4:
	.loc 1 18 127 is_stmt 1 discriminator 4 view .LVU20
	.loc 1 18 80 is_stmt 0 discriminator 4 view .LVU21
	ldr	r3, [r5, #4]
	.loc 1 18 127 discriminator 4 view .LVU22
	add	r4, r4, #1
.LVL5:
	.loc 1 18 80 is_stmt 1 discriminator 4 view .LVU23
	cmp	r3, r4
	bgt	.L8
.LVL6:
.L7:
	.loc 1 19 2 view .LVU24
	.loc 1 19 4 is_stmt 0 view .LVU25
	ldr	r0, [r5]
	bl	free
.LVL7:
	.loc 1 19 32 view .LVU26
	mov	r3, #0
	str	r3, [r5]
	str	r3, [r5, #4]
	str	r3, [r5, #8]
	.loc 1 20 1 view .LVU27
	pop	{r4, r5, r6, pc}
.L12:
	.align	2
.L11:
	.word	.LANCHOR0
	.cfi_endproc
.LFE101:
	.size	VBOCache_Deinit, .-VBOCache_Deinit
	.section	.text.VBO_Alloc,"ax",%progbits
	.align	2
	.global	VBO_Alloc
	.syntax unified
	.arm
	.fpu vfp
	.type	VBO_Alloc, %function
VBO_Alloc:
.LVL8:
.LFB102:
	.loc 1 22 34 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 23 2 view .LVU29
	.loc 1 22 34 is_stmt 0 view .LVU30
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 23 2 view .LVU31
	ldr	r6, .L22
	.loc 1 22 34 view .LVU32
	mov	r5, r0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 32
	.loc 1 23 2 view .LVU33
	add	r0, r6, #12
.LVL9:
	.loc 1 22 34 view .LVU34
	mov	r4, r1
	.loc 1 23 2 view .LVU35
	bl	LightLock_Lock
.LVL10:
	.loc 1 24 2 is_stmt 1 view .LVU36
	.loc 1 24 17 is_stmt 0 view .LVU37
	ldr	lr, [r6, #4]
	.loc 1 24 5 view .LVU38
	cmp	lr, #0
	ble	.L14
.LBB2:
	.loc 1 27 110 view .LVU39
	ldr	r0, [r6]
	.loc 1 27 47 view .LVU40
	mov	r3, #0
	mov	r1, r0
.L15:
.LVL11:
	.loc 1 27 94 discriminator 4 view .LVU41
	ldr	r2, [r0, r3, lsl #3]
.LVL12:
	.loc 1 28 4 is_stmt 1 discriminator 4 view .LVU42
	.loc 1 28 7 is_stmt 0 discriminator 4 view .LVU43
	cmp	r2, r4
	.loc 1 28 41 discriminator 4 view .LVU44
	sub	ip, r2, r4
	.loc 1 28 7 discriminator 4 view .LVU45
	bcc	.L16
	.loc 1 28 27 discriminator 1 view .LVU46
	cmp	ip, #2048
	bls	.L21
.L16:
	.loc 1 27 128 is_stmt 1 discriminator 3 view .LVU47
	add	r3, r3, #1
.LVL13:
	.loc 1 27 81 discriminator 3 view .LVU48
	cmp	lr, r3
	add	r1, r1, #8
.LVL14:
	.loc 1 27 81 is_stmt 0 discriminator 3 view .LVU49
	bne	.L15
.LVL15:
.L14:
	.loc 1 27 81 discriminator 3 view .LVU50
.LBE2:
	.loc 1 35 2 is_stmt 1 view .LVU51
	.loc 1 36 2 view .LVU52
	.loc 1 36 17 is_stmt 0 view .LVU53
	mov	r0, r4
	bl	linearAlloc
.LVL16:
	mov	r7, r0
	.loc 1 38 2 view .LVU54
	ldr	r0, .L22+4
.LVL17:
	.loc 1 37 2 is_stmt 1 view .LVU55
	.loc 1 38 2 view .LVU56
	bl	LightLock_Unlock
.LVL18:
	.loc 1 39 2 view .LVU57
	.loc 1 40 1 is_stmt 0 view .LVU58
	mov	r0, r5
.LBB3:
	.loc 1 31 12 view .LVU59
	stm	r5, {r4, r7}
.LVL19:
	.loc 1 31 12 view .LVU60
.LBE3:
	.loc 1 40 1 view .LVU61
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL20:
.L21:
	.cfi_restore_state
.LBB4:
	.loc 1 27 94 view .LVU62
	mov	r4, r2
.LVL21:
	.loc 1 29 7 view .LVU63
	mov	r2, #1
.LVL22:
	.loc 1 27 94 view .LVU64
	ldr	r7, [r1, #4]
	.loc 1 29 5 is_stmt 1 view .LVU65
	.loc 1 29 7 is_stmt 0 view .LVU66
	str	r2, [sp, #4]
.LVL23:
	.loc 1 29 7 view .LVU67
	ldr	r2, .L22+8
	str	r3, [sp]
	sub	r0, r2, #8
	sub	r1, r2, #4
	mov	r3, #8
.LVL24:
	.loc 1 29 7 view .LVU68
	bl	vec_splice_
.LVL25:
	.loc 1 29 163 view .LVU69
	ldr	r3, [r6, #4]
	.loc 1 30 5 view .LVU70
	ldr	r0, .L22+4
	.loc 1 29 163 view .LVU71
	sub	r3, r3, #1
	str	r3, [r6, #4]
	.loc 1 30 5 is_stmt 1 view .LVU72
	bl	LightLock_Unlock
.LVL26:
	.loc 1 31 5 view .LVU73
	.loc 1 31 5 is_stmt 0 view .LVU74
.LBE4:
	.loc 1 40 1 view .LVU75
	mov	r0, r5
.LBB5:
	.loc 1 31 12 view .LVU76
	stm	r5, {r4, r7}
.LBE5:
	.loc 1 40 1 view .LVU77
	add	sp, sp, #12
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL27:
.L23:
	.loc 1 40 1 view .LVU78
	.align	2
.L22:
	.word	.LANCHOR0
	.word	.LANCHOR0+12
	.word	.LANCHOR0+8
	.cfi_endproc
.LFE102:
	.size	VBO_Alloc, .-VBO_Alloc
	.section	.text.VBO_Free,"ax",%progbits
	.align	2
	.global	VBO_Free
	.syntax unified
	.arm
	.fpu vfp
	.type	VBO_Free, %function
VBO_Free:
.LFB104:
	.loc 1 44 32 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 45 2 view .LVU80
	.loc 1 44 32 is_stmt 0 view .LVU81
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 1 44 32 view .LVU82
	mov	r4, sp
	.loc 1 45 5 view .LVU83
	subs	r3, r0, #0
	.loc 1 44 32 view .LVU84
	stm	r4, {r0, r1}
	.loc 1 45 5 view .LVU85
	beq	.L24
	.loc 1 45 21 discriminator 1 view .LVU86
	cmp	r1, #0
	beq	.L24
	.loc 1 46 3 is_stmt 1 view .LVU87
	ldr	r5, .L35
	add	r0, r5, #12
	bl	LightLock_Lock
.LVL28:
	.loc 1 47 3 view .LVU88
	.loc 1 47 5 is_stmt 0 view .LVU89
	mov	r3, #8
	add	r1, r5, #4
	add	r2, r5, r3
	mov	r0, r5
	bl	vec_expand_
.LVL29:
	.loc 1 47 136 view .LVU90
	cmp	r0, #0
	.loc 1 47 153 view .LVU91
	ldrdeq	r2, [r5]
	.loc 1 47 182 view .LVU92
	addeq	ip, r3, #1
	.loc 1 47 186 view .LVU93
	addeq	r3, r2, r3, lsl #3
	.loc 1 47 174 view .LVU94
	ldmne	r5, {r2, ip}
	.loc 1 47 186 view .LVU95
	ldrdeq	r0, [r4]
	.loc 1 47 182 view .LVU96
	streq	ip, [r5, #4]
	.loc 1 47 186 view .LVU97
	strdeq	r0, [r3]
	.loc 1 48 3 is_stmt 1 view .LVU98
	mov	r0, r2
	mov	r1, ip
	mov	r2, #8
	ldr	r3, .L35+4
	bl	qsort
.LVL30:
	.loc 1 49 3 view .LVU99
	ldr	r0, .L35+8
	.loc 1 51 1 is_stmt 0 view .LVU100
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 49 3 view .LVU101
	b	LightLock_Unlock
.LVL31:
.L24:
	.cfi_restore_state
	.loc 1 51 1 view .LVU102
	add	sp, sp, #12
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.L36:
	.align	2
.L35:
	.word	.LANCHOR0
	.word	sort_by_size
	.word	.LANCHOR0+12
	.cfi_endproc
.LFE104:
	.size	VBO_Free, .-VBO_Free
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	freedBlocks, %object
	.size	freedBlocks, 12
freedBlocks:
	.space	12
	.type	lock, %object
	.size	lock, 4
lock:
	.space	4
	.text
.Letext0:
	.file 2 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/11.2.0/include/stddef.h"
	.file 4 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h"
	.file 6 "/home/tobi/Dokumente/Craftus-Next/include/rendering/VBOCache.h"
	.file 7 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h"
	.file 8 "/opt/devkitpro/libctru/include/3ds/synchronization.h"
	.file 9 "/opt/devkitpro/libctru/include/3ds/services/csnd.h"
	.file 10 "/opt/devkitpro/libctru/include/3ds/services/ndm.h"
	.file 11 "/opt/devkitpro/libctru/include/3ds/gpu/enums.h"
	.file 12 "/opt/devkitpro/libctru/include/3ds/ndsp/channel.h"
	.file 13 "/opt/devkitpro/libctru/include/3ds/applets/error.h"
	.file 14 "/home/tobi/Dokumente/Craftus-Next/dependencies/vec/vec.h"
	.file 15 "/opt/devkitpro/libctru/include/3ds/allocator/linear.h"
	.file 16 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h"
	.file 17 "/opt/devkitpro/libctru/include/3ds/types.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x5a5
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x1d
	.4byte	.LASF62
	.4byte	.LASF63
	.4byte	.LLRL8
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x5
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x4e
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x61
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x15
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x7d
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x16
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2c
	.byte	0x13
	.4byte	0x42
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x55
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x5
	.byte	0x7
	.byte	0x11
	.4byte	0x99
	.uleb128 0x6
	.4byte	0xc2
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0xd
	.byte	0x8
	.byte	0x6
	.byte	0x8
	.byte	0x9
	.4byte	0xed
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x6
	.byte	0x9
	.byte	0x9
	.4byte	0x84
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x6
	.byte	0xa
	.byte	0x8
	.4byte	0x97
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x6
	.byte	0xb
	.byte	0x3
	.4byte	0xc9
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x7
	.byte	0x39
	.byte	0xf
	.4byte	0x105
	.uleb128 0x6
	.4byte	0x10a
	.uleb128 0x17
	.4byte	0x76
	.4byte	0x11e
	.uleb128 0x1
	.4byte	0x11e
	.uleb128 0x1
	.4byte	0x11e
	.byte	0
	.uleb128 0x6
	.4byte	0x123
	.uleb128 0x18
	.uleb128 0x6
	.4byte	0xbd
	.uleb128 0x6
	.4byte	0x76
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF21
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.4byte	.LASF22
	.uleb128 0x19
	.ascii	"u32\000"
	.byte	0x11
	.byte	0x17
	.byte	0x12
	.4byte	0xa5
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF23
	.uleb128 0x5
	.4byte	.LASF24
	.byte	0x8
	.byte	0xa
	.byte	0x11
	.4byte	0xb1
	.uleb128 0xa
	.byte	0x1
	.4byte	0x2d
	.byte	0x9
	.byte	0x28
	.byte	0x1
	.4byte	0x181
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.4byte	0x2d
	.byte	0x9
	.byte	0x31
	.byte	0x1
	.4byte	0x1a7
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.4byte	0x2d
	.byte	0xa
	.byte	0x21
	.byte	0xe
	.4byte	0x1cd
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.byte	0x7
	.byte	0x1
	.4byte	0x2d
	.byte	0xb
	.2byte	0x1f5
	.byte	0x1
	.4byte	0x1e9
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.4byte	0x2d
	.byte	0xc
	.byte	0xb
	.byte	0x1
	.4byte	0x209
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.byte	0x2
	.4byte	0x3b
	.byte	0xd
	.byte	0x9
	.byte	0x1
	.4byte	0x225
	.uleb128 0xe
	.4byte	.LASF42
	.2byte	0x100
	.uleb128 0xe
	.4byte	.LASF43
	.2byte	0x200
	.byte	0
	.uleb128 0xd
	.byte	0xc
	.byte	0x1
	.byte	0x7
	.byte	0x8
	.4byte	0x256
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x1
	.byte	0x7
	.byte	0x1c
	.4byte	0x256
	.byte	0
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x1
	.byte	0x7
	.byte	0x26
	.4byte	0x76
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x1
	.byte	0x7
	.byte	0x2e
	.4byte	0x76
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	0xed
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x7
	.byte	0x3a
	.4byte	0x225
	.uleb128 0x5
	.byte	0x3
	.4byte	freedBlocks
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x9
	.byte	0x12
	.4byte	0x14f
	.uleb128 0x5
	.byte	0x3
	.4byte	lock
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x7
	.byte	0x8f
	.4byte	0x29d
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0xf9
	.byte	0
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0xe
	.byte	0x9f
	.byte	0x5
	.4byte	0x76
	.4byte	0x2c2
	.uleb128 0x1
	.4byte	0x124
	.uleb128 0x1
	.4byte	0x129
	.uleb128 0x1
	.4byte	0x129
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0xf
	.byte	0xc
	.byte	0x7
	.4byte	0x97
	.4byte	0x2d8
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x8
	.byte	0xc4
	.4byte	0x2e9
	.uleb128 0x1
	.4byte	0x2e9
	.byte	0
	.uleb128 0x6
	.4byte	0x14f
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0xe
	.byte	0xa6
	.4byte	0x318
	.uleb128 0x1
	.4byte	0x124
	.uleb128 0x1
	.4byte	0x129
	.uleb128 0x1
	.4byte	0x129
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x8
	.byte	0xb7
	.4byte	0x329
	.uleb128 0x1
	.4byte	0x2e9
	.byte	0
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x7
	.byte	0x5e
	.4byte	0x33a
	.uleb128 0x1
	.4byte	0x97
	.byte	0
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0xf
	.byte	0x29
	.4byte	0x34b
	.uleb128 0x1
	.4byte	0x97
	.byte	0
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x8
	.byte	0xb1
	.4byte	0x35c
	.uleb128 0x1
	.4byte	0x2e9
	.byte	0
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x10
	.byte	0x21
	.byte	0x8
	.4byte	0x97
	.4byte	0x37c
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF64
	.byte	0x1
	.byte	0x2c
	.byte	0x6
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x40a
	.uleb128 0x1c
	.4byte	.LASF59
	.byte	0x1
	.byte	0x2c
	.byte	0x19
	.4byte	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LVL28
	.4byte	0x318
	.4byte	0x3b5
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 12
	.byte	0
	.uleb128 0x8
	.4byte	.LVL29
	.4byte	0x29d
	.4byte	0x3da
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 4
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 8
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x8
	.4byte	.LVL30
	.4byte	0x27d
	.4byte	0x3f6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	sort_by_size
	.byte	0
	.uleb128 0x10
	.4byte	.LVL31
	.4byte	0x2d8
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+12
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF65
	.byte	0x1
	.byte	0x2a
	.byte	0xc
	.4byte	0x76
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x443
	.uleb128 0x1e
	.ascii	"a\000"
	.byte	0x1
	.byte	0x2a
	.byte	0x25
	.4byte	0x11e
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x1f
	.ascii	"b\000"
	.byte	0x1
	.byte	0x2a
	.byte	0x34
	.4byte	0x11e
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x20
	.4byte	.LASF66
	.byte	0x1
	.byte	0x16
	.byte	0xb
	.4byte	0xed
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x535
	.uleb128 0x21
	.4byte	.LASF17
	.byte	0x1
	.byte	0x16
	.byte	0x1c
	.4byte	0x84
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x23
	.byte	0xc
	.4byte	0xed
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x22
	.4byte	.LLRL5
	.4byte	0x4f9
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x19
	.byte	0xd
	.4byte	0xed
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x11
	.ascii	"i\000"
	.byte	0x1a
	.byte	0x7
	.4byte	0x76
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x8
	.4byte	.LVL25
	.4byte	0x2ee
	.4byte	0x4e5
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+4
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+8
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x12
	.4byte	.LVL26
	.4byte	0x2d8
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+12
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LVL10
	.4byte	0x318
	.4byte	0x50d
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 12
	.byte	0
	.uleb128 0x8
	.4byte	.LVL16
	.4byte	0x2c2
	.4byte	0x521
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL18
	.4byte	0x2d8
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+12
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF67
	.byte	0x1
	.byte	0xf
	.byte	0x6
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x582
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x10
	.byte	0xc
	.4byte	0xed
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x11
	.ascii	"i\000"
	.byte	0x11
	.byte	0x6
	.4byte	0x76
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x13
	.4byte	.LVL4
	.4byte	0x33a
	.uleb128 0x13
	.4byte	.LVL7
	.4byte	0x329
	.byte	0
	.uleb128 0x24
	.4byte	.LASF60
	.byte	0x1
	.byte	0xb
	.byte	0x6
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LVL2
	.4byte	0x34b
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+12
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x16
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
	.uleb128 0x1a
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 .LVU3
	.uleb128 .LVU3
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
	.uleb128 .LFE103-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL8
	.byte	0x4
	.uleb128 .LVL8-.LVL8
	.uleb128 .LVL10-1-.LVL8
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL10-1-.LVL8
	.uleb128 .LVL21-.LVL8
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL21-.LVL8
	.uleb128 .LFE102-.LVL8
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 .LVU55
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU60
.LLST4:
	.byte	0x6
	.4byte	.LVL17
	.byte	0x4
	.uleb128 .LVL17-.LVL17
	.uleb128 .LVL17-.LVL17
	.uleb128 0x5
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL17-.LVL17
	.uleb128 .LVL19-.LVL17
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS6:
	.uleb128 .LVU42
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 .LVU50
	.uleb128 .LVU62
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 .LVU74
.LLST6:
	.byte	0x6
	.4byte	.LVL12
	.byte	0x4
	.uleb128 .LVL12-.LVL12
	.uleb128 .LVL14-.LVL12
	.uleb128 0x7
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x71
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL14-.LVL12
	.uleb128 .LVL15-.LVL12
	.uleb128 0x7
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x71
	.sleb128 -4
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL20-.LVL12
	.uleb128 .LVL22-.LVL12
	.uleb128 0x7
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x71
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL22-.LVL12
	.uleb128 .LVL23-.LVL12
	.uleb128 0xd
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x93
	.uleb128 0x4
	.byte	0x71
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL23-.LVL12
	.uleb128 .LVL26-.LVL12
	.uleb128 0x5
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS7:
	.uleb128 .LVU41
	.uleb128 .LVU50
	.uleb128 .LVU62
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 .LVU69
.LLST7:
	.byte	0x6
	.4byte	.LVL11
	.byte	0x4
	.uleb128 .LVL11-.LVL11
	.uleb128 .LVL15-.LVL11
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL20-.LVL11
	.uleb128 .LVL24-.LVL11
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL24-.LVL11
	.uleb128 .LVL25-1-.LVL11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
.LVUS1:
	.uleb128 .LVU17
	.uleb128 .LVU20
.LLST1:
	.byte	0x8
	.4byte	.LVL3
	.uleb128 .LVL4-1-.LVL3
	.uleb128 0x11
	.byte	0x93
	.uleb128 0x4
	.byte	0x74
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	freedBlocks
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS2:
	.uleb128 .LVU17
	.uleb128 .LVU24
.LLST2:
	.byte	0x8
	.4byte	.LVL3
	.uleb128 .LVL6-.LVL3
	.uleb128 0x1
	.byte	0x54
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
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
.LLRL5:
	.byte	0x5
	.4byte	.LBB2
	.byte	0x4
	.uleb128 .LBB2-.LBB2
	.uleb128 .LBE2-.LBB2
	.byte	0x4
	.uleb128 .LBB3-.LBB2
	.uleb128 .LBE3-.LBB2
	.byte	0x4
	.uleb128 .LBB4-.LBB2
	.uleb128 .LBE4-.LBB2
	.byte	0x4
	.uleb128 .LBB5-.LBB2
	.uleb128 .LBE5-.LBB2
	.byte	0
.LLRL8:
	.byte	0x7
	.4byte	.LFB103
	.uleb128 .LFE103-.LFB103
	.byte	0x7
	.4byte	.LFB100
	.uleb128 .LFE100-.LFB100
	.byte	0x7
	.4byte	.LFB101
	.uleb128 .LFE101-.LFB101
	.byte	0x7
	.4byte	.LFB102
	.uleb128 .LFE102-.LFB102
	.byte	0x7
	.4byte	.LFB104
	.uleb128 .LFE104-.LFB104
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF51:
	.ascii	"qsort\000"
.LASF52:
	.ascii	"LightLock_Unlock\000"
.LASF61:
	.ascii	"GNU C17 11.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF2:
	.ascii	"short int\000"
.LASF37:
	.ascii	"GPU_VERTEX_SHADER\000"
.LASF63:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/build\000"
.LASF53:
	.ascii	"vec_splice_\000"
.LASF56:
	.ascii	"linearFree\000"
.LASF15:
	.ascii	"_LOCK_T\000"
.LASF34:
	.ascii	"NDM_DAEMON_BOSS\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF26:
	.ascii	"CSND_ENCODING_PCM16\000"
.LASF39:
	.ascii	"NDSP_ENCODING_PCM8\000"
.LASF19:
	.ascii	"VBO_Block\000"
.LASF55:
	.ascii	"free\000"
.LASF43:
	.ascii	"ERROR_WORD_WRAP_FLAG\000"
.LASF67:
	.ascii	"VBOCache_Deinit\000"
.LASF45:
	.ascii	"length\000"
.LASF18:
	.ascii	"memory\000"
.LASF21:
	.ascii	"float\000"
.LASF8:
	.ascii	"long long int\000"
.LASF62:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/source/rendering/"
	.ascii	"VBOCache.c\000"
.LASF42:
	.ascii	"ERROR_LANGUAGE_FLAG\000"
.LASF31:
	.ascii	"CSND_LOOPMODE_ONESHOT\000"
.LASF4:
	.ascii	"long int\000"
.LASF59:
	.ascii	"block\000"
.LASF66:
	.ascii	"VBO_Alloc\000"
.LASF30:
	.ascii	"CSND_LOOPMODE_NORMAL\000"
.LASF12:
	.ascii	"long double\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF24:
	.ascii	"LightLock\000"
.LASF41:
	.ascii	"NDSP_ENCODING_ADPCM\000"
.LASF0:
	.ascii	"signed char\000"
.LASF46:
	.ascii	"capacity\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF64:
	.ascii	"VBO_Free\000"
.LASF28:
	.ascii	"CSND_ENCODING_PSG\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF16:
	.ascii	"char\000"
.LASF13:
	.ascii	"int32_t\000"
.LASF48:
	.ascii	"lock\000"
.LASF11:
	.ascii	"size_t\000"
.LASF23:
	.ascii	"_Bool\000"
.LASF35:
	.ascii	"NDM_DAEMON_NIM\000"
.LASF50:
	.ascii	"linearAlloc\000"
.LASF44:
	.ascii	"data\000"
.LASF49:
	.ascii	"vec_expand_\000"
.LASF27:
	.ascii	"CSND_ENCODING_ADPCM\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF38:
	.ascii	"GPU_GEOMETRY_SHADER\000"
.LASF29:
	.ascii	"CSND_LOOPMODE_MANUAL\000"
.LASF17:
	.ascii	"size\000"
.LASF5:
	.ascii	"__int32_t\000"
.LASF58:
	.ascii	"memset\000"
.LASF32:
	.ascii	"CSND_LOOPMODE_NORELOAD\000"
.LASF33:
	.ascii	"NDM_DAEMON_CEC\000"
.LASF20:
	.ascii	"__compar_fn_t\000"
.LASF65:
	.ascii	"sort_by_size\000"
.LASF60:
	.ascii	"VBOCache_Init\000"
.LASF22:
	.ascii	"double\000"
.LASF25:
	.ascii	"CSND_ENCODING_PCM8\000"
.LASF47:
	.ascii	"freedBlocks\000"
.LASF40:
	.ascii	"NDSP_ENCODING_PCM16\000"
.LASF57:
	.ascii	"LightLock_Init\000"
.LASF36:
	.ascii	"NDM_DAEMON_FRIENDS\000"
.LASF54:
	.ascii	"LightLock_Lock\000"
	.ident	"GCC: (devkitARM release 57) 11.2.0"
