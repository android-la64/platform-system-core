/*
 * Copyright 2022, The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

.globl crash1
crash1:
	.cfi_startproc
	addi sp, sp, -16
	.cfi_def_cfa_offset 16
	sd ra, 8(sp)
	.cfi_offset ra, -8

	li.d	$r0,0xa5a50000
	li.d	$r1,0xa5a50001
	li.d	$r2,0xa5a50002
	li.d	$r3,0xa5a50003
	li.d	$r4,0xa5a50004
	li.d	$r5,0xa5a50005
	li.d	$r6,0xa5a50006
	li.d	$r7,0xa5a50007
	li.d	$r8,0xa5a50008
	li.d	$r9,0xa5a50009
	li.d	$r10,0xa5a50010
	li.d	$r11,0xa5a50011
	li.d	$r12,0xa5a50012
	li.d	$r13,0xa5a50013
	li.d	$r14,0xa5a50014
	li.d	$r15,0xa5a50015
	li.d	$r16,0xa5a50016
	li.d	$r17,0xa5a50017
	li.d	$r18,0xa5a50018
	li.d	$r19,0xa5a50019
	li.d	$r20,0xa5a50020
	li.d	$r21,0xa5a50021
	li.d	$r22,0xa5a50022
	li.d	$r23,0xa5a50023
	li.d	$r24,0xa5a50024
	li.d	$r25,0xa5a50025
	li.d	$r26,0xa5a50026
	li.d	$r27,0xa5a50027
	li.d	$r28,0xa5a50028
	li.d	$r29,0xa5a50029
	li.d	$r30,0xa5a50030
	li.d	$r31,0xa5a50031

	li.d sp, 0
	ld t2, 0(zero)
	b .
	.cfi_endproc
	.size crash1, .-crash1


.globl crash_no_stack
crash_no_stack:
	.cfi_startproc
	mv t1, sp
	.cfi_def_cfa_register t1
	li.d sp, 0
	ld.d t2, zero, 0
	b .
	.cfi_endproc
	.size crash_no_stack, .-crash_no_stack
