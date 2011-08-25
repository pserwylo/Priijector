	.file	"Line.cpp"
	.gnu_attribute 4, 1
	.gnu_attribute 8, 1
	.gnu_attribute 12, 1
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl _ZN4LineD2Ev
	.type	_ZN4LineD2Ev, @function
_ZN4LineD2Ev:
.LFB28:
	.file 1 "/home/pete/code/liiner/src/Line.cpp"
	.loc 1 20 0
	.cfi_startproc
.LVL0:
.LBB96:
	.loc 1 20 0
	lis 9,_ZTV4Line+8@ha
	la 0,_ZTV4Line+8@l(9)
.LBB97:
.LBB98:
.LBB99:
	.file 2 "/home/pete/code/liiner/src/Point.h"
	.loc 2 16 0
	lis 9,_ZTV5PointIiE+8@ha
.LBE99:
.LBE98:
.LBE97:
	.loc 1 20 0
	stw 0,0(3)
.LVL1:
.LBB102:
.LBB101:
.LBB100:
	.loc 2 16 0
	la 0,_ZTV5PointIiE+8@l(9)
	stw 0,4(3)
.LBE100:
.LBE101:
.LBE102:
.LBE96:
	.loc 1 23 0
	blr
	.cfi_endproc
.LFE28:
	.size	_ZN4LineD2Ev, .-_ZN4LineD2Ev
	.globl _ZN4LineD1Ev
	.set	_ZN4LineD1Ev,_ZN4LineD2Ev
	.section	.text._ZN5PointIiED2Ev,"axG",@progbits,_ZN5PointIiED5Ev,comdat
	.align 2
	.weak	_ZN5PointIiED2Ev
	.type	_ZN5PointIiED2Ev, @function
_ZN5PointIiED2Ev:
.LFB34:
	.loc 2 16 0
	.cfi_startproc
.LVL2:
.LBB103:
	.loc 2 16 0
	lis 9,_ZTV5PointIiE+8@ha
	la 0,_ZTV5PointIiE+8@l(9)
	stw 0,0(3)
.LBE103:
	blr
	.cfi_endproc
.LFE34:
	.size	_ZN5PointIiED2Ev, .-_ZN5PointIiED2Ev
	.weak	_ZN5PointIiED1Ev
	.set	_ZN5PointIiED1Ev,_ZN5PointIiED2Ev
	.section	.text._ZN5PointIiED0Ev,"axG",@progbits,_ZN5PointIiED5Ev,comdat
	.align 2
	.weak	_ZN5PointIiED0Ev
	.type	_ZN5PointIiED0Ev, @function
_ZN5PointIiED0Ev:
.LFB36:
	.loc 2 16 0
	.cfi_startproc
.LVL3:
	mflr 0
	stwu 1,-8(1)
.LCFI0:
	.cfi_def_cfa_offset 8
.LBB104:
.LBB105:
.LBB106:
	lis 9,_ZTV5PointIiE+8@ha
.LBE106:
.LBE105:
.LBE104:
	stw 0,12(1)
.LBB109:
.LBB108:
.LBB107:
	.loc 2 16 0
	la 0,_ZTV5PointIiE+8@l(9)
	stw 0,0(3)
.LBE107:
.LBE108:
.LBE109:
	.cfi_offset 65, 4
	bl _ZdlPv
.LVL4:
	lwz 0,12(1)
	addi 1,1,8
.LCFI1:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE36:
	.size	_ZN5PointIiED0Ev, .-_ZN5PointIiED0Ev
	.section	".text"
	.align 2
	.globl _ZN4LineD0Ev
	.type	_ZN4LineD0Ev, @function
_ZN4LineD0Ev:
.LFB30:
	.loc 1 20 0
	.cfi_startproc
.LVL5:
	mflr 0
	stwu 1,-8(1)
.LCFI2:
	.cfi_def_cfa_offset 8
.LBB110:
.LBB111:
.LBB112:
	lis 11,_ZTV4Line+8@ha
.LBE112:
.LBE111:
.LBE110:
	stw 0,12(1)
.LBB121:
.LBB120:
.LBB119:
	.loc 1 20 0
	la 0,_ZTV4Line+8@l(11)
.LBB113:
.LBB114:
.LBB115:
	.loc 2 16 0
	lis 11,_ZTV5PointIiE+8@ha
.LBE115:
.LBE114:
.LBE113:
	.loc 1 20 0
	stw 0,0(3)
.LBB118:
.LBB117:
.LBB116:
	.loc 2 16 0
	la 0,_ZTV5PointIiE+8@l(11)
	stw 0,4(3)
.LBE116:
.LBE117:
.LBE118:
.LBE119:
.LBE120:
.LBE121:
	.loc 1 23 0
	.cfi_offset 65, 4
	bl _ZdlPv
.LVL6:
	lwz 0,12(1)
	addi 1,1,8
.LCFI3:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE30:
	.size	_ZN4LineD0Ev, .-_ZN4LineD0Ev
	.align 2
	.globl _ZN4LineC2E5PointIiE
	.type	_ZN4LineC2E5PointIiE, @function
_ZN4LineC2E5PointIiE:
.LFB25:
	.loc 1 12 0
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	.cfi_lsda 0x0,.LLSDA25
.LVL7:
	mflr 0
	stwu 1,-56(1)
.LCFI4:
	.cfi_def_cfa_offset 56
.LBB122:
	.loc 1 14 0
	lis 10,_ZTV4Line+8@ha
.LBE122:
	.loc 1 12 0
	stw 30,48(1)
.LBB140:
.LBB130:
.LBB133:
	.loc 2 14 0
	lis 30,_ZTV5PointIiE+8@ha
	.cfi_offset 30, -8
	.cfi_register 65, 0
.LBE133:
.LBE130:
.LBE140:
	.loc 1 12 0
	stw 0,60(1)
.LBB141:
.LBB136:
.LBB132:
	.loc 2 14 0
	li 0,0
	.cfi_offset 65, 4
.LBE132:
.LBE136:
.LBE141:
	.loc 1 12 0
	stw 31,52(1)
.LBB142:
.LBB129:
.LBB134:
	.loc 2 14 0
	la 30,_ZTV5PointIiE+8@l(30)
.LBE134:
.LBE129:
.LBE142:
	.loc 1 12 0
	stw 28,40(1)
.LBB143:
	.loc 1 14 0
	la 10,_ZTV4Line+8@l(10)
.LBE143:
	.loc 1 12 0
	stw 29,44(1)
	.loc 1 12 0
	mr 31,3
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 31, -4
.LBB144:
.LBB128:
.LBB131:
	.loc 2 14 0
	stw 0,8(3)
	stw 0,12(3)
.LBE131:
.LBE128:
	.loc 1 37 0
	lwz 11,4(4)
	lwz 9,8(4)
.LBB127:
.LBB135:
	.loc 2 14 0
	stw 30,4(3)
.LBE135:
.LBE127:
	.loc 1 14 0
	stw 10,0(3)
.LVL8:
	stw 0,16(3)
	stw 0,20(3)
	.loc 1 16 0
	li 3,36
.LVL9:
.LBB125:
.LBB126:
	.loc 2 12 0
	stw 30,8(1)
	stw 11,12(1)
	stw 9,16(1)
.LVL10:
.LBE126:
.LBE125:
.LBB123:
.LBB124:
	stw 30,20(1)
	stw 11,24(1)
	stw 9,28(1)
.LEHB0:
.LBE124:
.LBE123:
	.loc 1 16 0
	bl _Znwj
.LEHE0:
.LVL11:
	addi 4,1,8
	addi 5,1,20
	mr 29,3
.LEHB1:
	bl _ZN7SegmentC1E5PointIiES1_
.LEHE1:
.LBE144:
	.loc 1 18 0 discriminator 1
	lwz 0,60(1)
.LBB145:
	.loc 1 16 0 discriminator 1
	stw 29,16(31)
.LVL12:
.LBE145:
	.loc 1 18 0 discriminator 1
	mtlr 0
.LBB146:
	.loc 1 17 0 discriminator 1
	stw 29,20(31)
.LBE146:
	.loc 1 18 0 discriminator 1
	lwz 28,40(1)
	lwz 29,44(1)
	lwz 30,48(1)
	lwz 31,52(1)
.LVL13:
	addi 1,1,56
	.cfi_remember_state
.LCFI5:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL14:
.L20:
.L18:
.LCFI6:
	.cfi_restore_state
.LBB147:
.LBB137:
.LBB138:
.LBB139:
	.loc 2 16 0
	stw 30,4(31)
.LEHB2:
	bl _Unwind_Resume
.LEHE2:
.LVL15:
.L21:
	mr 28,3
.LBE139:
.LBE138:
.LBE137:
	.loc 1 16 0
	mr 3,29
	bl _ZdlPv
	mr 3,28
	b .L18
.LBE147:
	.cfi_endproc
.LFE25:
	.size	_ZN4LineC2E5PointIiE, .-_ZN4LineC2E5PointIiE
	.globl __gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA25:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE25-.LLSDACSB25
.LLSDACSB25:
	.uleb128 .LEHB0-.LFB25
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L20-.LFB25
	.uleb128 0x0
	.uleb128 .LEHB1-.LFB25
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L21-.LFB25
	.uleb128 0x0
	.uleb128 .LEHB2-.LFB25
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE25:
	.section	".text"
	.globl _ZN4LineC1E5PointIiE
	.set	_ZN4LineC1E5PointIiE,_ZN4LineC2E5PointIiE
	.align 2
	.globl _ZN4Line10addSegmentE5PointIiE
	.type	_ZN4Line10addSegmentE5PointIiE, @function
_ZN4Line10addSegmentE5PointIiE:
.LFB31:
	.loc 1 26 0
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	.cfi_lsda 0x0,.LLSDA31
.LVL16:
	mflr 0
	stwu 1,-32(1)
.LCFI7:
	.cfi_def_cfa_offset 32
.LBB148:
.LBB150:
	.loc 2 12 0
	lis 11,_ZTV5PointIiE+8@ha
.LBE150:
.LBE148:
	.loc 1 26 0
	stw 31,28(1)
.LBB152:
.LBB149:
	.loc 2 12 0
	la 11,_ZTV5PointIiE+8@l(11)
.LBE149:
.LBE152:
	.loc 1 26 0
	stw 0,36(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 1 28 0
	li 3,36
.LVL17:
	.loc 1 26 0
	stw 30,24(1)
	.loc 1 37 0
	lwz 9,4(4)
	lwz 0,8(4)
.LVL18:
.LBB153:
.LBB151:
	.loc 2 12 0
	stw 11,8(1)
	stw 9,12(1)
	stw 0,16(1)
.LEHB3:
.LBE151:
.LBE153:
	.loc 1 28 0
	.cfi_offset 30, -8
	bl _Znwj
.LEHE3:
.LVL19:
	lwz 4,20(31)
	addi 5,1,8
	mr 30,3
.LEHB4:
	bl _ZN7SegmentC1EPS_5PointIiE
.LEHE4:
	.loc 1 29 0 discriminator 1
	lwz 0,36(1)
	.loc 1 28 0 discriminator 1
	stw 30,20(31)
.LVL20:
	.loc 1 29 0 discriminator 1
	mtlr 0
	lwz 30,24(1)
	lwz 31,28(1)
.LVL21:
	addi 1,1,32
	.cfi_remember_state
.LCFI8:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL22:
.L26:
.LCFI9:
	.cfi_restore_state
	mr 31,3
.LVL23:
	.loc 1 28 0
	mr 3,30
	bl _ZdlPv
	mr 3,31
.LEHB5:
	bl _Unwind_Resume
.LEHE5:
	.cfi_endproc
.LFE31:
	.size	_ZN4Line10addSegmentE5PointIiE, .-_ZN4Line10addSegmentE5PointIiE
	.section	.gcc_except_table
.LLSDA31:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE31-.LLSDACSB31
.LLSDACSB31:
	.uleb128 .LEHB3-.LFB31
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 .LEHB4-.LFB31
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L26-.LFB31
	.uleb128 0x0
	.uleb128 .LEHB5-.LFB31
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE31:
	.section	".text"
	.align 2
	.globl _ZN4Line6updateEd
	.type	_ZN4Line6updateEd, @function
_ZN4Line6updateEd:
.LFB32:
	.loc 1 32 0
	.cfi_startproc
.LVL24:
	mflr 0
	stwu 1,-24(1)
.LCFI10:
	.cfi_def_cfa_offset 24
.LBB154:
	.loc 1 35 0
	lwz 10,20(3)
.LBB156:
.LBB158:
	.loc 2 12 0
	lis 11,_ZTV5PointIiE+8@ha
.LBE158:
.LBE156:
	.loc 1 36 0
	addi 4,1,8
.LBB155:
.LBB159:
	.loc 2 12 0
	la 11,_ZTV5PointIiE+8@l(11)
.LBE159:
.LBE155:
.LBE154:
	.loc 1 32 0
	stw 0,28(1)
.LBB167:
	.loc 1 33 0
	li 0,10
.LBB161:
.LBB157:
	.loc 2 12 0
	stw 11,8(1)
.LBE157:
.LBE161:
.LBB162:
.LBB163:
	.loc 2 23 0
	lwz 9,20(10)
	lwz 10,24(10)
.LBE163:
.LBE162:
	.loc 1 33 0
	stw 0,8(3)
	.loc 1 34 0
	li 0,5
	stw 0,12(3)
.LBB165:
.LBB164:
	.loc 2 23 0
	addi 9,9,10
	addi 0,10,5
.LVL25:
.LBE164:
.LBE165:
.LBB166:
.LBB160:
	.loc 2 12 0
	stw 9,12(1)
	stw 0,16(1)
.LBE160:
.LBE166:
	.loc 1 36 0
	.cfi_offset 65, 4
	bl _ZN4Line10addSegmentE5PointIiE
.LVL26:
.LBE167:
	.loc 1 37 0
	lwz 0,28(1)
	addi 1,1,24
.LCFI11:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE32:
	.size	_ZN4Line6updateEd, .-_ZN4Line6updateEd
	.weak	_ZTV4Line
	.section	.rodata._ZTV4Line,"aG",@progbits,_ZTV4Line,comdat
	.align 3
	.type	_ZTV4Line, @object
	.size	_ZTV4Line, 16
_ZTV4Line:
	.long	0
	.long	_ZTI4Line
	.long	_ZN4LineD1Ev
	.long	_ZN4LineD0Ev
	.weak	_ZTS4Line
	.section	.sdata._ZTS4Line,"awG",@progbits,_ZTS4Line,comdat
	.align 2
	.type	_ZTS4Line, @object
	.size	_ZTS4Line, 6
_ZTS4Line:
	.string	"4Line"
	.weak	_ZTI4Line
	.section	.sdata._ZTI4Line,"awG",@progbits,_ZTI4Line,comdat
	.align 2
	.type	_ZTI4Line, @object
	.size	_ZTI4Line, 8
_ZTI4Line:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS4Line
	.weak	_ZTV5PointIiE
	.section	.rodata._ZTV5PointIiE,"aG",@progbits,_ZTV5PointIiE,comdat
	.align 3
	.type	_ZTV5PointIiE, @object
	.size	_ZTV5PointIiE, 16
_ZTV5PointIiE:
	.long	0
	.long	_ZTI5PointIiE
	.long	_ZN5PointIiED1Ev
	.long	_ZN5PointIiED0Ev
	.weak	_ZTI5PointIiE
	.section	.sdata._ZTI5PointIiE,"awG",@progbits,_ZTI5PointIiE,comdat
	.align 2
	.type	_ZTI5PointIiE, @object
	.size	_ZTI5PointIiE, 8
_ZTI5PointIiE:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS5PointIiE
	.weak	_ZTS5PointIiE
	.section	.rodata._ZTS5PointIiE,"aG",@progbits,_ZTS5PointIiE,comdat
	.align 2
	.type	_ZTS5PointIiE, @object
	.size	_ZTS5PointIiE, 10
_ZTS5PointIiE:
	.string	"5PointIiE"
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB36
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI1
	.4byte	.LFE36
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LFB30
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI3
	.4byte	.LFE30
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB25
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI5
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6
	.4byte	.LFE25
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL7
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x8f
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE25
	.2byte	0x3
	.byte	0x8f
	.sleb128 4
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x8f
	.sleb128 4
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB31
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI7
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI8
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI9
	.4byte	.LFE31
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL16
	.4byte	.LVL19-1
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LFB32
	.4byte	.LCFI10
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10
	.4byte	.LCFI11
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI11
	.4byte	.LFE32
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL24
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL24
	.4byte	.LVL26-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL26-1
	.4byte	.LFE32
	.2byte	0x3
	.byte	0x91
	.sleb128 -16
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
	.file 3 "/home/pete/code/liiner/src/Line.h"
	.file 4 "/home/pete/code/liiner/src/Segment.h"
	.section	.debug_info
	.4byte	0x6f1
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x4
	.4byte	.LASF46
	.4byte	0x0
	.4byte	0x0
	.4byte	.Ldebug_ranges0+0x120
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x18
	.byte	0x3
	.byte	0x14
	.4byte	0x25
	.4byte	0x112
	.uleb128 0x3
	.4byte	.LASF8
	.4byte	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF0
	.byte	0x3
	.byte	0x1e
	.4byte	0x134
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF1
	.byte	0x3
	.byte	0x1f
	.4byte	0x374
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x3
	.byte	0x20
	.4byte	0x374
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x3
	.uleb128 0x5
	.byte	0x1
	.4byte	.LASF5
	.byte	0x1
	.byte	0x1
	.4byte	0x87
	.uleb128 0x6
	.4byte	0x37a
	.byte	0x1
	.uleb128 0x7
	.4byte	0x380
	.byte	0x0
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF5
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.4byte	0xa0
	.uleb128 0x6
	.4byte	0x37a
	.byte	0x1
	.uleb128 0x7
	.4byte	0x134
	.byte	0x0
	.uleb128 0x9
	.byte	0x1
	.4byte	.LASF3
	.byte	0x1
	.byte	0x14
	.byte	0x1
	.4byte	0x25
	.byte	0x1
	.4byte	0xbf
	.uleb128 0x6
	.4byte	0x37a
	.byte	0x1
	.uleb128 0x6
	.4byte	0x11d
	.byte	0x1
	.byte	0x0
	.uleb128 0xa
	.byte	0x1
	.4byte	.LASF4
	.byte	0x3
	.byte	0x19
	.4byte	.LASF13
	.4byte	0x374
	.byte	0x1
	.4byte	0xdb
	.uleb128 0x6
	.4byte	0x37a
	.byte	0x1
	.byte	0x0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF17
	.byte	0x1
	.byte	0x19
	.4byte	.LASF19
	.byte	0x1
	.4byte	0xf8
	.uleb128 0x6
	.4byte	0x37a
	.byte	0x1
	.uleb128 0x7
	.4byte	0x134
	.byte	0x0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF6
	.byte	0x1
	.byte	0x1f
	.4byte	.LASF34
	.byte	0x1
	.uleb128 0x6
	.4byte	0x37a
	.byte	0x1
	.uleb128 0x7
	.4byte	0x38b
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.4byte	0x11d
	.4byte	0x11d
	.uleb128 0xe
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x10
	.byte	0x4
	.4byte	0x12a
	.uleb128 0x11
	.byte	0x4
	.4byte	.LASF47
	.4byte	0x112
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0xc
	.byte	0x2
	.byte	0xc
	.4byte	0x134
	.4byte	0x351
	.uleb128 0x12
	.string	"T"
	.4byte	0x11d
	.uleb128 0x12
	.string	"T"
	.4byte	0x11d
	.uleb128 0x3
	.4byte	.LASF9
	.4byte	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x1
	.uleb128 0x13
	.string	"x"
	.byte	0x2
	.byte	0x12
	.4byte	0x11d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"y"
	.byte	0x2
	.byte	0x13
	.4byte	0x11d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.byte	0x1
	.4byte	.LASF10
	.byte	0x1
	.byte	0x1
	.4byte	0x18f
	.uleb128 0x6
	.4byte	0x392
	.byte	0x1
	.uleb128 0x7
	.4byte	0x398
	.byte	0x0
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF10
	.byte	0x2
	.byte	0xe
	.byte	0x1
	.4byte	0x1a3
	.uleb128 0x6
	.4byte	0x392
	.byte	0x1
	.byte	0x0
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF10
	.byte	0x2
	.byte	0xf
	.byte	0x1
	.4byte	0x1c1
	.uleb128 0x6
	.4byte	0x392
	.byte	0x1
	.uleb128 0x7
	.4byte	0x11d
	.uleb128 0x7
	.4byte	0x11d
	.byte	0x0
	.uleb128 0x9
	.byte	0x1
	.4byte	.LASF11
	.byte	0x2
	.byte	0x10
	.byte	0x1
	.4byte	0x134
	.byte	0x1
	.4byte	0x1e0
	.uleb128 0x6
	.4byte	0x392
	.byte	0x1
	.uleb128 0x6
	.4byte	0x11d
	.byte	0x1
	.byte	0x0
	.uleb128 0xa
	.byte	0x1
	.4byte	.LASF12
	.byte	0x2
	.byte	0x15
	.4byte	.LASF14
	.4byte	0x134
	.byte	0x1
	.4byte	0x201
	.uleb128 0x6
	.4byte	0x392
	.byte	0x1
	.uleb128 0x7
	.4byte	0x3a3
	.byte	0x0
	.uleb128 0xa
	.byte	0x1
	.4byte	.LASF15
	.byte	0x2
	.byte	0x1b
	.4byte	.LASF16
	.4byte	0x134
	.byte	0x1
	.4byte	0x222
	.uleb128 0x6
	.4byte	0x392
	.byte	0x1
	.uleb128 0x7
	.4byte	0x3a3
	.byte	0x0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF18
	.byte	0x2
	.byte	0x21
	.4byte	.LASF20
	.byte	0x1
	.4byte	0x23f
	.uleb128 0x6
	.4byte	0x392
	.byte	0x1
	.uleb128 0x7
	.4byte	0x3a3
	.byte	0x0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF21
	.byte	0x2
	.byte	0x27
	.4byte	.LASF22
	.byte	0x1
	.4byte	0x25c
	.uleb128 0x6
	.4byte	0x392
	.byte	0x1
	.uleb128 0x7
	.4byte	0x3a3
	.byte	0x0
	.uleb128 0xa
	.byte	0x1
	.4byte	.LASF23
	.byte	0x2
	.byte	0x2d
	.4byte	.LASF24
	.4byte	0x134
	.byte	0x1
	.4byte	0x27d
	.uleb128 0x6
	.4byte	0x392
	.byte	0x1
	.uleb128 0x7
	.4byte	0x38b
	.byte	0x0
	.uleb128 0xa
	.byte	0x1
	.4byte	.LASF23
	.byte	0x2
	.byte	0x33
	.4byte	.LASF25
	.4byte	0x134
	.byte	0x1
	.4byte	0x29e
	.uleb128 0x6
	.4byte	0x392
	.byte	0x1
	.uleb128 0x7
	.4byte	0x11d
	.byte	0x0
	.uleb128 0xa
	.byte	0x1
	.4byte	.LASF26
	.byte	0x2
	.byte	0x39
	.4byte	.LASF27
	.4byte	0x134
	.byte	0x1
	.4byte	0x2bf
	.uleb128 0x6
	.4byte	0x392
	.byte	0x1
	.uleb128 0x7
	.4byte	0x38b
	.byte	0x0
	.uleb128 0xa
	.byte	0x1
	.4byte	.LASF26
	.byte	0x2
	.byte	0x3f
	.4byte	.LASF28
	.4byte	0x134
	.byte	0x1
	.4byte	0x2e0
	.uleb128 0x6
	.4byte	0x392
	.byte	0x1
	.uleb128 0x7
	.4byte	0x11d
	.byte	0x0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF29
	.byte	0x2
	.byte	0x45
	.4byte	.LASF30
	.byte	0x1
	.4byte	0x2fd
	.uleb128 0x6
	.4byte	0x392
	.byte	0x1
	.uleb128 0x7
	.4byte	0x38b
	.byte	0x0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF29
	.byte	0x2
	.byte	0x4b
	.4byte	.LASF31
	.byte	0x1
	.4byte	0x31a
	.uleb128 0x6
	.4byte	0x392
	.byte	0x1
	.uleb128 0x7
	.4byte	0x11d
	.byte	0x0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF32
	.byte	0x2
	.byte	0x51
	.4byte	.LASF33
	.byte	0x1
	.4byte	0x337
	.uleb128 0x6
	.4byte	0x392
	.byte	0x1
	.uleb128 0x7
	.4byte	0x38b
	.byte	0x0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF32
	.byte	0x2
	.byte	0x57
	.4byte	.LASF35
	.byte	0x1
	.uleb128 0x6
	.4byte	0x392
	.byte	0x1
	.uleb128 0x7
	.4byte	0x11d
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0x1
	.4byte	0x374
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF36
	.byte	0x4
	.byte	0x1e
	.4byte	.LASF37
	.4byte	0x134
	.byte	0x1
	.uleb128 0x6
	.4byte	0x374
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x351
	.uleb128 0x10
	.byte	0x4
	.4byte	0x25
	.uleb128 0x16
	.byte	0x4
	.4byte	0x386
	.uleb128 0x17
	.4byte	0x25
	.uleb128 0x18
	.byte	0x8
	.byte	0x4
	.4byte	.LASF38
	.uleb128 0x10
	.byte	0x4
	.4byte	0x134
	.uleb128 0x16
	.byte	0x4
	.4byte	0x39e
	.uleb128 0x17
	.4byte	0x134
	.uleb128 0x16
	.byte	0x4
	.4byte	0x134
	.uleb128 0x19
	.4byte	0x1c1
	.byte	0x3
	.4byte	0x3c8
	.uleb128 0x1a
	.4byte	.LASF39
	.4byte	0x3c8
	.byte	0x1
	.uleb128 0x1a
	.4byte	.LASF40
	.4byte	0x3cd
	.byte	0x1
	.byte	0x0
	.uleb128 0x17
	.4byte	0x392
	.uleb128 0x17
	.4byte	0x11d
	.uleb128 0x19
	.4byte	0xa0
	.byte	0x1
	.4byte	0x3f1
	.uleb128 0x1a
	.4byte	.LASF39
	.4byte	0x3f1
	.byte	0x1
	.uleb128 0x1a
	.4byte	.LASF40
	.4byte	0x3cd
	.byte	0x1
	.byte	0x0
	.uleb128 0x17
	.4byte	0x37a
	.uleb128 0x1b
	.4byte	0x177
	.byte	0x2
	.byte	0xc
	.byte	0x3
	.4byte	0x412
	.uleb128 0x1a
	.4byte	.LASF39
	.4byte	0x3c8
	.byte	0x1
	.uleb128 0x7
	.4byte	0x412
	.byte	0x0
	.uleb128 0x17
	.4byte	0x398
	.uleb128 0x19
	.4byte	0x35b
	.byte	0x3
	.4byte	0x42c
	.uleb128 0x1a
	.4byte	.LASF39
	.4byte	0x42c
	.byte	0x1
	.byte	0x0
	.uleb128 0x17
	.4byte	0x374
	.uleb128 0x19
	.4byte	0x18f
	.byte	0x3
	.4byte	0x446
	.uleb128 0x1a
	.4byte	.LASF39
	.4byte	0x3c8
	.byte	0x1
	.byte	0x0
	.uleb128 0x19
	.4byte	0x1a3
	.byte	0x3
	.4byte	0x46d
	.uleb128 0x1a
	.4byte	.LASF39
	.4byte	0x3c8
	.byte	0x1
	.uleb128 0x1c
	.string	"x"
	.byte	0x2
	.byte	0xf
	.4byte	0x11d
	.uleb128 0x1c
	.string	"y"
	.byte	0x2
	.byte	0xf
	.4byte	0x11d
	.byte	0x0
	.uleb128 0x19
	.4byte	0x1e0
	.byte	0x3
	.4byte	0x4a1
	.uleb128 0x1a
	.4byte	.LASF39
	.4byte	0x3c8
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF41
	.byte	0x2
	.byte	0x15
	.4byte	0x4a1
	.uleb128 0x1e
	.string	"p"
	.byte	0x2
	.byte	0x17
	.4byte	0x134
	.uleb128 0x1f
	.uleb128 0x1e
	.string	"p"
	.byte	0x2
	.byte	0x17
	.4byte	0x134
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.4byte	0x3a3
	.uleb128 0x20
	.4byte	0x3d2
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x4db
	.uleb128 0x21
	.4byte	0x3dc
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	0x3a9
	.4byte	.LBB97
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0x14
	.uleb128 0x21
	.4byte	0x3b3
	.byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.4byte	0x3a9
	.4byte	.LFB34
	.4byte	.LFE34
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x4f7
	.uleb128 0x21
	.4byte	0x3b3
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x23
	.4byte	0x3a9
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LLST0
	.4byte	0x52f
	.uleb128 0x24
	.4byte	0x3b3
	.4byte	.LLST1
	.uleb128 0x22
	.4byte	0x3a9
	.4byte	.LBB104
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x2
	.byte	0x10
	.uleb128 0x24
	.4byte	0x3b3
	.4byte	.LLST2
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.4byte	0x3d2
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LLST3
	.4byte	0x578
	.uleb128 0x24
	.4byte	0x3dc
	.4byte	.LLST4
	.uleb128 0x22
	.4byte	0x3d2
	.4byte	.LBB110
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x17
	.uleb128 0x25
	.4byte	0x3dc
	.uleb128 0x22
	.4byte	0x3a9
	.4byte	.LBB113
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x14
	.uleb128 0x25
	.4byte	0x3b3
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.4byte	0x87
	.byte	0x0
	.4byte	0x598
	.uleb128 0x1a
	.4byte	.LASF39
	.4byte	0x3f1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF42
	.byte	0x1
	.byte	0xc
	.4byte	0x134
	.byte	0x0
	.uleb128 0x23
	.4byte	0x578
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LLST5
	.4byte	0x630
	.uleb128 0x24
	.4byte	0x582
	.4byte	.LLST6
	.uleb128 0x24
	.4byte	0x58c
	.4byte	.LLST7
	.uleb128 0x26
	.4byte	0x3f6
	.4byte	.LBB123
	.4byte	.LBE123
	.byte	0x1
	.byte	0x10
	.4byte	0x5dc
	.uleb128 0x21
	.4byte	0x402
	.byte	0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x9f
	.byte	0x0
	.uleb128 0x26
	.4byte	0x3f6
	.4byte	.LBB125
	.4byte	.LBE125
	.byte	0x1
	.byte	0x10
	.4byte	0x5f9
	.uleb128 0x21
	.4byte	0x402
	.byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.byte	0x0
	.uleb128 0x27
	.4byte	0x431
	.4byte	.LBB130
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xe
	.4byte	0x616
	.uleb128 0x24
	.4byte	0x43b
	.4byte	.LLST8
	.byte	0x0
	.uleb128 0x28
	.4byte	0x3a9
	.4byte	.LBB137
	.4byte	.LBE137
	.byte	0x1
	.byte	0xe
	.uleb128 0x24
	.4byte	0x3b3
	.4byte	.LLST9
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.4byte	0xdb
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LLST10
	.4byte	0x67c
	.uleb128 0x2a
	.4byte	.LASF39
	.4byte	0x3f1
	.byte	0x1
	.4byte	.LLST11
	.uleb128 0x2b
	.string	"end"
	.byte	0x1
	.byte	0x19
	.4byte	0x134
	.4byte	.LLST12
	.uleb128 0x22
	.4byte	0x3f6
	.4byte	.LBB148
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0x1c
	.uleb128 0x21
	.4byte	0x402
	.byte	0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x9f
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.4byte	0xf8
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LLST13
	.uleb128 0x2a
	.4byte	.LASF39
	.4byte	0x3f1
	.byte	0x1
	.4byte	.LLST14
	.uleb128 0x2d
	.4byte	.LASF43
	.byte	0x1
	.byte	0x1f
	.4byte	0x38b
	.4byte	.LLST15
	.uleb128 0x2e
	.4byte	.Ldebug_ranges0+0xb0
	.uleb128 0x2f
	.4byte	.LASF44
	.byte	0x1
	.byte	0x23
	.4byte	0x134
	.uleb128 0x27
	.4byte	0x3f6
	.4byte	.LBB156
	.4byte	.Ldebug_ranges0+0xc8
	.byte	0x1
	.byte	0x24
	.4byte	0x6d7
	.uleb128 0x24
	.4byte	0x402
	.4byte	.LLST16
	.byte	0x0
	.uleb128 0x22
	.4byte	0x46d
	.4byte	.LBB162
	.4byte	.Ldebug_ranges0+0xf0
	.byte	0x1
	.byte	0x23
	.uleb128 0x2e
	.4byte	.Ldebug_ranges0+0x108
	.uleb128 0x30
	.4byte	0x496
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1d
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.uleb128 0x34
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x4c
	.uleb128 0xb
	.uleb128 0x1d
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x2f
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x91
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x6f5
	.4byte	0x4a6
	.string	"Line::~Line"
	.4byte	0x4db
	.string	"Point<int>::~Point"
	.4byte	0x4f7
	.string	"Point<int>::~Point"
	.4byte	0x52f
	.string	"Line::~Line"
	.4byte	0x598
	.string	"Line::Line"
	.4byte	0x630
	.string	"Line::addSegment"
	.4byte	0x67c
	.string	"Line::update"
	.4byte	0x0
	.section	.debug_pubtypes,"",@progbits
	.4byte	0x37
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x6f5
	.4byte	0x134
	.string	"Point"
	.4byte	0x351
	.string	"Segment"
	.4byte	0x25
	.string	"Line"
	.4byte	0x134
	.string	"Point"
	.4byte	0x0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	0x0
	.4byte	0x0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB97
	.4byte	.LBE97
	.4byte	.LBB102
	.4byte	.LBE102
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB104
	.4byte	.LBE104
	.4byte	.LBB109
	.4byte	.LBE109
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB110
	.4byte	.LBE110
	.4byte	.LBB121
	.4byte	.LBE121
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB113
	.4byte	.LBE113
	.4byte	.LBB118
	.4byte	.LBE118
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB130
	.4byte	.LBE130
	.4byte	.LBB127
	.4byte	.LBE127
	.4byte	.LBB128
	.4byte	.LBE128
	.4byte	.LBB129
	.4byte	.LBE129
	.4byte	.LBB136
	.4byte	.LBE136
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB148
	.4byte	.LBE148
	.4byte	.LBB153
	.4byte	.LBE153
	.4byte	.LBB152
	.4byte	.LBE152
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB154
	.4byte	.LBE154
	.4byte	.LBB167
	.4byte	.LBE167
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB156
	.4byte	.LBE156
	.4byte	.LBB166
	.4byte	.LBE166
	.4byte	.LBB161
	.4byte	.LBE161
	.4byte	.LBB155
	.4byte	.LBE155
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB162
	.4byte	.LBE162
	.4byte	.LBB165
	.4byte	.LBE165
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB163
	.4byte	.LBE163
	.4byte	.LBB164
	.4byte	.LBE164
	.4byte	0x0
	.4byte	0x0
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"_ZN5PointIiEplERS0_"
.LASF26:
	.string	"operator/"
.LASF29:
	.string	"operator*="
.LASF9:
	.string	"_vptr.Point"
.LASF42:
	.string	"start"
.LASF39:
	.string	"this"
.LASF19:
	.string	"_ZN4Line10addSegmentE5PointIiE"
.LASF48:
	.string	"Segment"
.LASF17:
	.string	"addSegment"
.LASF34:
	.string	"_ZN4Line6updateEd"
.LASF37:
	.string	"_ZN7Segment6getEndEv"
.LASF10:
	.string	"Point"
.LASF30:
	.string	"_ZN5PointIiEmLEd"
.LASF33:
	.string	"_ZN5PointIiEdVEd"
.LASF11:
	.string	"~Point"
.LASF35:
	.string	"_ZN5PointIiEdVEi"
.LASF38:
	.string	"double"
.LASF27:
	.string	"_ZN5PointIiEdvEd"
.LASF44:
	.string	"newEnd"
.LASF1:
	.string	"root"
.LASF28:
	.string	"_ZN5PointIiEdvEi"
.LASF47:
	.string	"__vtbl_ptr_type"
.LASF7:
	.string	"Point<int>"
.LASF43:
	.string	"timeStep"
.LASF18:
	.string	"operator+="
.LASF8:
	.string	"_vptr.Line"
.LASF31:
	.string	"_ZN5PointIiEmLEi"
.LASF21:
	.string	"operator-="
.LASF24:
	.string	"_ZN5PointIiEmlEd"
.LASF41:
	.string	"toAdd"
.LASF32:
	.string	"operator/="
.LASF36:
	.string	"getEnd"
.LASF23:
	.string	"operator*"
.LASF12:
	.string	"operator+"
.LASF15:
	.string	"operator-"
.LASF5:
	.string	"Line"
.LASF46:
	.string	"/home/pete/code/liiner/src/Line.cpp"
.LASF2:
	.string	"current"
.LASF4:
	.string	"getRoot"
.LASF3:
	.string	"~Line"
.LASF40:
	.string	"__in_chrg"
.LASF22:
	.string	"_ZN5PointIiEmIERS0_"
.LASF6:
	.string	"update"
.LASF0:
	.string	"velocity"
.LASF45:
	.string	"GNU C++ 4.5.1"
.LASF25:
	.string	"_ZN5PointIiEmlEi"
.LASF16:
	.string	"_ZN5PointIiEmiERS0_"
.LASF13:
	.string	"_ZN4Line7getRootEv"
.LASF20:
	.string	"_ZN5PointIiEpLERS0_"
	.ident	"GCC: (devkitPPC release 22) 4.5.1"
