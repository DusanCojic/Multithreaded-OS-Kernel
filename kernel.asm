
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	8c813103          	ld	sp,-1848(sp) # 8000b8c8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	04d060ef          	jal	ra,80006868 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    # push all registers on stack
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04b13c23          	sd	a1,88(sp)
    80001030:	06c13023          	sd	a2,96(sp)
    80001034:	06d13423          	sd	a3,104(sp)
    80001038:	06e13823          	sd	a4,112(sp)
    8000103c:	06f13c23          	sd	a5,120(sp)
    80001040:	09013023          	sd	a6,128(sp)
    80001044:	09113423          	sd	a7,136(sp)
    80001048:	09213823          	sd	s2,144(sp)
    8000104c:	09313c23          	sd	s3,152(sp)
    80001050:	0b413023          	sd	s4,160(sp)
    80001054:	0b513423          	sd	s5,168(sp)
    80001058:	0b613823          	sd	s6,176(sp)
    8000105c:	0b713c23          	sd	s7,184(sp)
    80001060:	0d813023          	sd	s8,192(sp)
    80001064:	0d913423          	sd	s9,200(sp)
    80001068:	0da13823          	sd	s10,208(sp)
    8000106c:	0db13c23          	sd	s11,216(sp)
    80001070:	0fc13023          	sd	t3,224(sp)
    80001074:	0fd13423          	sd	t4,232(sp)
    80001078:	0fe13823          	sd	t5,240(sp)
    8000107c:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001080:	121010ef          	jal	ra,800029a0 <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001084:	00013003          	ld	zero,0(sp)
    80001088:	00813083          	ld	ra,8(sp)
    8000108c:	01013103          	ld	sp,16(sp)
    80001090:	01813183          	ld	gp,24(sp)
    80001094:	02013203          	ld	tp,32(sp)
    80001098:	02813283          	ld	t0,40(sp)
    8000109c:	03013303          	ld	t1,48(sp)
    800010a0:	03813383          	ld	t2,56(sp)
    800010a4:	04013403          	ld	s0,64(sp)
    800010a8:	04813483          	ld	s1,72(sp)
    800010ac:	05813583          	ld	a1,88(sp)
    800010b0:	06013603          	ld	a2,96(sp)
    800010b4:	06813683          	ld	a3,104(sp)
    800010b8:	07013703          	ld	a4,112(sp)
    800010bc:	07813783          	ld	a5,120(sp)
    800010c0:	08013803          	ld	a6,128(sp)
    800010c4:	08813883          	ld	a7,136(sp)
    800010c8:	09013903          	ld	s2,144(sp)
    800010cc:	09813983          	ld	s3,152(sp)
    800010d0:	0a013a03          	ld	s4,160(sp)
    800010d4:	0a813a83          	ld	s5,168(sp)
    800010d8:	0b013b03          	ld	s6,176(sp)
    800010dc:	0b813b83          	ld	s7,184(sp)
    800010e0:	0c013c03          	ld	s8,192(sp)
    800010e4:	0c813c83          	ld	s9,200(sp)
    800010e8:	0d013d03          	ld	s10,208(sp)
    800010ec:	0d813d83          	ld	s11,216(sp)
    800010f0:	0e013e03          	ld	t3,224(sp)
    800010f4:	0e813e83          	ld	t4,232(sp)
    800010f8:	0f013f03          	ld	t5,240(sp)
    800010fc:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001100:	10010113          	addi	sp,sp,256

    sret
    80001104:	10200073          	sret
	...

0000000080001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_

_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001114:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)

    80001120:	00008067          	ret

0000000080001124 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001124:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001128:	00b29a63          	bne	t0,a1,8000113c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000112c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001130:	fe029ae3          	bnez	t0,80001124 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001134:	00000513          	li	a0,0
    jr ra                  # Return.
    80001138:	00008067          	ret

000000008000113c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000113c:	00100513          	li	a0,1
    80001140:	00008067          	ret

0000000080001144 <_Z7syscallmz>:
#include "../h/syscall_c.hpp"

void syscall(uint64 syscall_id, ...) {
    80001144:	fb010113          	addi	sp,sp,-80
    80001148:	00813423          	sd	s0,8(sp)
    8000114c:	01010413          	addi	s0,sp,16
    80001150:	00b43423          	sd	a1,8(s0)
    80001154:	00c43823          	sd	a2,16(s0)
    80001158:	00d43c23          	sd	a3,24(s0)
    8000115c:	02e43023          	sd	a4,32(s0)
    80001160:	02f43423          	sd	a5,40(s0)
    80001164:	03043823          	sd	a6,48(s0)
    80001168:	03143c23          	sd	a7,56(s0)
    __asm__ volatile ("ecall");
    8000116c:	00000073          	ecall
}
    80001170:	00813403          	ld	s0,8(sp)
    80001174:	05010113          	addi	sp,sp,80
    80001178:	00008067          	ret

000000008000117c <_Z9mem_allocm>:

void* mem_alloc(size_t bytes) {
    8000117c:	ff010113          	addi	sp,sp,-16
    80001180:	00113423          	sd	ra,8(sp)
    80001184:	00813023          	sd	s0,0(sp)
    80001188:	01010413          	addi	s0,sp,16
    8000118c:	00050593          	mv	a1,a0
    syscall(SYSCALLS::MEM_ALLOC, bytes);
    80001190:	00100513          	li	a0,1
    80001194:	00000097          	auipc	ra,0x0
    80001198:	fb0080e7          	jalr	-80(ra) # 80001144 <_Z7syscallmz>

    // Load the return value
    void* ret;
    __asm__ volatile ("mv %[rt], a0" : [rt] "=r" (ret));
    8000119c:	00050513          	mv	a0,a0
    return ret;
}
    800011a0:	00813083          	ld	ra,8(sp)
    800011a4:	00013403          	ld	s0,0(sp)
    800011a8:	01010113          	addi	sp,sp,16
    800011ac:	00008067          	ret

00000000800011b0 <_Z8mem_freePv>:

int mem_free(void* ptr) {
    800011b0:	ff010113          	addi	sp,sp,-16
    800011b4:	00113423          	sd	ra,8(sp)
    800011b8:	00813023          	sd	s0,0(sp)
    800011bc:	01010413          	addi	s0,sp,16
    800011c0:	00050593          	mv	a1,a0
    // Load system call id and parameter to the register
    syscall(SYSCALLS::MEM_FREE, ptr);
    800011c4:	00200513          	li	a0,2
    800011c8:	00000097          	auipc	ra,0x0
    800011cc:	f7c080e7          	jalr	-132(ra) # 80001144 <_Z7syscallmz>

    // Load the return value
    uint64 ret;
    __asm__ volatile ("mv %[rt], a0" : [rt] "=r" (ret));
    800011d0:	00050513          	mv	a0,a0
    return (int)ret;
}
    800011d4:	0005051b          	sext.w	a0,a0
    800011d8:	00813083          	ld	ra,8(sp)
    800011dc:	00013403          	ld	s0,0(sp)
    800011e0:	01010113          	addi	sp,sp,16
    800011e4:	00008067          	ret

00000000800011e8 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg) {
    800011e8:	ff010113          	addi	sp,sp,-16
    800011ec:	00113423          	sd	ra,8(sp)
    800011f0:	00813023          	sd	s0,0(sp)
    800011f4:	01010413          	addi	s0,sp,16
    800011f8:	00060693          	mv	a3,a2
    syscall(SYSCALLS::THREAD_CREATE, handle, start_routine, arg);
    800011fc:	00058613          	mv	a2,a1
    80001200:	00050593          	mv	a1,a0
    80001204:	01100513          	li	a0,17
    80001208:	00000097          	auipc	ra,0x0
    8000120c:	f3c080e7          	jalr	-196(ra) # 80001144 <_Z7syscallmz>

    uint64 ret;
    __asm__ volatile ("mv %[rt], a0" : [rt] "=r" (ret));
    80001210:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001214:	0005051b          	sext.w	a0,a0
    80001218:	00813083          	ld	ra,8(sp)
    8000121c:	00013403          	ld	s0,0(sp)
    80001220:	01010113          	addi	sp,sp,16
    80001224:	00008067          	ret

0000000080001228 <_Z11thread_exitv>:

int thread_exit() {
    80001228:	ff010113          	addi	sp,sp,-16
    8000122c:	00113423          	sd	ra,8(sp)
    80001230:	00813023          	sd	s0,0(sp)
    80001234:	01010413          	addi	s0,sp,16
    syscall(SYSCALLS::THREAD_EXIT);
    80001238:	01200513          	li	a0,18
    8000123c:	00000097          	auipc	ra,0x0
    80001240:	f08080e7          	jalr	-248(ra) # 80001144 <_Z7syscallmz>

    uint64 ret;
    __asm__ volatile ("mv %[rt], a0" : [rt] "=r" (ret));
    80001244:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001248:	0005051b          	sext.w	a0,a0
    8000124c:	00813083          	ld	ra,8(sp)
    80001250:	00013403          	ld	s0,0(sp)
    80001254:	01010113          	addi	sp,sp,16
    80001258:	00008067          	ret

000000008000125c <_Z15thread_dispatchv>:

void thread_dispatch() {
    8000125c:	ff010113          	addi	sp,sp,-16
    80001260:	00113423          	sd	ra,8(sp)
    80001264:	00813023          	sd	s0,0(sp)
    80001268:	01010413          	addi	s0,sp,16
    syscall(SYSCALLS::THREAD_DISPATCH);
    8000126c:	01300513          	li	a0,19
    80001270:	00000097          	auipc	ra,0x0
    80001274:	ed4080e7          	jalr	-300(ra) # 80001144 <_Z7syscallmz>
}
    80001278:	00813083          	ld	ra,8(sp)
    8000127c:	00013403          	ld	s0,0(sp)
    80001280:	01010113          	addi	sp,sp,16
    80001284:	00008067          	ret

0000000080001288 <_Z10time_sleepm>:

int time_sleep(time_t time) {
    80001288:	ff010113          	addi	sp,sp,-16
    8000128c:	00113423          	sd	ra,8(sp)
    80001290:	00813023          	sd	s0,0(sp)
    80001294:	01010413          	addi	s0,sp,16
    80001298:	00050593          	mv	a1,a0
    syscall(SYSCALLS::TIME_SLEEP, time);
    8000129c:	03100513          	li	a0,49
    800012a0:	00000097          	auipc	ra,0x0
    800012a4:	ea4080e7          	jalr	-348(ra) # 80001144 <_Z7syscallmz>

    uint64 ret;
    __asm__ volatile ("mv %[rt], a0" : [rt] "=r" (ret));
    800012a8:	00050513          	mv	a0,a0
    return (int)ret;
}
    800012ac:	0005051b          	sext.w	a0,a0
    800012b0:	00813083          	ld	ra,8(sp)
    800012b4:	00013403          	ld	s0,0(sp)
    800012b8:	01010113          	addi	sp,sp,16
    800012bc:	00008067          	ret

00000000800012c0 <_Z8sem_openPP10_Semaphorej>:

int sem_open(sem_t* handle, unsigned init) {
    800012c0:	ff010113          	addi	sp,sp,-16
    800012c4:	00113423          	sd	ra,8(sp)
    800012c8:	00813023          	sd	s0,0(sp)
    800012cc:	01010413          	addi	s0,sp,16
    800012d0:	00058613          	mv	a2,a1
    syscall(SYSCALLS::SEM_OPEN, handle, init);
    800012d4:	00050593          	mv	a1,a0
    800012d8:	02100513          	li	a0,33
    800012dc:	00000097          	auipc	ra,0x0
    800012e0:	e68080e7          	jalr	-408(ra) # 80001144 <_Z7syscallmz>

    uint64 ret;
    __asm__ volatile ("mv %[rt], a0" : [rt] "=r" (ret));
    800012e4:	00050513          	mv	a0,a0
    return (int)ret;
}
    800012e8:	0005051b          	sext.w	a0,a0
    800012ec:	00813083          	ld	ra,8(sp)
    800012f0:	00013403          	ld	s0,0(sp)
    800012f4:	01010113          	addi	sp,sp,16
    800012f8:	00008067          	ret

00000000800012fc <_Z9sem_closeP10_Semaphore>:

int sem_close(sem_t handle) {
    800012fc:	ff010113          	addi	sp,sp,-16
    80001300:	00113423          	sd	ra,8(sp)
    80001304:	00813023          	sd	s0,0(sp)
    80001308:	01010413          	addi	s0,sp,16
    8000130c:	00050593          	mv	a1,a0
    syscall(SYSCALLS::SEM_CLOSE, handle);
    80001310:	02200513          	li	a0,34
    80001314:	00000097          	auipc	ra,0x0
    80001318:	e30080e7          	jalr	-464(ra) # 80001144 <_Z7syscallmz>

    uint64 ret;
    __asm__ volatile ("mv %[rt], a0" : [rt] "=r" (ret));
    8000131c:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001320:	0005051b          	sext.w	a0,a0
    80001324:	00813083          	ld	ra,8(sp)
    80001328:	00013403          	ld	s0,0(sp)
    8000132c:	01010113          	addi	sp,sp,16
    80001330:	00008067          	ret

0000000080001334 <_Z8sem_waitP10_Semaphore>:

int sem_wait(sem_t handle) {
    80001334:	ff010113          	addi	sp,sp,-16
    80001338:	00113423          	sd	ra,8(sp)
    8000133c:	00813023          	sd	s0,0(sp)
    80001340:	01010413          	addi	s0,sp,16
    80001344:	00050593          	mv	a1,a0
    syscall(SYSCALLS::SEM_WAIT, handle);
    80001348:	02300513          	li	a0,35
    8000134c:	00000097          	auipc	ra,0x0
    80001350:	df8080e7          	jalr	-520(ra) # 80001144 <_Z7syscallmz>

    uint64 ret;
    __asm__ volatile ("mv %[rt], a0" : [rt] "=r" (ret));
    80001354:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001358:	0005051b          	sext.w	a0,a0
    8000135c:	00813083          	ld	ra,8(sp)
    80001360:	00013403          	ld	s0,0(sp)
    80001364:	01010113          	addi	sp,sp,16
    80001368:	00008067          	ret

000000008000136c <_Z10sem_signalP10_Semaphore>:

int sem_signal(sem_t handle) {
    8000136c:	ff010113          	addi	sp,sp,-16
    80001370:	00113423          	sd	ra,8(sp)
    80001374:	00813023          	sd	s0,0(sp)
    80001378:	01010413          	addi	s0,sp,16
    8000137c:	00050593          	mv	a1,a0
    syscall(SYSCALLS::SEM_SIGNAL, handle);
    80001380:	02400513          	li	a0,36
    80001384:	00000097          	auipc	ra,0x0
    80001388:	dc0080e7          	jalr	-576(ra) # 80001144 <_Z7syscallmz>

    uint64 ret;
    __asm__ volatile ("mv %[rt], a0" : [rt] "=r" (ret));
    8000138c:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001390:	0005051b          	sext.w	a0,a0
    80001394:	00813083          	ld	ra,8(sp)
    80001398:	00013403          	ld	s0,0(sp)
    8000139c:	01010113          	addi	sp,sp,16
    800013a0:	00008067          	ret

00000000800013a4 <_Z11sem_trywaitP10_Semaphore>:

int sem_trywait(sem_t handle) {
    800013a4:	ff010113          	addi	sp,sp,-16
    800013a8:	00113423          	sd	ra,8(sp)
    800013ac:	00813023          	sd	s0,0(sp)
    800013b0:	01010413          	addi	s0,sp,16
    800013b4:	00050593          	mv	a1,a0
    syscall(SYSCALLS::SEM_TRYWAIT, handle);
    800013b8:	02600513          	li	a0,38
    800013bc:	00000097          	auipc	ra,0x0
    800013c0:	d88080e7          	jalr	-632(ra) # 80001144 <_Z7syscallmz>

    uint64 ret;
    __asm__ volatile ("mv %[rt], a0" : [rt] "=r" (ret));
    800013c4:	00050513          	mv	a0,a0
    return (int)ret;
}
    800013c8:	0005051b          	sext.w	a0,a0
    800013cc:	00813083          	ld	ra,8(sp)
    800013d0:	00013403          	ld	s0,0(sp)
    800013d4:	01010113          	addi	sp,sp,16
    800013d8:	00008067          	ret

00000000800013dc <_Z13sem_timedwaitP10_Semaphorem>:

int sem_timedwait(sem_t handle, time_t timeout) {
    800013dc:	ff010113          	addi	sp,sp,-16
    800013e0:	00113423          	sd	ra,8(sp)
    800013e4:	00813023          	sd	s0,0(sp)
    800013e8:	01010413          	addi	s0,sp,16
    800013ec:	00058613          	mv	a2,a1
    syscall(SYSCALLS::SEM_TIMEDWAIT, handle, timeout);
    800013f0:	00050593          	mv	a1,a0
    800013f4:	02500513          	li	a0,37
    800013f8:	00000097          	auipc	ra,0x0
    800013fc:	d4c080e7          	jalr	-692(ra) # 80001144 <_Z7syscallmz>

    uint64 ret;
    __asm__ volatile ("mv %[rt], a0" : [rt] "=r" (ret));
    80001400:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001404:	0005051b          	sext.w	a0,a0
    80001408:	00813083          	ld	ra,8(sp)
    8000140c:	00013403          	ld	s0,0(sp)
    80001410:	01010113          	addi	sp,sp,16
    80001414:	00008067          	ret

0000000080001418 <_Z4getcv>:

char getc() {
    80001418:	ff010113          	addi	sp,sp,-16
    8000141c:	00113423          	sd	ra,8(sp)
    80001420:	00813023          	sd	s0,0(sp)
    80001424:	01010413          	addi	s0,sp,16
    syscall(SYSCALLS::GETC);
    80001428:	04100513          	li	a0,65
    8000142c:	00000097          	auipc	ra,0x0
    80001430:	d18080e7          	jalr	-744(ra) # 80001144 <_Z7syscallmz>

    uint64 ret;
    __asm__ volatile ("mv %[rt], a0" : [rt] "=r" (ret));
    80001434:	00050513          	mv	a0,a0
    return (char)ret;
}
    80001438:	0ff57513          	andi	a0,a0,255
    8000143c:	00813083          	ld	ra,8(sp)
    80001440:	00013403          	ld	s0,0(sp)
    80001444:	01010113          	addi	sp,sp,16
    80001448:	00008067          	ret

000000008000144c <_Z4putcc>:

void putc(char c) {
    8000144c:	ff010113          	addi	sp,sp,-16
    80001450:	00113423          	sd	ra,8(sp)
    80001454:	00813023          	sd	s0,0(sp)
    80001458:	01010413          	addi	s0,sp,16
    8000145c:	00050593          	mv	a1,a0
    syscall(SYSCALLS::PUTC, c);
    80001460:	04200513          	li	a0,66
    80001464:	00000097          	auipc	ra,0x0
    80001468:	ce0080e7          	jalr	-800(ra) # 80001144 <_Z7syscallmz>
}
    8000146c:	00813083          	ld	ra,8(sp)
    80001470:	00013403          	ld	s0,0(sp)
    80001474:	01010113          	addi	sp,sp,16
    80001478:	00008067          	ret

000000008000147c <_Z12putc_handlerv>:

void putc_handler() {
    8000147c:	ff010113          	addi	sp,sp,-16
    80001480:	00113423          	sd	ra,8(sp)
    80001484:	00813023          	sd	s0,0(sp)
    80001488:	01010413          	addi	s0,sp,16
    syscall(SYSCALLS::PUTC_HANDLER);
    8000148c:	04300513          	li	a0,67
    80001490:	00000097          	auipc	ra,0x0
    80001494:	cb4080e7          	jalr	-844(ra) # 80001144 <_Z7syscallmz>
    80001498:	00813083          	ld	ra,8(sp)
    8000149c:	00013403          	ld	s0,0(sp)
    800014a0:	01010113          	addi	sp,sp,16
    800014a4:	00008067          	ret

00000000800014a8 <_ZN10_Semaphore4waitEv>:
#include "../h/semaphore.hpp"
#include "../h/syscall_c.hpp"

int _Semaphore::wait() {
    if (this->closed)
    800014a8:	01854783          	lbu	a5,24(a0)
    800014ac:	0a079c63          	bnez	a5,80001564 <_ZN10_Semaphore4waitEv+0xbc>
int _Semaphore::wait() {
    800014b0:	fe010113          	addi	sp,sp,-32
    800014b4:	00113c23          	sd	ra,24(sp)
    800014b8:	00813823          	sd	s0,16(sp)
    800014bc:	00913423          	sd	s1,8(sp)
    800014c0:	01213023          	sd	s2,0(sp)
    800014c4:	02010413          	addi	s0,sp,32
    800014c8:	00050493          	mv	s1,a0
        return -1;

    if (--value < 0) {
    800014cc:	00052783          	lw	a5,0(a0)
    800014d0:	fff7879b          	addiw	a5,a5,-1
    800014d4:	00f52023          	sw	a5,0(a0)
    800014d8:	02079713          	slli	a4,a5,0x20
    800014dc:	02074063          	bltz	a4,800014fc <_ZN10_Semaphore4waitEv+0x54>

        if (this->closed)
            return -1;
    }

    return 0;
    800014e0:	00000513          	li	a0,0
}
    800014e4:	01813083          	ld	ra,24(sp)
    800014e8:	01013403          	ld	s0,16(sp)
    800014ec:	00813483          	ld	s1,8(sp)
    800014f0:	00013903          	ld	s2,0(sp)
    800014f4:	02010113          	addi	sp,sp,32
    800014f8:	00008067          	ret
        this->blocked.addLast(TCB::running);
    800014fc:	0000a797          	auipc	a5,0xa
    80001500:	3e47b783          	ld	a5,996(a5) # 8000b8e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001504:	0007b903          	ld	s2,0(a5)
        Elem *next;

        Elem(T *data, Elem *next) : data(data), next(next) {}

        void* operator new(size_t size) {
            return MemoryAllocator::mem_alloc(size);
    80001508:	01000513          	li	a0,16
    8000150c:	00001097          	auipc	ra,0x1
    80001510:	00c080e7          	jalr	12(ra) # 80002518 <_ZN15MemoryAllocator9mem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001514:	01253023          	sd	s2,0(a0)
    80001518:	00053423          	sd	zero,8(a0)
            tail = head;
    }

    void addLast(T* data) {
        Elem* elem = new Elem(data, 0);
        if (tail) {
    8000151c:	0104b783          	ld	a5,16(s1)
    80001520:	02078c63          	beqz	a5,80001558 <_ZN10_Semaphore4waitEv+0xb0>
            tail->next = elem;
    80001524:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001528:	00a4b823          	sd	a0,16(s1)
        TCB::running->setBlocked(true);
    8000152c:	0000a797          	auipc	a5,0xa
    80001530:	3b47b783          	ld	a5,948(a5) # 8000b8e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001534:	0007b783          	ld	a5,0(a5)
    bool isFinished() const { return this->finished; }
    void setFinished(bool value) { this->finished = value; }

    // Getter and setter for blocked
    bool isBlocked() const { return this->blocked; }
    void setBlocked(bool value) { this->blocked = value; }
    80001538:	00100713          	li	a4,1
    8000153c:	02e780a3          	sb	a4,33(a5)
        thread_dispatch();
    80001540:	00000097          	auipc	ra,0x0
    80001544:	d1c080e7          	jalr	-740(ra) # 8000125c <_Z15thread_dispatchv>
        if (this->closed)
    80001548:	0184c783          	lbu	a5,24(s1)
    8000154c:	02079063          	bnez	a5,8000156c <_ZN10_Semaphore4waitEv+0xc4>
    return 0;
    80001550:	00000513          	li	a0,0
    80001554:	f91ff06f          	j	800014e4 <_ZN10_Semaphore4waitEv+0x3c>
        }
        else
            head = tail = elem;
    80001558:	00a4b823          	sd	a0,16(s1)
    8000155c:	00a4b423          	sd	a0,8(s1)
    80001560:	fcdff06f          	j	8000152c <_ZN10_Semaphore4waitEv+0x84>
        return -1;
    80001564:	fff00513          	li	a0,-1
}
    80001568:	00008067          	ret
            return -1;
    8000156c:	fff00513          	li	a0,-1
    80001570:	f75ff06f          	j	800014e4 <_ZN10_Semaphore4waitEv+0x3c>

0000000080001574 <_ZN10_Semaphore6signalEv>:

int _Semaphore::signal() {
    if (this->closed)
    80001574:	01854703          	lbu	a4,24(a0)
    80001578:	0a071063          	bnez	a4,80001618 <_ZN10_Semaphore6signalEv+0xa4>
    8000157c:	00050793          	mv	a5,a0
        return -1;

    if (++value <= 0) {
    80001580:	00052703          	lw	a4,0(a0)
    80001584:	0017071b          	addiw	a4,a4,1
    80001588:	0007069b          	sext.w	a3,a4
    8000158c:	00e52023          	sw	a4,0(a0)
    80001590:	00d05663          	blez	a3,8000159c <_ZN10_Semaphore6signalEv+0x28>
            newRunning->setBlocked(false);
            Scheduler::put(newRunning);
        }
    }

    return 0;
    80001594:	00000513          	li	a0,0
}
    80001598:	00008067          	ret
int _Semaphore::signal() {
    8000159c:	fe010113          	addi	sp,sp,-32
    800015a0:	00113c23          	sd	ra,24(sp)
    800015a4:	00813823          	sd	s0,16(sp)
    800015a8:	00913423          	sd	s1,8(sp)
    800015ac:	02010413          	addi	s0,sp,32
    }

    T* removeFirst() {
        if (!head)
    800015b0:	00853503          	ld	a0,8(a0)
    800015b4:	04050263          	beqz	a0,800015f8 <_ZN10_Semaphore6signalEv+0x84>
            return 0;

        Elem* elem = head;
        head = head->next;
    800015b8:	00853703          	ld	a4,8(a0)
    800015bc:	00e7b423          	sd	a4,8(a5)
        if (!head)
    800015c0:	02070863          	beqz	a4,800015f0 <_ZN10_Semaphore6signalEv+0x7c>
            tail = 0;

        T* ret = elem->data;
    800015c4:	00053483          	ld	s1,0(a0)
            MemoryAllocator::mem_free(ptr);
    800015c8:	00001097          	auipc	ra,0x1
    800015cc:	0ec080e7          	jalr	236(ra) # 800026b4 <_ZN15MemoryAllocator8mem_freeEPv>
    bool isBlocked() const { return this->blocked; }
    800015d0:	0214c783          	lbu	a5,33(s1)
        if (newRunning->isBlocked()) {
    800015d4:	02079663          	bnez	a5,80001600 <_ZN10_Semaphore6signalEv+0x8c>
    return 0;
    800015d8:	00000513          	li	a0,0
}
    800015dc:	01813083          	ld	ra,24(sp)
    800015e0:	01013403          	ld	s0,16(sp)
    800015e4:	00813483          	ld	s1,8(sp)
    800015e8:	02010113          	addi	sp,sp,32
    800015ec:	00008067          	ret
            tail = 0;
    800015f0:	0007b823          	sd	zero,16(a5)
    800015f4:	fd1ff06f          	j	800015c4 <_ZN10_Semaphore6signalEv+0x50>
            return 0;
    800015f8:	00050493          	mv	s1,a0
    800015fc:	fd5ff06f          	j	800015d0 <_ZN10_Semaphore6signalEv+0x5c>
    void setBlocked(bool value) { this->blocked = value; }
    80001600:	020480a3          	sb	zero,33(s1)
            Scheduler::put(newRunning);
    80001604:	00048513          	mv	a0,s1
    80001608:	00002097          	auipc	ra,0x2
    8000160c:	940080e7          	jalr	-1728(ra) # 80002f48 <_ZN9Scheduler3putEP3TCB>
    return 0;
    80001610:	00000513          	li	a0,0
    80001614:	fc9ff06f          	j	800015dc <_ZN10_Semaphore6signalEv+0x68>
        return -1;
    80001618:	fff00513          	li	a0,-1
    8000161c:	00008067          	ret

0000000080001620 <_ZN10_Semaphore5closeEv>:

int _Semaphore::close() {
    80001620:	fe010113          	addi	sp,sp,-32
    80001624:	00113c23          	sd	ra,24(sp)
    80001628:	00813823          	sd	s0,16(sp)
    8000162c:	00913423          	sd	s1,8(sp)
    80001630:	01213023          	sd	s2,0(sp)
    80001634:	02010413          	addi	s0,sp,32
    80001638:	00050493          	mv	s1,a0
    if (this->closed)
    8000163c:	01854783          	lbu	a5,24(a0)
    80001640:	02078663          	beqz	a5,8000166c <_ZN10_Semaphore5closeEv+0x4c>
        return -1;
    80001644:	fff00513          	li	a0,-1
    80001648:	0480006f          	j	80001690 <_ZN10_Semaphore5closeEv+0x70>
            tail = 0;
    8000164c:	0004b823          	sd	zero,16(s1)
        T* ret = elem->data;
    80001650:	00053903          	ld	s2,0(a0)
            MemoryAllocator::mem_free(ptr);
    80001654:	00001097          	auipc	ra,0x1
    80001658:	060080e7          	jalr	96(ra) # 800026b4 <_ZN15MemoryAllocator8mem_freeEPv>
    8000165c:	020900a3          	sb	zero,33(s2)

    while (this->blocked.peekFirst()) {
        TCB* current = this->blocked.removeFirst();
        current->setBlocked(false);
        Scheduler::put(current);
    80001660:	00090513          	mv	a0,s2
    80001664:	00002097          	auipc	ra,0x2
    80001668:	8e4080e7          	jalr	-1820(ra) # 80002f48 <_ZN9Scheduler3putEP3TCB>
        delete elem;
        return ret;
    }

    T* peekFirst() {
        if (!head)
    8000166c:	0084b503          	ld	a0,8(s1)
    80001670:	00050e63          	beqz	a0,8000168c <_ZN10_Semaphore5closeEv+0x6c>
            return 0;
        return head->data;
    80001674:	00053783          	ld	a5,0(a0)
    while (this->blocked.peekFirst()) {
    80001678:	02078863          	beqz	a5,800016a8 <_ZN10_Semaphore5closeEv+0x88>
        head = head->next;
    8000167c:	00853783          	ld	a5,8(a0)
    80001680:	00f4b423          	sd	a5,8(s1)
        if (!head)
    80001684:	fc0796e3          	bnez	a5,80001650 <_ZN10_Semaphore5closeEv+0x30>
    80001688:	fc5ff06f          	j	8000164c <_ZN10_Semaphore5closeEv+0x2c>
    }

    return 0;
    8000168c:	00000513          	li	a0,0
}
    80001690:	01813083          	ld	ra,24(sp)
    80001694:	01013403          	ld	s0,16(sp)
    80001698:	00813483          	ld	s1,8(sp)
    8000169c:	00013903          	ld	s2,0(sp)
    800016a0:	02010113          	addi	sp,sp,32
    800016a4:	00008067          	ret
    return 0;
    800016a8:	00000513          	li	a0,0
    800016ac:	fe5ff06f          	j	80001690 <_ZN10_Semaphore5closeEv+0x70>

00000000800016b0 <_ZN10_Semaphore9timedwaitEm>:

int _Semaphore::timedwait(time_t timeout) {
    if (this->closed)
    800016b0:	01854783          	lbu	a5,24(a0)
    800016b4:	0e079a63          	bnez	a5,800017a8 <_ZN10_Semaphore9timedwaitEm+0xf8>
int _Semaphore::timedwait(time_t timeout) {
    800016b8:	fd010113          	addi	sp,sp,-48
    800016bc:	02113423          	sd	ra,40(sp)
    800016c0:	02813023          	sd	s0,32(sp)
    800016c4:	00913c23          	sd	s1,24(sp)
    800016c8:	01213823          	sd	s2,16(sp)
    800016cc:	01313423          	sd	s3,8(sp)
    800016d0:	03010413          	addi	s0,sp,48
    800016d4:	00050493          	mv	s1,a0
    800016d8:	00058913          	mv	s2,a1
        return -1;

    int ret = 0;

    if (--this->value < 0) {
    800016dc:	00052783          	lw	a5,0(a0)
    800016e0:	fff7879b          	addiw	a5,a5,-1
    800016e4:	00f52023          	sw	a5,0(a0)
    800016e8:	02079713          	slli	a4,a5,0x20
    800016ec:	02074263          	bltz	a4,80001710 <_ZN10_Semaphore9timedwaitEm+0x60>
    int ret = 0;
    800016f0:	00000513          	li	a0,0
        if (this->closed)
            ret = -1;
    }

    return ret;
}
    800016f4:	02813083          	ld	ra,40(sp)
    800016f8:	02013403          	ld	s0,32(sp)
    800016fc:	01813483          	ld	s1,24(sp)
    80001700:	01013903          	ld	s2,16(sp)
    80001704:	00813983          	ld	s3,8(sp)
    80001708:	03010113          	addi	sp,sp,48
    8000170c:	00008067          	ret
        this->blocked.addLast(TCB::running);
    80001710:	0000a797          	auipc	a5,0xa
    80001714:	1d07b783          	ld	a5,464(a5) # 8000b8e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001718:	0007b983          	ld	s3,0(a5)
            return MemoryAllocator::mem_alloc(size);
    8000171c:	01000513          	li	a0,16
    80001720:	00001097          	auipc	ra,0x1
    80001724:	df8080e7          	jalr	-520(ra) # 80002518 <_ZN15MemoryAllocator9mem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001728:	01353023          	sd	s3,0(a0)
    8000172c:	00053423          	sd	zero,8(a0)
        if (tail) {
    80001730:	0104b783          	ld	a5,16(s1)
    80001734:	06078063          	beqz	a5,80001794 <_ZN10_Semaphore9timedwaitEm+0xe4>
            tail->next = elem;
    80001738:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000173c:	00a4b823          	sd	a0,16(s1)
        TCB::running->setBlocked(true);
    80001740:	0000a997          	auipc	s3,0xa
    80001744:	1a09b983          	ld	s3,416(s3) # 8000b8e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001748:	0009b503          	ld	a0,0(s3)
    8000174c:	00100793          	li	a5,1
    80001750:	02f500a3          	sb	a5,33(a0)
    // Getter for time slice
    uint64 getTimeSlice() const { return this->timeSlice; }
    static uint64 timeSliceCounter;

    // Sleeping getters and setters
    void setSleepingTime(time_t time) { this->sleepingTime = time; }
    80001754:	03253823          	sd	s2,48(a0)
    time_t getSleepingTime() const { return this->sleepingTime; }

    void setSleep(bool val) { this->sleep = val; }
    80001758:	02f50c23          	sb	a5,56(a0)
        WaitList::add(TCB::running);
    8000175c:	00000097          	auipc	ra,0x0
    80001760:	090080e7          	jalr	144(ra) # 800017ec <_ZN8WaitList3addEP3TCB>
        thread_dispatch();
    80001764:	00000097          	auipc	ra,0x0
    80001768:	af8080e7          	jalr	-1288(ra) # 8000125c <_Z15thread_dispatchv>
        if (TCB::running->isBlocked())
    8000176c:	0009b783          	ld	a5,0(s3)
    bool isBlocked() const { return this->blocked; }
    80001770:	0217c703          	lbu	a4,33(a5)
    80001774:	02071663          	bnez	a4,800017a0 <_ZN10_Semaphore9timedwaitEm+0xf0>
    int ret = 0;
    80001778:	00000513          	li	a0,0
    void setBlocked(bool value) { this->blocked = value; }
    8000177c:	020780a3          	sb	zero,33(a5)
    void setSleep(bool val) { this->sleep = val; }
    80001780:	02078c23          	sb	zero,56(a5)
        if (this->closed)
    80001784:	0184c783          	lbu	a5,24(s1)
    80001788:	f60786e3          	beqz	a5,800016f4 <_ZN10_Semaphore9timedwaitEm+0x44>
            ret = -1;
    8000178c:	fff00513          	li	a0,-1
    80001790:	f65ff06f          	j	800016f4 <_ZN10_Semaphore9timedwaitEm+0x44>
            head = tail = elem;
    80001794:	00a4b823          	sd	a0,16(s1)
    80001798:	00a4b423          	sd	a0,8(s1)
    8000179c:	fa5ff06f          	j	80001740 <_ZN10_Semaphore9timedwaitEm+0x90>
            ret = -2;
    800017a0:	ffe00513          	li	a0,-2
    800017a4:	fd9ff06f          	j	8000177c <_ZN10_Semaphore9timedwaitEm+0xcc>
        return -1;
    800017a8:	fff00513          	li	a0,-1
}
    800017ac:	00008067          	ret

00000000800017b0 <_ZN10_Semaphore7tryWaitEv>:

int _Semaphore::tryWait() {
    800017b0:	ff010113          	addi	sp,sp,-16
    800017b4:	00813423          	sd	s0,8(sp)
    800017b8:	01010413          	addi	s0,sp,16
    if (closed)
    800017bc:	01854783          	lbu	a5,24(a0)
    800017c0:	00079e63          	bnez	a5,800017dc <_ZN10_Semaphore7tryWaitEv+0x2c>
        return -1;

    if (value <= 0)
    800017c4:	00052783          	lw	a5,0(a0)
    800017c8:	00f05e63          	blez	a5,800017e4 <_ZN10_Semaphore7tryWaitEv+0x34>
        return 1;

    return 0;
    800017cc:	00000513          	li	a0,0
}
    800017d0:	00813403          	ld	s0,8(sp)
    800017d4:	01010113          	addi	sp,sp,16
    800017d8:	00008067          	ret
        return -1;
    800017dc:	fff00513          	li	a0,-1
    800017e0:	ff1ff06f          	j	800017d0 <_ZN10_Semaphore7tryWaitEv+0x20>
        return 1;
    800017e4:	00100513          	li	a0,1
    800017e8:	fe9ff06f          	j	800017d0 <_ZN10_Semaphore7tryWaitEv+0x20>

00000000800017ec <_ZN8WaitList3addEP3TCB>:
#include "../h/wait_list.hpp"

WaitList::Node* WaitList::head = 0;

void WaitList::add(thread_t tcb) {
    800017ec:	fe010113          	addi	sp,sp,-32
    800017f0:	00113c23          	sd	ra,24(sp)
    800017f4:	00813823          	sd	s0,16(sp)
    800017f8:	00913423          	sd	s1,8(sp)
    800017fc:	01213023          	sd	s2,0(sp)
    80001800:	02010413          	addi	s0,sp,32
    80001804:	00050493          	mv	s1,a0
    time_t getSleepingTime() const { return this->sleepingTime; }
    80001808:	03053903          	ld	s2,48(a0)
    Node* new_node = new Node(tcb, tcb->getSleepingTime());
    8000180c:	01800513          	li	a0,24
    80001810:	00000097          	auipc	ra,0x0
    80001814:	7dc080e7          	jalr	2012(ra) # 80001fec <_Znwm>
    struct Node {
        thread_t tcb;
        time_t time;
        Node* next;

        Node(thread_t tcb, time_t time) : tcb(tcb), time(time), next(0) {}
    80001818:	00953023          	sd	s1,0(a0)
    8000181c:	01253423          	sd	s2,8(a0)
    80001820:	00053823          	sd	zero,16(a0)
    Node* current = head;
    80001824:	0000a597          	auipc	a1,0xa
    80001828:	11c5b583          	ld	a1,284(a1) # 8000b940 <_ZN8WaitList4headE>
    8000182c:	00058793          	mv	a5,a1
    Node* previous = nullptr;
    80001830:	00000613          	li	a2,0

    while (current) {
    80001834:	02078263          	beqz	a5,80001858 <_ZN8WaitList3addEP3TCB+0x6c>
        if (current->time >= new_node->time)
    80001838:	0087b683          	ld	a3,8(a5)
    8000183c:	00853703          	ld	a4,8(a0)
    80001840:	00e6fc63          	bgeu	a3,a4,80001858 <_ZN8WaitList3addEP3TCB+0x6c>
            break;
        new_node->time -= current->time;
    80001844:	40d70733          	sub	a4,a4,a3
    80001848:	00e53423          	sd	a4,8(a0)

        previous = current;
    8000184c:	00078613          	mv	a2,a5
        current = current->next;
    80001850:	0107b783          	ld	a5,16(a5)
    while (current) {
    80001854:	fe1ff06f          	j	80001834 <_ZN8WaitList3addEP3TCB+0x48>
    }

    if (head == current)
    80001858:	02b78e63          	beq	a5,a1,80001894 <_ZN8WaitList3addEP3TCB+0xa8>
        head = new_node;
    if (previous)
    8000185c:	00060463          	beqz	a2,80001864 <_ZN8WaitList3addEP3TCB+0x78>
        previous->next = new_node;
    80001860:	00a63823          	sd	a0,16(a2)

    new_node->next = current;
    80001864:	00f53823          	sd	a5,16(a0)
    if (new_node->next)
    80001868:	00078a63          	beqz	a5,8000187c <_ZN8WaitList3addEP3TCB+0x90>
        new_node->next->time -= new_node->time;
    8000186c:	00853683          	ld	a3,8(a0)
    80001870:	0087b703          	ld	a4,8(a5)
    80001874:	40d70733          	sub	a4,a4,a3
    80001878:	00e7b423          	sd	a4,8(a5)
}
    8000187c:	01813083          	ld	ra,24(sp)
    80001880:	01013403          	ld	s0,16(sp)
    80001884:	00813483          	ld	s1,8(sp)
    80001888:	00013903          	ld	s2,0(sp)
    8000188c:	02010113          	addi	sp,sp,32
    80001890:	00008067          	ret
        head = new_node;
    80001894:	0000a717          	auipc	a4,0xa
    80001898:	0aa73623          	sd	a0,172(a4) # 8000b940 <_ZN8WaitList4headE>
    8000189c:	fc1ff06f          	j	8000185c <_ZN8WaitList3addEP3TCB+0x70>

00000000800018a0 <_ZN8WaitList6removeEv>:

thread_t WaitList::remove() {
    800018a0:	fe010113          	addi	sp,sp,-32
    800018a4:	00113c23          	sd	ra,24(sp)
    800018a8:	00813823          	sd	s0,16(sp)
    800018ac:	00913423          	sd	s1,8(sp)
    800018b0:	02010413          	addi	s0,sp,32
    Node* oldHead = head;
    800018b4:	0000a797          	auipc	a5,0xa
    800018b8:	08c78793          	addi	a5,a5,140 # 8000b940 <_ZN8WaitList4headE>
    800018bc:	0007b503          	ld	a0,0(a5)
    thread_t ret = oldHead->tcb;
    800018c0:	00053483          	ld	s1,0(a0)
    head = head->next;
    800018c4:	01053703          	ld	a4,16(a0)
    800018c8:	00e7b023          	sd	a4,0(a5)
    delete oldHead;
    800018cc:	00050663          	beqz	a0,800018d8 <_ZN8WaitList6removeEv+0x38>
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	76c080e7          	jalr	1900(ra) # 8000203c <_ZdlPv>
    return ret;
}
    800018d8:	00048513          	mv	a0,s1
    800018dc:	01813083          	ld	ra,24(sp)
    800018e0:	01013403          	ld	s0,16(sp)
    800018e4:	00813483          	ld	s1,8(sp)
    800018e8:	02010113          	addi	sp,sp,32
    800018ec:	00008067          	ret

00000000800018f0 <_ZN8WaitList4wakeEv>:

void WaitList::wake() {
    if (head)
    800018f0:	0000a797          	auipc	a5,0xa
    800018f4:	0507b783          	ld	a5,80(a5) # 8000b940 <_ZN8WaitList4headE>
    800018f8:	00078863          	beqz	a5,80001908 <_ZN8WaitList4wakeEv+0x18>
        head->time--;
    800018fc:	0087b703          	ld	a4,8(a5)
    80001900:	fff70713          	addi	a4,a4,-1
    80001904:	00e7b423          	sd	a4,8(a5)

    while (head && head->time <= 0) {
    80001908:	0000a797          	auipc	a5,0xa
    8000190c:	0387b783          	ld	a5,56(a5) # 8000b940 <_ZN8WaitList4headE>
    80001910:	06078463          	beqz	a5,80001978 <_ZN8WaitList4wakeEv+0x88>
    80001914:	0087b783          	ld	a5,8(a5)
    80001918:	06079063          	bnez	a5,80001978 <_ZN8WaitList4wakeEv+0x88>
void WaitList::wake() {
    8000191c:	ff010113          	addi	sp,sp,-16
    80001920:	00113423          	sd	ra,8(sp)
    80001924:	00813023          	sd	s0,0(sp)
    80001928:	01010413          	addi	s0,sp,16
    8000192c:	0240006f          	j	80001950 <_ZN8WaitList4wakeEv+0x60>
    void setSleep(bool val) { this->sleep = val; }
    80001930:	02050c23          	sb	zero,56(a0)
        thread_t current = WaitList::remove();
        if (current && current->isSleeping()) {
            current->setSleep(false);
            Scheduler::put(current);
    80001934:	00001097          	auipc	ra,0x1
    80001938:	614080e7          	jalr	1556(ra) # 80002f48 <_ZN9Scheduler3putEP3TCB>
    while (head && head->time <= 0) {
    8000193c:	0000a797          	auipc	a5,0xa
    80001940:	0047b783          	ld	a5,4(a5) # 8000b940 <_ZN8WaitList4headE>
    80001944:	02078263          	beqz	a5,80001968 <_ZN8WaitList4wakeEv+0x78>
    80001948:	0087b783          	ld	a5,8(a5)
    8000194c:	00079e63          	bnez	a5,80001968 <_ZN8WaitList4wakeEv+0x78>
        thread_t current = WaitList::remove();
    80001950:	00000097          	auipc	ra,0x0
    80001954:	f50080e7          	jalr	-176(ra) # 800018a0 <_ZN8WaitList6removeEv>
        if (current && current->isSleeping()) {
    80001958:	fe0502e3          	beqz	a0,8000193c <_ZN8WaitList4wakeEv+0x4c>
    bool isSleeping() const { return this->sleep; }
    8000195c:	03854783          	lbu	a5,56(a0)
    80001960:	fc078ee3          	beqz	a5,8000193c <_ZN8WaitList4wakeEv+0x4c>
    80001964:	fcdff06f          	j	80001930 <_ZN8WaitList4wakeEv+0x40>
        }
    }
}
    80001968:	00813083          	ld	ra,8(sp)
    8000196c:	00013403          	ld	s0,0(sp)
    80001970:	01010113          	addi	sp,sp,16
    80001974:	00008067          	ret
    80001978:	00008067          	ret

000000008000197c <_Z15userMainWrapperPv>:
#include "../test/buffer.hpp"
#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp"

extern void userMain();

void userMainWrapper(void* arg) {
    8000197c:	ff010113          	addi	sp,sp,-16
    80001980:	00113423          	sd	ra,8(sp)
    80001984:	00813023          	sd	s0,0(sp)
    80001988:	01010413          	addi	s0,sp,16
    userMain();
    8000198c:	00004097          	auipc	ra,0x4
    80001990:	354080e7          	jalr	852(ra) # 80005ce0 <_Z8userMainv>
}
    80001994:	00813083          	ld	ra,8(sp)
    80001998:	00013403          	ld	s0,0(sp)
    8000199c:	01010113          	addi	sp,sp,16
    800019a0:	00008067          	ret

00000000800019a4 <main>:

void main()
{
    800019a4:	fd010113          	addi	sp,sp,-48
    800019a8:	02113423          	sd	ra,40(sp)
    800019ac:	02813023          	sd	s0,32(sp)
    800019b0:	03010413          	addi	s0,sp,48
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap | 0b00);
    800019b4:	0000a797          	auipc	a5,0xa
    800019b8:	efc7b783          	ld	a5,-260(a5) # 8000b8b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800019bc:	10579073          	csrw	stvec,a5
    MemoryAllocator::init();
    800019c0:	00001097          	auipc	ra,0x1
    800019c4:	b00080e7          	jalr	-1280(ra) # 800024c0 <_ZN15MemoryAllocator4initEv>
    _Console::initConsole();
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	0c0080e7          	jalr	192(ra) # 80001a88 <_ZN8_Console11initConsoleEv>

    thread_t t0, t_putc;
    thread_create(&t0, nullptr, nullptr);
    800019d0:	00000613          	li	a2,0
    800019d4:	00000593          	li	a1,0
    800019d8:	fe840513          	addi	a0,s0,-24
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	80c080e7          	jalr	-2036(ra) # 800011e8 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = t0;
    800019e4:	0000a797          	auipc	a5,0xa
    800019e8:	efc7b783          	ld	a5,-260(a5) # 8000b8e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    800019ec:	fe843703          	ld	a4,-24(s0)
    800019f0:	00e7b023          	sd	a4,0(a5)
    thread_create(&t_putc, _Console::putcHandlerWrapper, nullptr);
    800019f4:	00000613          	li	a2,0
    800019f8:	0000a597          	auipc	a1,0xa
    800019fc:	ee05b583          	ld	a1,-288(a1) # 8000b8d8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001a00:	fe040513          	addi	a0,s0,-32
    80001a04:	fffff097          	auipc	ra,0xfffff
    80001a08:	7e4080e7          	jalr	2020(ra) # 800011e8 <_Z13thread_createPP3TCBPFvPvES2_>

    thread_t t_userMain;
    thread_create(&t_userMain, userMainWrapper, nullptr);
    80001a0c:	00000613          	li	a2,0
    80001a10:	00000597          	auipc	a1,0x0
    80001a14:	f6c58593          	addi	a1,a1,-148 # 8000197c <_Z15userMainWrapperPv>
    80001a18:	fd840513          	addi	a0,s0,-40
    80001a1c:	fffff097          	auipc	ra,0xfffff
    80001a20:	7cc080e7          	jalr	1996(ra) # 800011e8 <_Z13thread_createPP3TCBPFvPvES2_>

    Riscv::user = true;
    80001a24:	0000a797          	auipc	a5,0xa
    80001a28:	eac7b783          	ld	a5,-340(a5) # 8000b8d0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001a2c:	00100713          	li	a4,1
    80001a30:	00e78023          	sb	a4,0(a5)
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001a34:	00200793          	li	a5,2
    80001a38:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!t_userMain->isFinished())
    80001a3c:	fd843783          	ld	a5,-40(s0)
    bool isFinished() const { return this->finished; }
    80001a40:	0207c783          	lbu	a5,32(a5)
    80001a44:	00079863          	bnez	a5,80001a54 <main+0xb0>
        thread_dispatch();
    80001a48:	00000097          	auipc	ra,0x0
    80001a4c:	814080e7          	jalr	-2028(ra) # 8000125c <_Z15thread_dispatchv>
    80001a50:	fedff06f          	j	80001a3c <main+0x98>

    Riscv::user = false;
    80001a54:	0000a797          	auipc	a5,0xa
    80001a58:	e7c7b783          	ld	a5,-388(a5) # 8000b8d0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001a5c:	00078023          	sb	zero,0(a5)
    _Console::flush();
    80001a60:	00000097          	auipc	ra,0x0
    80001a64:	264080e7          	jalr	612(ra) # 80001cc4 <_ZN8_Console5flushEv>

    __asm__ volatile ("li a0, 0x5555");
    80001a68:	00005537          	lui	a0,0x5
    80001a6c:	5555051b          	addiw	a0,a0,1365
    __asm__ volatile ("li a1, 0x100000");
    80001a70:	001005b7          	lui	a1,0x100
    __asm__ volatile ("sw a0, 0(a1)");
    80001a74:	00a5a023          	sw	a0,0(a1) # 100000 <_entry-0x7ff00000>
    80001a78:	02813083          	ld	ra,40(sp)
    80001a7c:	02013403          	ld	s0,32(sp)
    80001a80:	03010113          	addi	sp,sp,48
    80001a84:	00008067          	ret

0000000080001a88 <_ZN8_Console11initConsoleEv>:
#include "../h/console.hpp"

BoundedBuffer* _Console::putcBuffer = 0;
BoundedBuffer* _Console::getcBuffer = 0;

void _Console::initConsole() {
    80001a88:	fe010113          	addi	sp,sp,-32
    80001a8c:	00113c23          	sd	ra,24(sp)
    80001a90:	00813823          	sd	s0,16(sp)
    80001a94:	00913423          	sd	s1,8(sp)
    80001a98:	01213023          	sd	s2,0(sp)
    80001a9c:	02010413          	addi	s0,sp,32
    putcBuffer = new BoundedBuffer();
    80001aa0:	12000513          	li	a0,288
    80001aa4:	00000097          	auipc	ra,0x0
    80001aa8:	548080e7          	jalr	1352(ra) # 80001fec <_Znwm>
    80001aac:	00050493          	mv	s1,a0
    80001ab0:	00001097          	auipc	ra,0x1
    80001ab4:	d4c080e7          	jalr	-692(ra) # 800027fc <_ZN13BoundedBufferC1Ev>
    80001ab8:	0000a797          	auipc	a5,0xa
    80001abc:	e897b823          	sd	s1,-368(a5) # 8000b948 <_ZN8_Console10putcBufferE>
    getcBuffer = new BoundedBuffer();
    80001ac0:	12000513          	li	a0,288
    80001ac4:	00000097          	auipc	ra,0x0
    80001ac8:	528080e7          	jalr	1320(ra) # 80001fec <_Znwm>
    80001acc:	00050493          	mv	s1,a0
    80001ad0:	00001097          	auipc	ra,0x1
    80001ad4:	d2c080e7          	jalr	-724(ra) # 800027fc <_ZN13BoundedBufferC1Ev>
    80001ad8:	0000a797          	auipc	a5,0xa
    80001adc:	e697bc23          	sd	s1,-392(a5) # 8000b950 <_ZN8_Console10getcBufferE>
}
    80001ae0:	01813083          	ld	ra,24(sp)
    80001ae4:	01013403          	ld	s0,16(sp)
    80001ae8:	00813483          	ld	s1,8(sp)
    80001aec:	00013903          	ld	s2,0(sp)
    80001af0:	02010113          	addi	sp,sp,32
    80001af4:	00008067          	ret
    80001af8:	00050913          	mv	s2,a0
    putcBuffer = new BoundedBuffer();
    80001afc:	00048513          	mv	a0,s1
    80001b00:	00000097          	auipc	ra,0x0
    80001b04:	53c080e7          	jalr	1340(ra) # 8000203c <_ZdlPv>
    80001b08:	00090513          	mv	a0,s2
    80001b0c:	0000b097          	auipc	ra,0xb
    80001b10:	fac080e7          	jalr	-84(ra) # 8000cab8 <_Unwind_Resume>
    80001b14:	00050913          	mv	s2,a0
    getcBuffer = new BoundedBuffer();
    80001b18:	00048513          	mv	a0,s1
    80001b1c:	00000097          	auipc	ra,0x0
    80001b20:	520080e7          	jalr	1312(ra) # 8000203c <_ZdlPv>
    80001b24:	00090513          	mv	a0,s2
    80001b28:	0000b097          	auipc	ra,0xb
    80001b2c:	f90080e7          	jalr	-112(ra) # 8000cab8 <_Unwind_Resume>

0000000080001b30 <_ZN8_Console4PUTCEc>:

void _Console::PUTC(char c) {
    80001b30:	ff010113          	addi	sp,sp,-16
    80001b34:	00113423          	sd	ra,8(sp)
    80001b38:	00813023          	sd	s0,0(sp)
    80001b3c:	01010413          	addi	s0,sp,16
    80001b40:	00050593          	mv	a1,a0
    putcBuffer->append(c);
    80001b44:	0000a517          	auipc	a0,0xa
    80001b48:	e0453503          	ld	a0,-508(a0) # 8000b948 <_ZN8_Console10putcBufferE>
    80001b4c:	00001097          	auipc	ra,0x1
    80001b50:	d88080e7          	jalr	-632(ra) # 800028d4 <_ZN13BoundedBuffer6appendEc>
}
    80001b54:	00813083          	ld	ra,8(sp)
    80001b58:	00013403          	ld	s0,0(sp)
    80001b5c:	01010113          	addi	sp,sp,16
    80001b60:	00008067          	ret

0000000080001b64 <_ZN8_Console4GETCEv>:

char _Console::GETC() {
    80001b64:	ff010113          	addi	sp,sp,-16
    80001b68:	00113423          	sd	ra,8(sp)
    80001b6c:	00813023          	sd	s0,0(sp)
    80001b70:	01010413          	addi	s0,sp,16
    return getcBuffer->take();
    80001b74:	0000a517          	auipc	a0,0xa
    80001b78:	ddc53503          	ld	a0,-548(a0) # 8000b950 <_ZN8_Console10getcBufferE>
    80001b7c:	00001097          	auipc	ra,0x1
    80001b80:	cd4080e7          	jalr	-812(ra) # 80002850 <_ZN13BoundedBuffer4takeEv>
}
    80001b84:	00813083          	ld	ra,8(sp)
    80001b88:	00013403          	ld	s0,0(sp)
    80001b8c:	01010113          	addi	sp,sp,16
    80001b90:	00008067          	ret

0000000080001b94 <_ZN8_Console11putcHandlerEv>:

void _Console::putcHandler() {
    while(((*(char*)(CONSOLE_STATUS)) & CONSOLE_TX_STATUS_BIT)) {
    80001b94:	0000a797          	auipc	a5,0xa
    80001b98:	d0c7b783          	ld	a5,-756(a5) # 8000b8a0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001b9c:	0007b783          	ld	a5,0(a5)
    80001ba0:	0007c783          	lbu	a5,0(a5)
    80001ba4:	0207f793          	andi	a5,a5,32
    80001ba8:	06078263          	beqz	a5,80001c0c <_ZN8_Console11putcHandlerEv+0x78>
void _Console::putcHandler() {
    80001bac:	fe010113          	addi	sp,sp,-32
    80001bb0:	00113c23          	sd	ra,24(sp)
    80001bb4:	00813823          	sd	s0,16(sp)
    80001bb8:	02010413          	addi	s0,sp,32
        char volatile c = putcBuffer->take();
    80001bbc:	0000a517          	auipc	a0,0xa
    80001bc0:	d8c53503          	ld	a0,-628(a0) # 8000b948 <_ZN8_Console10putcBufferE>
    80001bc4:	00001097          	auipc	ra,0x1
    80001bc8:	c8c080e7          	jalr	-884(ra) # 80002850 <_ZN13BoundedBuffer4takeEv>
    80001bcc:	fea407a3          	sb	a0,-17(s0)
        *((char*)(CONSOLE_TX_DATA)) = c;
    80001bd0:	0000a797          	auipc	a5,0xa
    80001bd4:	cf07b783          	ld	a5,-784(a5) # 8000b8c0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001bd8:	0007b783          	ld	a5,0(a5)
    80001bdc:	fef44703          	lbu	a4,-17(s0)
    80001be0:	00e78023          	sb	a4,0(a5)
    while(((*(char*)(CONSOLE_STATUS)) & CONSOLE_TX_STATUS_BIT)) {
    80001be4:	0000a797          	auipc	a5,0xa
    80001be8:	cbc7b783          	ld	a5,-836(a5) # 8000b8a0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001bec:	0007b783          	ld	a5,0(a5)
    80001bf0:	0007c783          	lbu	a5,0(a5)
    80001bf4:	0207f793          	andi	a5,a5,32
    80001bf8:	fc0792e3          	bnez	a5,80001bbc <_ZN8_Console11putcHandlerEv+0x28>
    }
}
    80001bfc:	01813083          	ld	ra,24(sp)
    80001c00:	01013403          	ld	s0,16(sp)
    80001c04:	02010113          	addi	sp,sp,32
    80001c08:	00008067          	ret
    80001c0c:	00008067          	ret

0000000080001c10 <_ZN8_Console18putcHandlerWrapperEPv>:

void _Console::putcHandlerWrapper(void* arg) {
    80001c10:	ff010113          	addi	sp,sp,-16
    80001c14:	00113423          	sd	ra,8(sp)
    80001c18:	00813023          	sd	s0,0(sp)
    80001c1c:	01010413          	addi	s0,sp,16
    while (true) {
        putc_handler();
    80001c20:	00000097          	auipc	ra,0x0
    80001c24:	85c080e7          	jalr	-1956(ra) # 8000147c <_Z12putc_handlerv>
    while (true) {
    80001c28:	ff9ff06f          	j	80001c20 <_ZN8_Console18putcHandlerWrapperEPv+0x10>

0000000080001c2c <_ZN8_Console15console_handlerEv>:
    }
}

void _Console::console_handler() {
    80001c2c:	fe010113          	addi	sp,sp,-32
    80001c30:	00113c23          	sd	ra,24(sp)
    80001c34:	00813823          	sd	s0,16(sp)
    80001c38:	02010413          	addi	s0,sp,32
    int volatile code = plic_claim();
    80001c3c:	00005097          	auipc	ra,0x5
    80001c40:	488080e7          	jalr	1160(ra) # 800070c4 <plic_claim>
    80001c44:	fea42623          	sw	a0,-20(s0)
    char volatile c;
    if (code == 10) {
    80001c48:	fec42783          	lw	a5,-20(s0)
    80001c4c:	0007879b          	sext.w	a5,a5
    80001c50:	00a00713          	li	a4,10
    80001c54:	00e78a63          	beq	a5,a4,80001c68 <_ZN8_Console15console_handlerEv+0x3c>
            c = *((char*)CONSOLE_RX_DATA);
            getcBuffer->append(c);
        }
        plic_complete(code);
    }
}
    80001c58:	01813083          	ld	ra,24(sp)
    80001c5c:	01013403          	ld	s0,16(sp)
    80001c60:	02010113          	addi	sp,sp,32
    80001c64:	00008067          	ret
        while ((*(char*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT) {
    80001c68:	0000a797          	auipc	a5,0xa
    80001c6c:	c387b783          	ld	a5,-968(a5) # 8000b8a0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001c70:	0007b783          	ld	a5,0(a5)
    80001c74:	0007c783          	lbu	a5,0(a5)
    80001c78:	0017f793          	andi	a5,a5,1
    80001c7c:	02078a63          	beqz	a5,80001cb0 <_ZN8_Console15console_handlerEv+0x84>
            c = *((char*)CONSOLE_RX_DATA);
    80001c80:	0000a797          	auipc	a5,0xa
    80001c84:	c187b783          	ld	a5,-1000(a5) # 8000b898 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001c88:	0007b783          	ld	a5,0(a5)
    80001c8c:	0007c783          	lbu	a5,0(a5)
    80001c90:	fef405a3          	sb	a5,-21(s0)
            getcBuffer->append(c);
    80001c94:	feb44583          	lbu	a1,-21(s0)
    80001c98:	0ff5f593          	andi	a1,a1,255
    80001c9c:	0000a517          	auipc	a0,0xa
    80001ca0:	cb453503          	ld	a0,-844(a0) # 8000b950 <_ZN8_Console10getcBufferE>
    80001ca4:	00001097          	auipc	ra,0x1
    80001ca8:	c30080e7          	jalr	-976(ra) # 800028d4 <_ZN13BoundedBuffer6appendEc>
        while ((*(char*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT) {
    80001cac:	fbdff06f          	j	80001c68 <_ZN8_Console15console_handlerEv+0x3c>
        plic_complete(code);
    80001cb0:	fec42503          	lw	a0,-20(s0)
    80001cb4:	0005051b          	sext.w	a0,a0
    80001cb8:	00005097          	auipc	ra,0x5
    80001cbc:	444080e7          	jalr	1092(ra) # 800070fc <plic_complete>
}
    80001cc0:	f99ff06f          	j	80001c58 <_ZN8_Console15console_handlerEv+0x2c>

0000000080001cc4 <_ZN8_Console5flushEv>:

void _Console::flush() {
    80001cc4:	ff010113          	addi	sp,sp,-16
    80001cc8:	00813423          	sd	s0,8(sp)
    80001ccc:	01010413          	addi	s0,sp,16
    while (putcBuffer->getCount() > 0) {
    80001cd0:	0000a797          	auipc	a5,0xa
    80001cd4:	c787b783          	ld	a5,-904(a5) # 8000b948 <_ZN8_Console10putcBufferE>

public:
    BoundedBuffer();
    void append(char c);
    char take();
    int getCount() const { return this->count; }
    80001cd8:	1187a783          	lw	a5,280(a5)
    80001cdc:	06f05e63          	blez	a5,80001d58 <_ZN8_Console5flushEv+0x94>
        while(((*(char*)(CONSOLE_STATUS)) & CONSOLE_TX_STATUS_BIT)) {
    80001ce0:	0000a797          	auipc	a5,0xa
    80001ce4:	bc07b783          	ld	a5,-1088(a5) # 8000b8a0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001ce8:	0007b783          	ld	a5,0(a5)
    80001cec:	0007c783          	lbu	a5,0(a5)
    80001cf0:	0207f793          	andi	a5,a5,32
    80001cf4:	fc078ee3          	beqz	a5,80001cd0 <_ZN8_Console5flushEv+0xc>
            char c = putcBuffer->buffer[putcBuffer->head];
    80001cf8:	0000a617          	auipc	a2,0xa
    80001cfc:	c5060613          	addi	a2,a2,-944 # 8000b948 <_ZN8_Console10putcBufferE>
    80001d00:	00063703          	ld	a4,0(a2)
    80001d04:	11072783          	lw	a5,272(a4)
    80001d08:	00f706b3          	add	a3,a4,a5
    80001d0c:	0106c583          	lbu	a1,16(a3)
            putcBuffer->head = (putcBuffer->head + 1) % 256;
    80001d10:	0017879b          	addiw	a5,a5,1
    80001d14:	41f7d69b          	sraiw	a3,a5,0x1f
    80001d18:	0186d69b          	srliw	a3,a3,0x18
    80001d1c:	00d787bb          	addw	a5,a5,a3
    80001d20:	0ff7f793          	andi	a5,a5,255
    80001d24:	40d787bb          	subw	a5,a5,a3
    80001d28:	10f72823          	sw	a5,272(a4)
            putcBuffer->count--;
    80001d2c:	11872783          	lw	a5,280(a4)
    80001d30:	fff7879b          	addiw	a5,a5,-1
    80001d34:	10f72c23          	sw	a5,280(a4)
            *((char*)(CONSOLE_TX_DATA)) = c;
    80001d38:	0000a797          	auipc	a5,0xa
    80001d3c:	b887b783          	ld	a5,-1144(a5) # 8000b8c0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001d40:	0007b783          	ld	a5,0(a5)
    80001d44:	00b78023          	sb	a1,0(a5)
            if (putcBuffer->count <= 0)
    80001d48:	00063783          	ld	a5,0(a2)
    80001d4c:	1187a783          	lw	a5,280(a5)
    80001d50:	f8f048e3          	bgtz	a5,80001ce0 <_ZN8_Console5flushEv+0x1c>
    80001d54:	f7dff06f          	j	80001cd0 <_ZN8_Console5flushEv+0xc>
                break;
        }
    }
}
    80001d58:	00813403          	ld	s0,8(sp)
    80001d5c:	01010113          	addi	sp,sp,16
    80001d60:	00008067          	ret

0000000080001d64 <_ZN3TCB12createThreadEPFvPvES0_m>:

TCB* TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB* TCB::createThread(TCB::Body body, void* arg, uint64 timeSlice) {
    80001d64:	fd010113          	addi	sp,sp,-48
    80001d68:	02113423          	sd	ra,40(sp)
    80001d6c:	02813023          	sd	s0,32(sp)
    80001d70:	00913c23          	sd	s1,24(sp)
    80001d74:	01213823          	sd	s2,16(sp)
    80001d78:	01313423          	sd	s3,8(sp)
    80001d7c:	01413023          	sd	s4,0(sp)
    80001d80:	03010413          	addi	s0,sp,48
    80001d84:	00050913          	mv	s2,a0
    80001d88:	00058993          	mv	s3,a1
    80001d8c:	00060a13          	mv	s4,a2
    { if (body) Scheduler::put(this); }

public:

    void* operator new(size_t size) {
        return MemoryAllocator::mem_alloc(size);
    80001d90:	04800513          	li	a0,72
    80001d94:	00000097          	auipc	ra,0x0
    80001d98:	784080e7          	jalr	1924(ra) # 80002518 <_ZN15MemoryAllocator9mem_allocEm>
    80001d9c:	00050493          	mv	s1,a0
            arg(arg)
    80001da0:	01253023          	sd	s2,0(a0)
            stack(body ? (uint64*)MemoryAllocator::mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr),
    80001da4:	00090a63          	beqz	s2,80001db8 <_ZN3TCB12createThreadEPFvPvES0_m+0x54>
    80001da8:	00008537          	lui	a0,0x8
    80001dac:	00000097          	auipc	ra,0x0
    80001db0:	76c080e7          	jalr	1900(ra) # 80002518 <_ZN15MemoryAllocator9mem_allocEm>
    80001db4:	0080006f          	j	80001dbc <_ZN3TCB12createThreadEPFvPvES0_m+0x58>
    80001db8:	00000513          	li	a0,0
            arg(arg)
    80001dbc:	00a4b423          	sd	a0,8(s1)
    80001dc0:	00000797          	auipc	a5,0x0
    80001dc4:	0b878793          	addi	a5,a5,184 # 80001e78 <_ZN3TCB13threadWrapperEv>
    80001dc8:	00f4b823          	sd	a5,16(s1)
            context({(uint64)&threadWrapper, stack ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0}),
    80001dcc:	02050e63          	beqz	a0,80001e08 <_ZN3TCB12createThreadEPFvPvES0_m+0xa4>
    80001dd0:	000087b7          	lui	a5,0x8
    80001dd4:	00f507b3          	add	a5,a0,a5
            arg(arg)
    80001dd8:	00f4bc23          	sd	a5,24(s1)
    80001ddc:	02048023          	sb	zero,32(s1)
    80001de0:	020480a3          	sb	zero,33(s1)
    80001de4:	0344b423          	sd	s4,40(s1)
    80001de8:	0204b823          	sd	zero,48(s1)
    80001dec:	02048c23          	sb	zero,56(s1)
    80001df0:	0534b023          	sd	s3,64(s1)
    { if (body) Scheduler::put(this); }
    80001df4:	02090c63          	beqz	s2,80001e2c <_ZN3TCB12createThreadEPFvPvES0_m+0xc8>
    80001df8:	00048513          	mv	a0,s1
    80001dfc:	00001097          	auipc	ra,0x1
    80001e00:	14c080e7          	jalr	332(ra) # 80002f48 <_ZN9Scheduler3putEP3TCB>
    80001e04:	0280006f          	j	80001e2c <_ZN3TCB12createThreadEPFvPvES0_m+0xc8>
            context({(uint64)&threadWrapper, stack ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0}),
    80001e08:	00000793          	li	a5,0
    80001e0c:	fcdff06f          	j	80001dd8 <_ZN3TCB12createThreadEPFvPvES0_m+0x74>
    80001e10:	00050913          	mv	s2,a0
    void* operator new[] (size_t size) {
        return MemoryAllocator::mem_alloc(size);
    }

    void operator delete(void* ptr) noexcept {
        MemoryAllocator::mem_free(ptr);
    80001e14:	00048513          	mv	a0,s1
    80001e18:	00001097          	auipc	ra,0x1
    80001e1c:	89c080e7          	jalr	-1892(ra) # 800026b4 <_ZN15MemoryAllocator8mem_freeEPv>
    80001e20:	00090513          	mv	a0,s2
    80001e24:	0000b097          	auipc	ra,0xb
    80001e28:	c94080e7          	jalr	-876(ra) # 8000cab8 <_Unwind_Resume>
    return new TCB(body, arg, timeSlice);
}
    80001e2c:	00048513          	mv	a0,s1
    80001e30:	02813083          	ld	ra,40(sp)
    80001e34:	02013403          	ld	s0,32(sp)
    80001e38:	01813483          	ld	s1,24(sp)
    80001e3c:	01013903          	ld	s2,16(sp)
    80001e40:	00813983          	ld	s3,8(sp)
    80001e44:	00013a03          	ld	s4,0(sp)
    80001e48:	03010113          	addi	sp,sp,48
    80001e4c:	00008067          	ret

0000000080001e50 <_ZN3TCB5yieldEv>:

void TCB::yield() {
    80001e50:	ff010113          	addi	sp,sp,-16
    80001e54:	00113423          	sd	ra,8(sp)
    80001e58:	00813023          	sd	s0,0(sp)
    80001e5c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001e60:	fffff097          	auipc	ra,0xfffff
    80001e64:	3fc080e7          	jalr	1020(ra) # 8000125c <_Z15thread_dispatchv>
}
    80001e68:	00813083          	ld	ra,8(sp)
    80001e6c:	00013403          	ld	s0,0(sp)
    80001e70:	01010113          	addi	sp,sp,16
    80001e74:	00008067          	ret

0000000080001e78 <_ZN3TCB13threadWrapperEv>:

    if (old != running)
        TCB::contextSwitch(&old->context, &TCB::running->context);
}

void TCB::threadWrapper() {
    80001e78:	fe010113          	addi	sp,sp,-32
    80001e7c:	00113c23          	sd	ra,24(sp)
    80001e80:	00813823          	sd	s0,16(sp)
    80001e84:	00913423          	sd	s1,8(sp)
    80001e88:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001e8c:	00001097          	auipc	ra,0x1
    80001e90:	ad4080e7          	jalr	-1324(ra) # 80002960 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001e94:	0000a497          	auipc	s1,0xa
    80001e98:	ac448493          	addi	s1,s1,-1340 # 8000b958 <_ZN3TCB7runningE>
    80001e9c:	0004b783          	ld	a5,0(s1)
    80001ea0:	0007b703          	ld	a4,0(a5) # 8000 <_entry-0x7fff8000>
    80001ea4:	0407b503          	ld	a0,64(a5)
    80001ea8:	000700e7          	jalr	a4
    running->setFinished(true);
    80001eac:	0004b783          	ld	a5,0(s1)

    static TCB* createThread(Body body, void* arg, uint64 timeSlice);

    // Getter and setter for finished
    bool isFinished() const { return this->finished; }
    void setFinished(bool value) { this->finished = value; }
    80001eb0:	00100713          	li	a4,1
    80001eb4:	02e78023          	sb	a4,32(a5)
    TCB::yield();
    80001eb8:	00000097          	auipc	ra,0x0
    80001ebc:	f98080e7          	jalr	-104(ra) # 80001e50 <_ZN3TCB5yieldEv>
    80001ec0:	01813083          	ld	ra,24(sp)
    80001ec4:	01013403          	ld	s0,16(sp)
    80001ec8:	00813483          	ld	s1,8(sp)
    80001ecc:	02010113          	addi	sp,sp,32
    80001ed0:	00008067          	ret

0000000080001ed4 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80001ed4:	fe010113          	addi	sp,sp,-32
    80001ed8:	00113c23          	sd	ra,24(sp)
    80001edc:	00813823          	sd	s0,16(sp)
    80001ee0:	00913423          	sd	s1,8(sp)
    80001ee4:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    80001ee8:	0000a497          	auipc	s1,0xa
    80001eec:	a704b483          	ld	s1,-1424(s1) # 8000b958 <_ZN3TCB7runningE>
    if (!old->finished && !old->blocked && !old->isSleeping())
    80001ef0:	0204c783          	lbu	a5,32(s1)
    80001ef4:	00079a63          	bnez	a5,80001f08 <_ZN3TCB8dispatchEv+0x34>
    80001ef8:	0214c783          	lbu	a5,33(s1)
    80001efc:	00079663          	bnez	a5,80001f08 <_ZN3TCB8dispatchEv+0x34>
    // Sleeping getters and setters
    void setSleepingTime(time_t time) { this->sleepingTime = time; }
    time_t getSleepingTime() const { return this->sleepingTime; }

    void setSleep(bool val) { this->sleep = val; }
    bool isSleeping() const { return this->sleep; }
    80001f00:	0384c783          	lbu	a5,56(s1)
    80001f04:	02078e63          	beqz	a5,80001f40 <_ZN3TCB8dispatchEv+0x6c>
    TCB::running = Scheduler::get();
    80001f08:	00001097          	auipc	ra,0x1
    80001f0c:	fd8080e7          	jalr	-40(ra) # 80002ee0 <_ZN9Scheduler3getEv>
    80001f10:	0000a797          	auipc	a5,0xa
    80001f14:	a4a7b423          	sd	a0,-1464(a5) # 8000b958 <_ZN3TCB7runningE>
    if (old != running)
    80001f18:	00a48a63          	beq	s1,a0,80001f2c <_ZN3TCB8dispatchEv+0x58>
        TCB::contextSwitch(&old->context, &TCB::running->context);
    80001f1c:	01050593          	addi	a1,a0,16 # 8010 <_entry-0x7fff7ff0>
    80001f20:	01048513          	addi	a0,s1,16
    80001f24:	fffff097          	auipc	ra,0xfffff
    80001f28:	1ec080e7          	jalr	492(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001f2c:	01813083          	ld	ra,24(sp)
    80001f30:	01013403          	ld	s0,16(sp)
    80001f34:	00813483          	ld	s1,8(sp)
    80001f38:	02010113          	addi	sp,sp,32
    80001f3c:	00008067          	ret
        Scheduler::put(old);
    80001f40:	00048513          	mv	a0,s1
    80001f44:	00001097          	auipc	ra,0x1
    80001f48:	004080e7          	jalr	4(ra) # 80002f48 <_ZN9Scheduler3putEP3TCB>
    80001f4c:	fbdff06f          	j	80001f08 <_ZN3TCB8dispatchEv+0x34>

0000000080001f50 <_ZN6Thread7wrapperEPv>:
Thread::Thread() {
    this->body = nullptr;
    this->arg = nullptr;
}

void Thread::wrapper(void* arg) {
    80001f50:	ff010113          	addi	sp,sp,-16
    80001f54:	00113423          	sd	ra,8(sp)
    80001f58:	00813023          	sd	s0,0(sp)
    80001f5c:	01010413          	addi	s0,sp,16
    Thread* t = (Thread*)arg;
    t->run();
    80001f60:	00053783          	ld	a5,0(a0)
    80001f64:	0107b783          	ld	a5,16(a5)
    80001f68:	000780e7          	jalr	a5
}
    80001f6c:	00813083          	ld	ra,8(sp)
    80001f70:	00013403          	ld	s0,0(sp)
    80001f74:	01010113          	addi	sp,sp,16
    80001f78:	00008067          	ret

0000000080001f7c <_ZN14PeriodicThread3runEv>:
    return sem_trywait(this->myHandle);
}

PeriodicThread::PeriodicThread(time_t period) : period(period) {}

void PeriodicThread::run() {
    80001f7c:	fe010113          	addi	sp,sp,-32
    80001f80:	00113c23          	sd	ra,24(sp)
    80001f84:	00813823          	sd	s0,16(sp)
    80001f88:	00913423          	sd	s1,8(sp)
    80001f8c:	02010413          	addi	s0,sp,32
    80001f90:	00050493          	mv	s1,a0
    while (true) {
        this->periodicActivation();
    80001f94:	0004b783          	ld	a5,0(s1)
    80001f98:	0187b783          	ld	a5,24(a5)
    80001f9c:	00048513          	mv	a0,s1
    80001fa0:	000780e7          	jalr	a5
        time_sleep(period);
    80001fa4:	0204b503          	ld	a0,32(s1)
    80001fa8:	fffff097          	auipc	ra,0xfffff
    80001fac:	2e0080e7          	jalr	736(ra) # 80001288 <_Z10time_sleepm>
    while (true) {
    80001fb0:	fe5ff06f          	j	80001f94 <_ZN14PeriodicThread3runEv+0x18>

0000000080001fb4 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    80001fb4:	ff010113          	addi	sp,sp,-16
    80001fb8:	00113423          	sd	ra,8(sp)
    80001fbc:	00813023          	sd	s0,0(sp)
    80001fc0:	01010413          	addi	s0,sp,16
    80001fc4:	00009797          	auipc	a5,0x9
    80001fc8:	6dc78793          	addi	a5,a5,1756 # 8000b6a0 <_ZTV9Semaphore+0x10>
    80001fcc:	00f53023          	sd	a5,0(a0)
    sem_close(this->myHandle);
    80001fd0:	00853503          	ld	a0,8(a0)
    80001fd4:	fffff097          	auipc	ra,0xfffff
    80001fd8:	328080e7          	jalr	808(ra) # 800012fc <_Z9sem_closeP10_Semaphore>
}
    80001fdc:	00813083          	ld	ra,8(sp)
    80001fe0:	00013403          	ld	s0,0(sp)
    80001fe4:	01010113          	addi	sp,sp,16
    80001fe8:	00008067          	ret

0000000080001fec <_Znwm>:
void* operator new(size_t size) {
    80001fec:	ff010113          	addi	sp,sp,-16
    80001ff0:	00113423          	sd	ra,8(sp)
    80001ff4:	00813023          	sd	s0,0(sp)
    80001ff8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001ffc:	fffff097          	auipc	ra,0xfffff
    80002000:	180080e7          	jalr	384(ra) # 8000117c <_Z9mem_allocm>
}
    80002004:	00813083          	ld	ra,8(sp)
    80002008:	00013403          	ld	s0,0(sp)
    8000200c:	01010113          	addi	sp,sp,16
    80002010:	00008067          	ret

0000000080002014 <_Znam>:
void* operator new[] (size_t size) {
    80002014:	ff010113          	addi	sp,sp,-16
    80002018:	00113423          	sd	ra,8(sp)
    8000201c:	00813023          	sd	s0,0(sp)
    80002020:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002024:	fffff097          	auipc	ra,0xfffff
    80002028:	158080e7          	jalr	344(ra) # 8000117c <_Z9mem_allocm>
}
    8000202c:	00813083          	ld	ra,8(sp)
    80002030:	00013403          	ld	s0,0(sp)
    80002034:	01010113          	addi	sp,sp,16
    80002038:	00008067          	ret

000000008000203c <_ZdlPv>:
void operator delete(void* ptr) noexcept {
    8000203c:	ff010113          	addi	sp,sp,-16
    80002040:	00113423          	sd	ra,8(sp)
    80002044:	00813023          	sd	s0,0(sp)
    80002048:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    8000204c:	fffff097          	auipc	ra,0xfffff
    80002050:	164080e7          	jalr	356(ra) # 800011b0 <_Z8mem_freePv>
}
    80002054:	00813083          	ld	ra,8(sp)
    80002058:	00013403          	ld	s0,0(sp)
    8000205c:	01010113          	addi	sp,sp,16
    80002060:	00008067          	ret

0000000080002064 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80002064:	fe010113          	addi	sp,sp,-32
    80002068:	00113c23          	sd	ra,24(sp)
    8000206c:	00813823          	sd	s0,16(sp)
    80002070:	00913423          	sd	s1,8(sp)
    80002074:	02010413          	addi	s0,sp,32
    80002078:	00009797          	auipc	a5,0x9
    8000207c:	60078793          	addi	a5,a5,1536 # 8000b678 <_ZTV6Thread+0x10>
    80002080:	00f53023          	sd	a5,0(a0)
    delete this->myHandle;
    80002084:	00853483          	ld	s1,8(a0)
    80002088:	02048063          	beqz	s1,800020a8 <_ZN6ThreadD1Ev+0x44>
    static void threadWrapper();

    static TCB* running;
    static void yield();

    ~TCB() { delete this->stack; }
    8000208c:	0084b503          	ld	a0,8(s1)
    80002090:	00050663          	beqz	a0,8000209c <_ZN6ThreadD1Ev+0x38>
    80002094:	00000097          	auipc	ra,0x0
    80002098:	fa8080e7          	jalr	-88(ra) # 8000203c <_ZdlPv>
        MemoryAllocator::mem_free(ptr);
    8000209c:	00048513          	mv	a0,s1
    800020a0:	00000097          	auipc	ra,0x0
    800020a4:	614080e7          	jalr	1556(ra) # 800026b4 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800020a8:	01813083          	ld	ra,24(sp)
    800020ac:	01013403          	ld	s0,16(sp)
    800020b0:	00813483          	ld	s1,8(sp)
    800020b4:	02010113          	addi	sp,sp,32
    800020b8:	00008067          	ret

00000000800020bc <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800020bc:	fe010113          	addi	sp,sp,-32
    800020c0:	00113c23          	sd	ra,24(sp)
    800020c4:	00813823          	sd	s0,16(sp)
    800020c8:	00913423          	sd	s1,8(sp)
    800020cc:	02010413          	addi	s0,sp,32
    800020d0:	00050493          	mv	s1,a0
}
    800020d4:	00000097          	auipc	ra,0x0
    800020d8:	f90080e7          	jalr	-112(ra) # 80002064 <_ZN6ThreadD1Ev>
    800020dc:	00048513          	mv	a0,s1
    800020e0:	00000097          	auipc	ra,0x0
    800020e4:	f5c080e7          	jalr	-164(ra) # 8000203c <_ZdlPv>
    800020e8:	01813083          	ld	ra,24(sp)
    800020ec:	01013403          	ld	s0,16(sp)
    800020f0:	00813483          	ld	s1,8(sp)
    800020f4:	02010113          	addi	sp,sp,32
    800020f8:	00008067          	ret

00000000800020fc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800020fc:	fe010113          	addi	sp,sp,-32
    80002100:	00113c23          	sd	ra,24(sp)
    80002104:	00813823          	sd	s0,16(sp)
    80002108:	00913423          	sd	s1,8(sp)
    8000210c:	02010413          	addi	s0,sp,32
    80002110:	00050493          	mv	s1,a0
}
    80002114:	00000097          	auipc	ra,0x0
    80002118:	ea0080e7          	jalr	-352(ra) # 80001fb4 <_ZN9SemaphoreD1Ev>
    8000211c:	00048513          	mv	a0,s1
    80002120:	00000097          	auipc	ra,0x0
    80002124:	f1c080e7          	jalr	-228(ra) # 8000203c <_ZdlPv>
    80002128:	01813083          	ld	ra,24(sp)
    8000212c:	01013403          	ld	s0,16(sp)
    80002130:	00813483          	ld	s1,8(sp)
    80002134:	02010113          	addi	sp,sp,32
    80002138:	00008067          	ret

000000008000213c <_ZdaPv>:
void operator delete[] (void* ptr) noexcept {
    8000213c:	ff010113          	addi	sp,sp,-16
    80002140:	00113423          	sd	ra,8(sp)
    80002144:	00813023          	sd	s0,0(sp)
    80002148:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    8000214c:	fffff097          	auipc	ra,0xfffff
    80002150:	064080e7          	jalr	100(ra) # 800011b0 <_Z8mem_freePv>
}
    80002154:	00813083          	ld	ra,8(sp)
    80002158:	00013403          	ld	s0,0(sp)
    8000215c:	01010113          	addi	sp,sp,16
    80002160:	00008067          	ret

0000000080002164 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80002164:	ff010113          	addi	sp,sp,-16
    80002168:	00813423          	sd	s0,8(sp)
    8000216c:	01010413          	addi	s0,sp,16
    80002170:	00009797          	auipc	a5,0x9
    80002174:	50878793          	addi	a5,a5,1288 # 8000b678 <_ZTV6Thread+0x10>
    80002178:	00f53023          	sd	a5,0(a0)
    this->body = body;
    8000217c:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    80002180:	00c53c23          	sd	a2,24(a0)
}
    80002184:	00813403          	ld	s0,8(sp)
    80002188:	01010113          	addi	sp,sp,16
    8000218c:	00008067          	ret

0000000080002190 <_ZN6Thread5startEv>:
int Thread::start() {
    80002190:	ff010113          	addi	sp,sp,-16
    80002194:	00113423          	sd	ra,8(sp)
    80002198:	00813023          	sd	s0,0(sp)
    8000219c:	01010413          	addi	s0,sp,16
    if (body)
    800021a0:	01053583          	ld	a1,16(a0)
    800021a4:	02058263          	beqz	a1,800021c8 <_ZN6Thread5startEv+0x38>
        return thread_create(&this->myHandle, this->body, this->arg);
    800021a8:	01853603          	ld	a2,24(a0)
    800021ac:	00850513          	addi	a0,a0,8
    800021b0:	fffff097          	auipc	ra,0xfffff
    800021b4:	038080e7          	jalr	56(ra) # 800011e8 <_Z13thread_createPP3TCBPFvPvES2_>
}
    800021b8:	00813083          	ld	ra,8(sp)
    800021bc:	00013403          	ld	s0,0(sp)
    800021c0:	01010113          	addi	sp,sp,16
    800021c4:	00008067          	ret
        return thread_create(&this->myHandle, wrapper, this);
    800021c8:	00050613          	mv	a2,a0
    800021cc:	00000597          	auipc	a1,0x0
    800021d0:	d8458593          	addi	a1,a1,-636 # 80001f50 <_ZN6Thread7wrapperEPv>
    800021d4:	00850513          	addi	a0,a0,8
    800021d8:	fffff097          	auipc	ra,0xfffff
    800021dc:	010080e7          	jalr	16(ra) # 800011e8 <_Z13thread_createPP3TCBPFvPvES2_>
    800021e0:	fd9ff06f          	j	800021b8 <_ZN6Thread5startEv+0x28>

00000000800021e4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800021e4:	ff010113          	addi	sp,sp,-16
    800021e8:	00113423          	sd	ra,8(sp)
    800021ec:	00813023          	sd	s0,0(sp)
    800021f0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800021f4:	fffff097          	auipc	ra,0xfffff
    800021f8:	068080e7          	jalr	104(ra) # 8000125c <_Z15thread_dispatchv>
}
    800021fc:	00813083          	ld	ra,8(sp)
    80002200:	00013403          	ld	s0,0(sp)
    80002204:	01010113          	addi	sp,sp,16
    80002208:	00008067          	ret

000000008000220c <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    8000220c:	ff010113          	addi	sp,sp,-16
    80002210:	00113423          	sd	ra,8(sp)
    80002214:	00813023          	sd	s0,0(sp)
    80002218:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    8000221c:	fffff097          	auipc	ra,0xfffff
    80002220:	06c080e7          	jalr	108(ra) # 80001288 <_Z10time_sleepm>
}
    80002224:	00813083          	ld	ra,8(sp)
    80002228:	00013403          	ld	s0,0(sp)
    8000222c:	01010113          	addi	sp,sp,16
    80002230:	00008067          	ret

0000000080002234 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80002234:	ff010113          	addi	sp,sp,-16
    80002238:	00813423          	sd	s0,8(sp)
    8000223c:	01010413          	addi	s0,sp,16
    80002240:	00009797          	auipc	a5,0x9
    80002244:	43878793          	addi	a5,a5,1080 # 8000b678 <_ZTV6Thread+0x10>
    80002248:	00f53023          	sd	a5,0(a0)
    this->body = nullptr;
    8000224c:	00053823          	sd	zero,16(a0)
    this->arg = nullptr;
    80002250:	00053c23          	sd	zero,24(a0)
}
    80002254:	00813403          	ld	s0,8(sp)
    80002258:	01010113          	addi	sp,sp,16
    8000225c:	00008067          	ret

0000000080002260 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002260:	ff010113          	addi	sp,sp,-16
    80002264:	00113423          	sd	ra,8(sp)
    80002268:	00813023          	sd	s0,0(sp)
    8000226c:	01010413          	addi	s0,sp,16
    80002270:	00009797          	auipc	a5,0x9
    80002274:	43078793          	addi	a5,a5,1072 # 8000b6a0 <_ZTV9Semaphore+0x10>
    80002278:	00f53023          	sd	a5,0(a0)
    sem_open(&this->myHandle, init);
    8000227c:	00850513          	addi	a0,a0,8
    80002280:	fffff097          	auipc	ra,0xfffff
    80002284:	040080e7          	jalr	64(ra) # 800012c0 <_Z8sem_openPP10_Semaphorej>
}
    80002288:	00813083          	ld	ra,8(sp)
    8000228c:	00013403          	ld	s0,0(sp)
    80002290:	01010113          	addi	sp,sp,16
    80002294:	00008067          	ret

0000000080002298 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80002298:	ff010113          	addi	sp,sp,-16
    8000229c:	00113423          	sd	ra,8(sp)
    800022a0:	00813023          	sd	s0,0(sp)
    800022a4:	01010413          	addi	s0,sp,16
    return sem_wait(this->myHandle);
    800022a8:	00853503          	ld	a0,8(a0)
    800022ac:	fffff097          	auipc	ra,0xfffff
    800022b0:	088080e7          	jalr	136(ra) # 80001334 <_Z8sem_waitP10_Semaphore>
}
    800022b4:	00813083          	ld	ra,8(sp)
    800022b8:	00013403          	ld	s0,0(sp)
    800022bc:	01010113          	addi	sp,sp,16
    800022c0:	00008067          	ret

00000000800022c4 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    800022c4:	ff010113          	addi	sp,sp,-16
    800022c8:	00113423          	sd	ra,8(sp)
    800022cc:	00813023          	sd	s0,0(sp)
    800022d0:	01010413          	addi	s0,sp,16
    return sem_signal(this->myHandle);
    800022d4:	00853503          	ld	a0,8(a0)
    800022d8:	fffff097          	auipc	ra,0xfffff
    800022dc:	094080e7          	jalr	148(ra) # 8000136c <_Z10sem_signalP10_Semaphore>
}
    800022e0:	00813083          	ld	ra,8(sp)
    800022e4:	00013403          	ld	s0,0(sp)
    800022e8:	01010113          	addi	sp,sp,16
    800022ec:	00008067          	ret

00000000800022f0 <_ZN9Semaphore9timedWaitEm>:
int Semaphore::timedWait(time_t time) {
    800022f0:	ff010113          	addi	sp,sp,-16
    800022f4:	00113423          	sd	ra,8(sp)
    800022f8:	00813023          	sd	s0,0(sp)
    800022fc:	01010413          	addi	s0,sp,16
    return sem_timedwait(this->myHandle, time);
    80002300:	00853503          	ld	a0,8(a0)
    80002304:	fffff097          	auipc	ra,0xfffff
    80002308:	0d8080e7          	jalr	216(ra) # 800013dc <_Z13sem_timedwaitP10_Semaphorem>
}
    8000230c:	00813083          	ld	ra,8(sp)
    80002310:	00013403          	ld	s0,0(sp)
    80002314:	01010113          	addi	sp,sp,16
    80002318:	00008067          	ret

000000008000231c <_ZN9Semaphore7tryWaitEv>:
int Semaphore::tryWait() {
    8000231c:	ff010113          	addi	sp,sp,-16
    80002320:	00113423          	sd	ra,8(sp)
    80002324:	00813023          	sd	s0,0(sp)
    80002328:	01010413          	addi	s0,sp,16
    return sem_trywait(this->myHandle);
    8000232c:	00853503          	ld	a0,8(a0)
    80002330:	fffff097          	auipc	ra,0xfffff
    80002334:	074080e7          	jalr	116(ra) # 800013a4 <_Z11sem_trywaitP10_Semaphore>
}
    80002338:	00813083          	ld	ra,8(sp)
    8000233c:	00013403          	ld	s0,0(sp)
    80002340:	01010113          	addi	sp,sp,16
    80002344:	00008067          	ret

0000000080002348 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : period(period) {}
    80002348:	fe010113          	addi	sp,sp,-32
    8000234c:	00113c23          	sd	ra,24(sp)
    80002350:	00813823          	sd	s0,16(sp)
    80002354:	00913423          	sd	s1,8(sp)
    80002358:	01213023          	sd	s2,0(sp)
    8000235c:	02010413          	addi	s0,sp,32
    80002360:	00050493          	mv	s1,a0
    80002364:	00058913          	mv	s2,a1
    80002368:	00000097          	auipc	ra,0x0
    8000236c:	ecc080e7          	jalr	-308(ra) # 80002234 <_ZN6ThreadC1Ev>
    80002370:	00009797          	auipc	a5,0x9
    80002374:	35078793          	addi	a5,a5,848 # 8000b6c0 <_ZTV14PeriodicThread+0x10>
    80002378:	00f4b023          	sd	a5,0(s1)
    8000237c:	0324b023          	sd	s2,32(s1)
    80002380:	01813083          	ld	ra,24(sp)
    80002384:	01013403          	ld	s0,16(sp)
    80002388:	00813483          	ld	s1,8(sp)
    8000238c:	00013903          	ld	s2,0(sp)
    80002390:	02010113          	addi	sp,sp,32
    80002394:	00008067          	ret

0000000080002398 <_ZN14PeriodicThread9terminateEv>:
    }
}

void PeriodicThread::terminate() {
    80002398:	ff010113          	addi	sp,sp,-16
    8000239c:	00113423          	sd	ra,8(sp)
    800023a0:	00813023          	sd	s0,0(sp)
    800023a4:	01010413          	addi	s0,sp,16
    thread_exit();
    800023a8:	fffff097          	auipc	ra,0xfffff
    800023ac:	e80080e7          	jalr	-384(ra) # 80001228 <_Z11thread_exitv>
}
    800023b0:	00813083          	ld	ra,8(sp)
    800023b4:	00013403          	ld	s0,0(sp)
    800023b8:	01010113          	addi	sp,sp,16
    800023bc:	00008067          	ret

00000000800023c0 <_ZN7Console4getcEv>:

char Console::getc() {
    800023c0:	ff010113          	addi	sp,sp,-16
    800023c4:	00113423          	sd	ra,8(sp)
    800023c8:	00813023          	sd	s0,0(sp)
    800023cc:	01010413          	addi	s0,sp,16
    return ::getc();
    800023d0:	fffff097          	auipc	ra,0xfffff
    800023d4:	048080e7          	jalr	72(ra) # 80001418 <_Z4getcv>
}
    800023d8:	00813083          	ld	ra,8(sp)
    800023dc:	00013403          	ld	s0,0(sp)
    800023e0:	01010113          	addi	sp,sp,16
    800023e4:	00008067          	ret

00000000800023e8 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    800023e8:	ff010113          	addi	sp,sp,-16
    800023ec:	00113423          	sd	ra,8(sp)
    800023f0:	00813023          	sd	s0,0(sp)
    800023f4:	01010413          	addi	s0,sp,16
    ::putc(c);
    800023f8:	fffff097          	auipc	ra,0xfffff
    800023fc:	054080e7          	jalr	84(ra) # 8000144c <_Z4putcc>
}
    80002400:	00813083          	ld	ra,8(sp)
    80002404:	00013403          	ld	s0,0(sp)
    80002408:	01010113          	addi	sp,sp,16
    8000240c:	00008067          	ret

0000000080002410 <_ZN6Thread3runEv>:
    static int sleep (time_t);
    static void wrapper(void*);

protected:
    Thread ();
    virtual void run () {}
    80002410:	ff010113          	addi	sp,sp,-16
    80002414:	00813423          	sd	s0,8(sp)
    80002418:	01010413          	addi	s0,sp,16
    8000241c:	00813403          	ld	s0,8(sp)
    80002420:	01010113          	addi	sp,sp,16
    80002424:	00008067          	ret

0000000080002428 <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void terminate ();

protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80002428:	ff010113          	addi	sp,sp,-16
    8000242c:	00813423          	sd	s0,8(sp)
    80002430:	01010413          	addi	s0,sp,16
    80002434:	00813403          	ld	s0,8(sp)
    80002438:	01010113          	addi	sp,sp,16
    8000243c:	00008067          	ret

0000000080002440 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    80002440:	ff010113          	addi	sp,sp,-16
    80002444:	00113423          	sd	ra,8(sp)
    80002448:	00813023          	sd	s0,0(sp)
    8000244c:	01010413          	addi	s0,sp,16
    80002450:	00009797          	auipc	a5,0x9
    80002454:	27078793          	addi	a5,a5,624 # 8000b6c0 <_ZTV14PeriodicThread+0x10>
    80002458:	00f53023          	sd	a5,0(a0)
    8000245c:	00000097          	auipc	ra,0x0
    80002460:	c08080e7          	jalr	-1016(ra) # 80002064 <_ZN6ThreadD1Ev>
    80002464:	00813083          	ld	ra,8(sp)
    80002468:	00013403          	ld	s0,0(sp)
    8000246c:	01010113          	addi	sp,sp,16
    80002470:	00008067          	ret

0000000080002474 <_ZN14PeriodicThreadD0Ev>:
    80002474:	fe010113          	addi	sp,sp,-32
    80002478:	00113c23          	sd	ra,24(sp)
    8000247c:	00813823          	sd	s0,16(sp)
    80002480:	00913423          	sd	s1,8(sp)
    80002484:	02010413          	addi	s0,sp,32
    80002488:	00050493          	mv	s1,a0
    8000248c:	00009797          	auipc	a5,0x9
    80002490:	23478793          	addi	a5,a5,564 # 8000b6c0 <_ZTV14PeriodicThread+0x10>
    80002494:	00f53023          	sd	a5,0(a0)
    80002498:	00000097          	auipc	ra,0x0
    8000249c:	bcc080e7          	jalr	-1076(ra) # 80002064 <_ZN6ThreadD1Ev>
    800024a0:	00048513          	mv	a0,s1
    800024a4:	00000097          	auipc	ra,0x0
    800024a8:	b98080e7          	jalr	-1128(ra) # 8000203c <_ZdlPv>
    800024ac:	01813083          	ld	ra,24(sp)
    800024b0:	01013403          	ld	s0,16(sp)
    800024b4:	00813483          	ld	s1,8(sp)
    800024b8:	02010113          	addi	sp,sp,32
    800024bc:	00008067          	ret

00000000800024c0 <_ZN15MemoryAllocator4initEv>:
#include "../lib/mem.h"

Block* MemoryAllocator::freeMemHead = nullptr;
Block* MemoryAllocator::usedMemHead = nullptr;

void MemoryAllocator::init() {
    800024c0:	ff010113          	addi	sp,sp,-16
    800024c4:	00813423          	sd	s0,8(sp)
    800024c8:	01010413          	addi	s0,sp,16
    freeMemHead = (Block*)((char*)HEAP_START_ADDR);
    800024cc:	00009797          	auipc	a5,0x9
    800024d0:	3dc7b783          	ld	a5,988(a5) # 8000b8a8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800024d4:	0007b683          	ld	a3,0(a5)
    800024d8:	00009717          	auipc	a4,0x9
    800024dc:	49070713          	addi	a4,a4,1168 # 8000b968 <_ZN15MemoryAllocator11freeMemHeadE>
    800024e0:	00d73023          	sd	a3,0(a4)

    // At the start all memory is free
    freeMemHead->size = ((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR)/ MEM_BLOCK_SIZE;
    800024e4:	00009797          	auipc	a5,0x9
    800024e8:	4047b783          	ld	a5,1028(a5) # 8000b8e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    800024ec:	0007b783          	ld	a5,0(a5)
    800024f0:	40d787b3          	sub	a5,a5,a3
    800024f4:	0067d793          	srli	a5,a5,0x6
    800024f8:	00f6b023          	sd	a5,0(a3)

    freeMemHead->next = nullptr;
    800024fc:	00073783          	ld	a5,0(a4)
    80002500:	0007b423          	sd	zero,8(a5)
    freeMemHead->prev = nullptr;
    80002504:	0007b823          	sd	zero,16(a5)

    // There is no used memory at the start
    usedMemHead = nullptr;
    80002508:	00073423          	sd	zero,8(a4)
}
    8000250c:	00813403          	ld	s0,8(sp)
    80002510:	01010113          	addi	sp,sp,16
    80002514:	00008067          	ret

0000000080002518 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t size) {
    80002518:	ff010113          	addi	sp,sp,-16
    8000251c:	00813423          	sd	s0,8(sp)
    80002520:	01010413          	addi	s0,sp,16
    if (size == 0)
    80002524:	12050863          	beqz	a0,80002654 <_ZN15MemoryAllocator9mem_allocEm+0x13c>
        return nullptr;

    // Given size in bytes converted to size in MEM_BLOCKS
    size_t sizeInBlocks = (size + sizeof(Block)) % MEM_BLOCK_SIZE ? (size + sizeof(Block)) / MEM_BLOCK_SIZE + 1 : (size + sizeof(Block)) / MEM_BLOCK_SIZE;
    80002528:	01850513          	addi	a0,a0,24
    8000252c:	03f57793          	andi	a5,a0,63
    80002530:	02078463          	beqz	a5,80002558 <_ZN15MemoryAllocator9mem_allocEm+0x40>
    80002534:	00655793          	srli	a5,a0,0x6
    80002538:	00178793          	addi	a5,a5,1

    // Find free fragment with required size using best fit algorithm
    Block* freeBlock = nullptr;
    for (Block* current = freeMemHead; current != nullptr; current = current->next) {
    8000253c:	00009517          	auipc	a0,0x9
    80002540:	42c53503          	ld	a0,1068(a0) # 8000b968 <_ZN15MemoryAllocator11freeMemHeadE>
    80002544:	00050e63          	beqz	a0,80002560 <_ZN15MemoryAllocator9mem_allocEm+0x48>
        if (current->size >= sizeInBlocks) {
    80002548:	00053703          	ld	a4,0(a0)
    8000254c:	00f77a63          	bgeu	a4,a5,80002560 <_ZN15MemoryAllocator9mem_allocEm+0x48>
    for (Block* current = freeMemHead; current != nullptr; current = current->next) {
    80002550:	00853503          	ld	a0,8(a0)
    80002554:	ff1ff06f          	j	80002544 <_ZN15MemoryAllocator9mem_allocEm+0x2c>
    size_t sizeInBlocks = (size + sizeof(Block)) % MEM_BLOCK_SIZE ? (size + sizeof(Block)) / MEM_BLOCK_SIZE + 1 : (size + sizeof(Block)) / MEM_BLOCK_SIZE;
    80002558:	00655793          	srli	a5,a0,0x6
    8000255c:	fe1ff06f          	j	8000253c <_ZN15MemoryAllocator9mem_allocEm+0x24>
            break;
        }
    }

    // Didn't find large enough fragment
    if (!freeBlock)
    80002560:	06050863          	beqz	a0,800025d0 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
        return nullptr;

    // Allocate new fragment of memory
    Block* allocated = freeBlock;
    if (freeBlock->size > sizeInBlocks) {
    80002564:	00053683          	ld	a3,0(a0)
    80002568:	08d7f063          	bgeu	a5,a3,800025e8 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        // Creating a new free fragment
        Block* newFreeBlock = (Block*)((char*)freeBlock + sizeInBlocks * MEM_BLOCK_SIZE);
    8000256c:	00679713          	slli	a4,a5,0x6
    80002570:	00e50733          	add	a4,a0,a4

        newFreeBlock->size = freeBlock->size - sizeInBlocks;
    80002574:	40f686b3          	sub	a3,a3,a5
    80002578:	00d73023          	sd	a3,0(a4)
        newFreeBlock->next = freeBlock->next;
    8000257c:	00853683          	ld	a3,8(a0)
    80002580:	00d73423          	sd	a3,8(a4)
        newFreeBlock->prev = freeBlock->prev;
    80002584:	01053683          	ld	a3,16(a0)
    80002588:	00d73823          	sd	a3,16(a4)

        // Update the free fragments list
        if (newFreeBlock->prev)
    8000258c:	04068863          	beqz	a3,800025dc <_ZN15MemoryAllocator9mem_allocEm+0xc4>
            newFreeBlock->prev->next = newFreeBlock;
    80002590:	00e6b423          	sd	a4,8(a3)
        else
            freeMemHead = newFreeBlock;

        if (newFreeBlock->next)
    80002594:	00873683          	ld	a3,8(a4)
    80002598:	00068463          	beqz	a3,800025a0 <_ZN15MemoryAllocator9mem_allocEm+0x88>
            newFreeBlock->next->prev = newFreeBlock;
    8000259c:	00e6b823          	sd	a4,16(a3)
        if (freeBlock->next)
            freeBlock->next->prev = freeBlock->prev;
    }

    // Update used fragments list
    allocated->size = sizeInBlocks;
    800025a0:	00f53023          	sd	a5,0(a0)
    allocated->next = nullptr;
    800025a4:	00053423          	sd	zero,8(a0)
    allocated->prev = nullptr;
    800025a8:	00053823          	sd	zero,16(a0)

    // Insert new used fragment in ascending order by addresses
    if (!usedMemHead)
    800025ac:	00009797          	auipc	a5,0x9
    800025b0:	3c47b783          	ld	a5,964(a5) # 8000b970 <_ZN15MemoryAllocator11usedMemHeadE>
    800025b4:	06078463          	beqz	a5,8000261c <_ZN15MemoryAllocator9mem_allocEm+0x104>
        usedMemHead = allocated;
    else if ((char*)allocated < (char*)usedMemHead) {
    800025b8:	06f57863          	bgeu	a0,a5,80002628 <_ZN15MemoryAllocator9mem_allocEm+0x110>
        // Before current head of the list
        usedMemHead->prev = allocated;
    800025bc:	00a7b823          	sd	a0,16(a5)
        allocated->next = usedMemHead;
    800025c0:	00f53423          	sd	a5,8(a0)
        usedMemHead = allocated;
    800025c4:	00009797          	auipc	a5,0x9
    800025c8:	3aa7b623          	sd	a0,940(a5) # 8000b970 <_ZN15MemoryAllocator11usedMemHeadE>
            temp->next->prev = allocated;
        temp->next = allocated;
    }

    // Return address which is after the Block struct
    return (void*)((char*)allocated + sizeof(Block));
    800025cc:	01850513          	addi	a0,a0,24
}
    800025d0:	00813403          	ld	s0,8(sp)
    800025d4:	01010113          	addi	sp,sp,16
    800025d8:	00008067          	ret
            freeMemHead = newFreeBlock;
    800025dc:	00009697          	auipc	a3,0x9
    800025e0:	38e6b623          	sd	a4,908(a3) # 8000b968 <_ZN15MemoryAllocator11freeMemHeadE>
    800025e4:	fb1ff06f          	j	80002594 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
        if (freeBlock->prev)
    800025e8:	01053703          	ld	a4,16(a0)
    800025ec:	02070063          	beqz	a4,8000260c <_ZN15MemoryAllocator9mem_allocEm+0xf4>
            freeBlock->prev->next = freeBlock->next;
    800025f0:	00853683          	ld	a3,8(a0)
    800025f4:	00d73423          	sd	a3,8(a4)
        if (freeBlock->next)
    800025f8:	00853703          	ld	a4,8(a0)
    800025fc:	fa0702e3          	beqz	a4,800025a0 <_ZN15MemoryAllocator9mem_allocEm+0x88>
            freeBlock->next->prev = freeBlock->prev;
    80002600:	01053683          	ld	a3,16(a0)
    80002604:	00d73823          	sd	a3,16(a4)
    80002608:	f99ff06f          	j	800025a0 <_ZN15MemoryAllocator9mem_allocEm+0x88>
            freeMemHead = freeBlock->next;
    8000260c:	00853703          	ld	a4,8(a0)
    80002610:	00009697          	auipc	a3,0x9
    80002614:	34e6bc23          	sd	a4,856(a3) # 8000b968 <_ZN15MemoryAllocator11freeMemHeadE>
    80002618:	fe1ff06f          	j	800025f8 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
        usedMemHead = allocated;
    8000261c:	00009797          	auipc	a5,0x9
    80002620:	34a7ba23          	sd	a0,852(a5) # 8000b970 <_ZN15MemoryAllocator11usedMemHeadE>
    80002624:	fa9ff06f          	j	800025cc <_ZN15MemoryAllocator9mem_allocEm+0xb4>
        while (temp->next) {
    80002628:	00078713          	mv	a4,a5
    8000262c:	0087b783          	ld	a5,8(a5)
    80002630:	00078463          	beqz	a5,80002638 <_ZN15MemoryAllocator9mem_allocEm+0x120>
            if ((char*)allocated < (char*)temp->next)
    80002634:	fef57ae3          	bgeu	a0,a5,80002628 <_ZN15MemoryAllocator9mem_allocEm+0x110>
        allocated->next = temp->next;
    80002638:	00f53423          	sd	a5,8(a0)
        allocated->prev = temp;
    8000263c:	00e53823          	sd	a4,16(a0)
        if (temp->next)
    80002640:	00873783          	ld	a5,8(a4)
    80002644:	00078463          	beqz	a5,8000264c <_ZN15MemoryAllocator9mem_allocEm+0x134>
            temp->next->prev = allocated;
    80002648:	00a7b823          	sd	a0,16(a5)
        temp->next = allocated;
    8000264c:	00a73423          	sd	a0,8(a4)
    80002650:	f7dff06f          	j	800025cc <_ZN15MemoryAllocator9mem_allocEm+0xb4>
        return nullptr;
    80002654:	00000513          	li	a0,0
    80002658:	f79ff06f          	j	800025d0 <_ZN15MemoryAllocator9mem_allocEm+0xb8>

000000008000265c <_ZN15MemoryAllocator9tryToJoinEP5Block>:
    }

    return 0;
}

void MemoryAllocator::tryToJoin(Block *block) {
    8000265c:	ff010113          	addi	sp,sp,-16
    80002660:	00813423          	sd	s0,8(sp)
    80002664:	01010413          	addi	s0,sp,16
    if (block->next) {
    80002668:	00853703          	ld	a4,8(a0)
    8000266c:	00070c63          	beqz	a4,80002684 <_ZN15MemoryAllocator9tryToJoinEP5Block+0x28>
        if (((char*)block + block->size * MEM_BLOCK_SIZE + sizeof(Block)) == (char*)block->next) {
    80002670:	00053683          	ld	a3,0(a0)
    80002674:	00669793          	slli	a5,a3,0x6
    80002678:	01878793          	addi	a5,a5,24
    8000267c:	00f507b3          	add	a5,a0,a5
    80002680:	00f70863          	beq	a4,a5,80002690 <_ZN15MemoryAllocator9tryToJoinEP5Block+0x34>
            block->next = block->next->next;
            if (block->next)
                block->next->prev = block;
        }
    }
    80002684:	00813403          	ld	s0,8(sp)
    80002688:	01010113          	addi	sp,sp,16
    8000268c:	00008067          	ret
            block->size += block->next->size + sizeof(Block);
    80002690:	00073783          	ld	a5,0(a4)
    80002694:	00f686b3          	add	a3,a3,a5
    80002698:	01868693          	addi	a3,a3,24
    8000269c:	00d53023          	sd	a3,0(a0)
            block->next = block->next->next;
    800026a0:	00873783          	ld	a5,8(a4)
    800026a4:	00f53423          	sd	a5,8(a0)
            if (block->next)
    800026a8:	fc078ee3          	beqz	a5,80002684 <_ZN15MemoryAllocator9tryToJoinEP5Block+0x28>
                block->next->prev = block;
    800026ac:	00a7b823          	sd	a0,16(a5)
    800026b0:	fd5ff06f          	j	80002684 <_ZN15MemoryAllocator9tryToJoinEP5Block+0x28>

00000000800026b4 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!usedMemHead) return -1;
    800026b4:	00009797          	auipc	a5,0x9
    800026b8:	2bc7b783          	ld	a5,700(a5) # 8000b970 <_ZN15MemoryAllocator11usedMemHeadE>
    800026bc:	10078c63          	beqz	a5,800027d4 <_ZN15MemoryAllocator8mem_freeEPv+0x120>
    800026c0:	00050713          	mv	a4,a0
    if (!ptr) return -2;
    800026c4:	10050c63          	beqz	a0,800027dc <_ZN15MemoryAllocator8mem_freeEPv+0x128>
    if ((char*)ptr < (char*)HEAP_START_ADDR || (char*)ptr > (char*)HEAP_END_ADDR)
    800026c8:	00009697          	auipc	a3,0x9
    800026cc:	1e06b683          	ld	a3,480(a3) # 8000b8a8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800026d0:	0006b683          	ld	a3,0(a3)
    800026d4:	10d56863          	bltu	a0,a3,800027e4 <_ZN15MemoryAllocator8mem_freeEPv+0x130>
    800026d8:	00009697          	auipc	a3,0x9
    800026dc:	2106b683          	ld	a3,528(a3) # 8000b8e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    800026e0:	0006b683          	ld	a3,0(a3)
    800026e4:	10a6e463          	bltu	a3,a0,800027ec <_ZN15MemoryAllocator8mem_freeEPv+0x138>
    if ((char*)ptr < (char*)usedMemHead)
    800026e8:	10f56663          	bltu	a0,a5,800027f4 <_ZN15MemoryAllocator8mem_freeEPv+0x140>
    Block* current = (Block*)((char*)ptr - sizeof(Block));
    800026ec:	fe850513          	addi	a0,a0,-24
    if ((char*)current == (char*)usedMemHead) {
    800026f0:	08a78e63          	beq	a5,a0,8000278c <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
        current->prev->next = current->next;
    800026f4:	ff873683          	ld	a3,-8(a4)
    800026f8:	ff073783          	ld	a5,-16(a4)
    800026fc:	00f6b423          	sd	a5,8(a3)
        if (current->next)
    80002700:	00078663          	beqz	a5,8000270c <_ZN15MemoryAllocator8mem_freeEPv+0x58>
            current->next->prev = current->prev;
    80002704:	ff873683          	ld	a3,-8(a4)
    80002708:	00d7b823          	sd	a3,16(a5)
    current->next = nullptr;
    8000270c:	fe073823          	sd	zero,-16(a4)
    current->prev = nullptr;
    80002710:	fe073c23          	sd	zero,-8(a4)
    if (!freeMemHead)
    80002714:	00009797          	auipc	a5,0x9
    80002718:	2547b783          	ld	a5,596(a5) # 8000b968 <_ZN15MemoryAllocator11freeMemHeadE>
    8000271c:	08078463          	beqz	a5,800027a4 <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
int MemoryAllocator::mem_free(void *ptr) {
    80002720:	fe010113          	addi	sp,sp,-32
    80002724:	00113c23          	sd	ra,24(sp)
    80002728:	00813823          	sd	s0,16(sp)
    8000272c:	00913423          	sd	s1,8(sp)
    80002730:	02010413          	addi	s0,sp,32
    else if ((char*)current < (char*)freeMemHead) {
    80002734:	08f56063          	bltu	a0,a5,800027b4 <_ZN15MemoryAllocator8mem_freeEPv+0x100>
        while (temp->next) {
    80002738:	00078493          	mv	s1,a5
    8000273c:	0087b783          	ld	a5,8(a5)
    80002740:	00078463          	beqz	a5,80002748 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
            if ((char*)current < (char*)temp)
    80002744:	fe957ae3          	bgeu	a0,s1,80002738 <_ZN15MemoryAllocator8mem_freeEPv+0x84>
        current->prev = temp;
    80002748:	fe973c23          	sd	s1,-8(a4)
        current->next = temp->next;
    8000274c:	0084b783          	ld	a5,8(s1)
    80002750:	fef73823          	sd	a5,-16(a4)
        if (temp->next)
    80002754:	00078463          	beqz	a5,8000275c <_ZN15MemoryAllocator8mem_freeEPv+0xa8>
            temp->next->prev = current;
    80002758:	00a7b823          	sd	a0,16(a5)
        temp->next = current;
    8000275c:	00a4b423          	sd	a0,8(s1)
        tryToJoin(current);
    80002760:	00000097          	auipc	ra,0x0
    80002764:	efc080e7          	jalr	-260(ra) # 8000265c <_ZN15MemoryAllocator9tryToJoinEP5Block>
        tryToJoin(temp);
    80002768:	00048513          	mv	a0,s1
    8000276c:	00000097          	auipc	ra,0x0
    80002770:	ef0080e7          	jalr	-272(ra) # 8000265c <_ZN15MemoryAllocator9tryToJoinEP5Block>
    return 0;
    80002774:	00000513          	li	a0,0
}
    80002778:	01813083          	ld	ra,24(sp)
    8000277c:	01013403          	ld	s0,16(sp)
    80002780:	00813483          	ld	s1,8(sp)
    80002784:	02010113          	addi	sp,sp,32
    80002788:	00008067          	ret
        usedMemHead = usedMemHead->next;
    8000278c:	0087b783          	ld	a5,8(a5)
    80002790:	00009697          	auipc	a3,0x9
    80002794:	1ef6b023          	sd	a5,480(a3) # 8000b970 <_ZN15MemoryAllocator11usedMemHeadE>
        if (usedMemHead) usedMemHead->prev = nullptr;
    80002798:	f6078ae3          	beqz	a5,8000270c <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    8000279c:	0007b823          	sd	zero,16(a5)
    800027a0:	f6dff06f          	j	8000270c <_ZN15MemoryAllocator8mem_freeEPv+0x58>
        freeMemHead = current;
    800027a4:	00009797          	auipc	a5,0x9
    800027a8:	1ca7b223          	sd	a0,452(a5) # 8000b968 <_ZN15MemoryAllocator11freeMemHeadE>
    return 0;
    800027ac:	00000513          	li	a0,0
    800027b0:	00008067          	ret
        current->next = freeMemHead;
    800027b4:	fef73823          	sd	a5,-16(a4)
        freeMemHead->prev = current;
    800027b8:	00a7b823          	sd	a0,16(a5)
        freeMemHead = current;
    800027bc:	00009797          	auipc	a5,0x9
    800027c0:	1aa7b623          	sd	a0,428(a5) # 8000b968 <_ZN15MemoryAllocator11freeMemHeadE>
        tryToJoin(freeMemHead);
    800027c4:	00000097          	auipc	ra,0x0
    800027c8:	e98080e7          	jalr	-360(ra) # 8000265c <_ZN15MemoryAllocator9tryToJoinEP5Block>
    return 0;
    800027cc:	00000513          	li	a0,0
    800027d0:	fa9ff06f          	j	80002778 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
    if (!usedMemHead) return -1;
    800027d4:	fff00513          	li	a0,-1
    800027d8:	00008067          	ret
    if (!ptr) return -2;
    800027dc:	ffe00513          	li	a0,-2
    800027e0:	00008067          	ret
        return -3;
    800027e4:	ffd00513          	li	a0,-3
    800027e8:	00008067          	ret
    800027ec:	ffd00513          	li	a0,-3
    800027f0:	00008067          	ret
        return -4;
    800027f4:	ffc00513          	li	a0,-4
}
    800027f8:	00008067          	ret

00000000800027fc <_ZN13BoundedBufferC1Ev>:
#include "../h/bounded_buffer.hpp"

BoundedBuffer::BoundedBuffer() {
    800027fc:	fe010113          	addi	sp,sp,-32
    80002800:	00113c23          	sd	ra,24(sp)
    80002804:	00813823          	sd	s0,16(sp)
    80002808:	00913423          	sd	s1,8(sp)
    8000280c:	02010413          	addi	s0,sp,32
    80002810:	00050493          	mv	s1,a0
    80002814:	10052823          	sw	zero,272(a0)
    80002818:	10052a23          	sw	zero,276(a0)
    8000281c:	10052c23          	sw	zero,280(a0)
    //this->buffer = (char*) MemoryAllocator::mem_alloc(256 * sizeof(char));
    sem_open(&itemAvailable, 0);
    80002820:	00000593          	li	a1,0
    80002824:	fffff097          	auipc	ra,0xfffff
    80002828:	a9c080e7          	jalr	-1380(ra) # 800012c0 <_Z8sem_openPP10_Semaphorej>
    sem_open(&spaceAvailable, 256);
    8000282c:	10000593          	li	a1,256
    80002830:	00848513          	addi	a0,s1,8
    80002834:	fffff097          	auipc	ra,0xfffff
    80002838:	a8c080e7          	jalr	-1396(ra) # 800012c0 <_Z8sem_openPP10_Semaphorej>
}
    8000283c:	01813083          	ld	ra,24(sp)
    80002840:	01013403          	ld	s0,16(sp)
    80002844:	00813483          	ld	s1,8(sp)
    80002848:	02010113          	addi	sp,sp,32
    8000284c:	00008067          	ret

0000000080002850 <_ZN13BoundedBuffer4takeEv>:

char BoundedBuffer::take() {
    80002850:	fe010113          	addi	sp,sp,-32
    80002854:	00113c23          	sd	ra,24(sp)
    80002858:	00813823          	sd	s0,16(sp)
    8000285c:	00913423          	sd	s1,8(sp)
    80002860:	01213023          	sd	s2,0(sp)
    80002864:	02010413          	addi	s0,sp,32
    80002868:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000286c:	00053503          	ld	a0,0(a0)
    80002870:	fffff097          	auipc	ra,0xfffff
    80002874:	c38080e7          	jalr	-968(ra) # 800014a8 <_ZN10_Semaphore4waitEv>
    char c = buffer[head];
    80002878:	1104a783          	lw	a5,272(s1)
    8000287c:	00f48733          	add	a4,s1,a5
    80002880:	01074903          	lbu	s2,16(a4)
    head = (head + 1) % 256;
    80002884:	0017879b          	addiw	a5,a5,1
    80002888:	41f7d71b          	sraiw	a4,a5,0x1f
    8000288c:	0187571b          	srliw	a4,a4,0x18
    80002890:	00e787bb          	addw	a5,a5,a4
    80002894:	0ff7f793          	andi	a5,a5,255
    80002898:	40e787bb          	subw	a5,a5,a4
    8000289c:	10f4a823          	sw	a5,272(s1)
    count--;
    800028a0:	1184a783          	lw	a5,280(s1)
    800028a4:	fff7879b          	addiw	a5,a5,-1
    800028a8:	10f4ac23          	sw	a5,280(s1)
    spaceAvailable->signal();
    800028ac:	0084b503          	ld	a0,8(s1)
    800028b0:	fffff097          	auipc	ra,0xfffff
    800028b4:	cc4080e7          	jalr	-828(ra) # 80001574 <_ZN10_Semaphore6signalEv>
    return c;
}
    800028b8:	00090513          	mv	a0,s2
    800028bc:	01813083          	ld	ra,24(sp)
    800028c0:	01013403          	ld	s0,16(sp)
    800028c4:	00813483          	ld	s1,8(sp)
    800028c8:	00013903          	ld	s2,0(sp)
    800028cc:	02010113          	addi	sp,sp,32
    800028d0:	00008067          	ret

00000000800028d4 <_ZN13BoundedBuffer6appendEc>:

void BoundedBuffer::append(char c) {
    800028d4:	fe010113          	addi	sp,sp,-32
    800028d8:	00113c23          	sd	ra,24(sp)
    800028dc:	00813823          	sd	s0,16(sp)
    800028e0:	00913423          	sd	s1,8(sp)
    800028e4:	01213023          	sd	s2,0(sp)
    800028e8:	02010413          	addi	s0,sp,32
    800028ec:	00050493          	mv	s1,a0
    800028f0:	00058913          	mv	s2,a1
    if (spaceAvailable->tryWait() == 1)
    800028f4:	00853503          	ld	a0,8(a0)
    800028f8:	fffff097          	auipc	ra,0xfffff
    800028fc:	eb8080e7          	jalr	-328(ra) # 800017b0 <_ZN10_Semaphore7tryWaitEv>
    80002900:	00100793          	li	a5,1
    80002904:	04f50263          	beq	a0,a5,80002948 <_ZN13BoundedBuffer6appendEc+0x74>
        return;

    buffer[tail] = c;
    80002908:	1144a783          	lw	a5,276(s1)
    8000290c:	00f48733          	add	a4,s1,a5
    80002910:	01270823          	sb	s2,16(a4)
    tail = (tail + 1) % 256;
    80002914:	0017879b          	addiw	a5,a5,1
    80002918:	41f7d71b          	sraiw	a4,a5,0x1f
    8000291c:	0187571b          	srliw	a4,a4,0x18
    80002920:	00e787bb          	addw	a5,a5,a4
    80002924:	0ff7f793          	andi	a5,a5,255
    80002928:	40e787bb          	subw	a5,a5,a4
    8000292c:	10f4aa23          	sw	a5,276(s1)
    count++;
    80002930:	1184a783          	lw	a5,280(s1)
    80002934:	0017879b          	addiw	a5,a5,1
    80002938:	10f4ac23          	sw	a5,280(s1)
    itemAvailable->signal();
    8000293c:	0004b503          	ld	a0,0(s1)
    80002940:	fffff097          	auipc	ra,0xfffff
    80002944:	c34080e7          	jalr	-972(ra) # 80001574 <_ZN10_Semaphore6signalEv>
}
    80002948:	01813083          	ld	ra,24(sp)
    8000294c:	01013403          	ld	s0,16(sp)
    80002950:	00813483          	ld	s1,8(sp)
    80002954:	00013903          	ld	s2,0(sp)
    80002958:	02010113          	addi	sp,sp,32
    8000295c:	00008067          	ret

0000000080002960 <_ZN5Riscv10popSppSpieEv>:
#include "../lib/mem.h"

bool Riscv::user = false;

void Riscv::popSppSpie()
{
    80002960:	ff010113          	addi	sp,sp,-16
    80002964:	00813423          	sd	s0,8(sp)
    80002968:	01010413          	addi	s0,sp,16
    if (user) {
    8000296c:	00009797          	auipc	a5,0x9
    80002970:	00c7c783          	lbu	a5,12(a5) # 8000b978 <_ZN5Riscv4userE>
    80002974:	02078063          	beqz	a5,80002994 <_ZN5Riscv10popSppSpieEv+0x34>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002978:	10000793          	li	a5,256
    8000297c:	1007b073          	csrc	sstatus,a5
        mc_sstatus(Riscv::SSTATUS_SPP);
    }
    else {
        ms_sstatus(Riscv::SSTATUS_SPP);
    }
    __asm volatile("csrw sepc, ra");
    80002980:	14109073          	csrw	sepc,ra
    __asm volatile("sret");
    80002984:	10200073          	sret
}
    80002988:	00813403          	ld	s0,8(sp)
    8000298c:	01010113          	addi	sp,sp,16
    80002990:	00008067          	ret
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002994:	10000793          	li	a5,256
    80002998:	1007a073          	csrs	sstatus,a5
}
    8000299c:	fe5ff06f          	j	80002980 <_ZN5Riscv10popSppSpieEv+0x20>

00000000800029a0 <_ZN5Riscv20handleSupervisorTrapEv>:

using Body = void(*)(void*);

void Riscv::handleSupervisorTrap() {
    800029a0:	ed010113          	addi	sp,sp,-304
    800029a4:	12113423          	sd	ra,296(sp)
    800029a8:	12813023          	sd	s0,288(sp)
    800029ac:	10913c23          	sd	s1,280(sp)
    800029b0:	11213823          	sd	s2,272(sp)
    800029b4:	13010413          	addi	s0,sp,304
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800029b8:	142027f3          	csrr	a5,scause
    800029bc:	f6f43823          	sd	a5,-144(s0)
    return scause;
    800029c0:	f7043783          	ld	a5,-144(s0)
    uint64 volatile scause = r_scause();
    800029c4:	fcf43c23          	sd	a5,-40(s0)

    // read the args
    uint64 volatile arg1;
    __asm__ volatile("mv %[a], a0" : [a] "=r" (arg1));
    800029c8:	00050793          	mv	a5,a0
    800029cc:	fcf43823          	sd	a5,-48(s0)
    uint64 volatile arg2;
    __asm__ volatile("mv %[a], a1" : [a] "=r" (arg2));
    800029d0:	00058793          	mv	a5,a1
    800029d4:	fcf43423          	sd	a5,-56(s0)
    uint64 volatile arg3;
    __asm__ volatile("mv %[a], a2" : [a] "=r" (arg3));
    800029d8:	00060793          	mv	a5,a2
    800029dc:	fcf43023          	sd	a5,-64(s0)
    uint64 volatile arg4;
    __asm__ volatile("mv %[a], a3" : [a] "=r" (arg4));
    800029e0:	00068793          	mv	a5,a3
    800029e4:	faf43c23          	sd	a5,-72(s0)

    // Check if syscall happened
    if (scause == SCAUSE::SYSCALL_USER || scause == SCAUSE::SYSCALL_SYSTEM) {
    800029e8:	fd843703          	ld	a4,-40(s0)
    800029ec:	00800793          	li	a5,8
    800029f0:	0ef70c63          	beq	a4,a5,80002ae8 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    800029f4:	fd843703          	ld	a4,-40(s0)
    800029f8:	00900793          	li	a5,9
    800029fc:	0ef70663          	beq	a4,a5,80002ae8 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
        }

        w_sepc(sepc);
        w_sstatus(sstatus);
    }
    else if (scause == SCAUSE::HARDWARE) {
    80002a00:	fd843703          	ld	a4,-40(s0)
    80002a04:	fff00793          	li	a5,-1
    80002a08:	03f79793          	slli	a5,a5,0x3f
    80002a0c:	00978793          	addi	a5,a5,9
    80002a10:	3cf70463          	beq	a4,a5,80002dd8 <_ZN5Riscv20handleSupervisorTrapEv+0x438>
        _Console::console_handler();
        __asm__ volatile ("mv a0, %[r]" : : [r] "r" (arg1));
        w_sepc(sepc);
        w_sstatus(sstatus);
    }
    else if (scause == SCAUSE::SOFTWARE) {
    80002a14:	fd843703          	ld	a4,-40(s0)
    80002a18:	fff00793          	li	a5,-1
    80002a1c:	03f79793          	slli	a5,a5,0x3f
    80002a20:	00178793          	addi	a5,a5,1
    80002a24:	3ef70c63          	beq	a4,a5,80002e1c <_ZN5Riscv20handleSupervisorTrapEv+0x47c>
        w_sepc(sepc);
        w_sstatus(sstatus);
    }
    else {
        // Unknown interrupt
        putc('\n');
    80002a28:	00a00513          	li	a0,10
    80002a2c:	fffff097          	auipc	ra,0xfffff
    80002a30:	a20080e7          	jalr	-1504(ra) # 8000144c <_Z4putcc>
        printString("SCAUSE = ");
    80002a34:	00006517          	auipc	a0,0x6
    80002a38:	5ec50513          	addi	a0,a0,1516 # 80009020 <CONSOLE_STATUS+0x10>
    80002a3c:	00003097          	auipc	ra,0x3
    80002a40:	b0c080e7          	jalr	-1268(ra) # 80005548 <_Z11printStringPKc>
        printInt(scause);
    80002a44:	fd843503          	ld	a0,-40(s0)
    80002a48:	00000613          	li	a2,0
    80002a4c:	00a00593          	li	a1,10
    80002a50:	0005051b          	sext.w	a0,a0
    80002a54:	00003097          	auipc	ra,0x3
    80002a58:	c98080e7          	jalr	-872(ra) # 800056ec <_Z8printIntiii>
        printString("\nSEPC = ");
    80002a5c:	00006517          	auipc	a0,0x6
    80002a60:	5d450513          	addi	a0,a0,1492 # 80009030 <CONSOLE_STATUS+0x20>
    80002a64:	00003097          	auipc	ra,0x3
    80002a68:	ae4080e7          	jalr	-1308(ra) # 80005548 <_Z11printStringPKc>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002a6c:	141027f3          	csrr	a5,sepc
    80002a70:	faf43823          	sd	a5,-80(s0)
    return sepc;
    80002a74:	fb043503          	ld	a0,-80(s0)
        printInt(r_sepc());
    80002a78:	00000613          	li	a2,0
    80002a7c:	00a00593          	li	a1,10
    80002a80:	0005051b          	sext.w	a0,a0
    80002a84:	00003097          	auipc	ra,0x3
    80002a88:	c68080e7          	jalr	-920(ra) # 800056ec <_Z8printIntiii>
        printString("\nSTVAL = ");
    80002a8c:	00006517          	auipc	a0,0x6
    80002a90:	5b450513          	addi	a0,a0,1460 # 80009040 <CONSOLE_STATUS+0x30>
    80002a94:	00003097          	auipc	ra,0x3
    80002a98:	ab4080e7          	jalr	-1356(ra) # 80005548 <_Z11printStringPKc>
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    80002a9c:	143027f3          	csrr	a5,stval
    80002aa0:	faf43423          	sd	a5,-88(s0)
    return stval;
    80002aa4:	fa843503          	ld	a0,-88(s0)
        printInt(r_stval());
    80002aa8:	00000613          	li	a2,0
    80002aac:	00a00593          	li	a1,10
    80002ab0:	0005051b          	sext.w	a0,a0
    80002ab4:	00003097          	auipc	ra,0x3
    80002ab8:	c38080e7          	jalr	-968(ra) # 800056ec <_Z8printIntiii>
        printString("\n");
    80002abc:	00007517          	auipc	a0,0x7
    80002ac0:	a1450513          	addi	a0,a0,-1516 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80002ac4:	00003097          	auipc	ra,0x3
    80002ac8:	a84080e7          	jalr	-1404(ra) # 80005548 <_Z11printStringPKc>
        _Console::flush();
    80002acc:	fffff097          	auipc	ra,0xfffff
    80002ad0:	1f8080e7          	jalr	504(ra) # 80001cc4 <_ZN8_Console5flushEv>
        __asm__ volatile ("li a0, 0x5555");
    80002ad4:	00005537          	lui	a0,0x5
    80002ad8:	5555051b          	addiw	a0,a0,1365
        __asm__ volatile ("li a1, 0x100000");
    80002adc:	001005b7          	lui	a1,0x100
        __asm__ volatile ("sw a0, 0(a1)");
    80002ae0:	00a5a023          	sw	a0,0(a1) # 100000 <_entry-0x7ff00000>
    }

    80002ae4:	0900006f          	j	80002b74 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002ae8:	141027f3          	csrr	a5,sepc
    80002aec:	f8f43023          	sd	a5,-128(s0)
    return sepc;
    80002af0:	f8043783          	ld	a5,-128(s0)
        uint64 volatile sepc = r_sepc();
    80002af4:	eef43423          	sd	a5,-280(s0)
        sepc += 4;
    80002af8:	ee843783          	ld	a5,-280(s0)
    80002afc:	00478793          	addi	a5,a5,4
    80002b00:	eef43423          	sd	a5,-280(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002b04:	100027f3          	csrr	a5,sstatus
    80002b08:	f6f43c23          	sd	a5,-136(s0)
    return sstatus;
    80002b0c:	f7843783          	ld	a5,-136(s0)
        uint64 volatile sstatus = r_sstatus();
    80002b10:	eef43823          	sd	a5,-272(s0)
        uint64 volatile syscall_id = arg1;
    80002b14:	fd043783          	ld	a5,-48(s0)
    80002b18:	f0f43023          	sd	a5,-256(s0)
        switch (syscall_id) {
    80002b1c:	f0043783          	ld	a5,-256(s0)
    80002b20:	04300713          	li	a4,67
    80002b24:	04f76063          	bltu	a4,a5,80002b64 <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
    80002b28:	00279793          	slli	a5,a5,0x2
    80002b2c:	00006717          	auipc	a4,0x6
    80002b30:	52070713          	addi	a4,a4,1312 # 8000904c <CONSOLE_STATUS+0x3c>
    80002b34:	00e787b3          	add	a5,a5,a4
    80002b38:	0007a783          	lw	a5,0(a5)
    80002b3c:	00e787b3          	add	a5,a5,a4
    80002b40:	00078067          	jr	a5
                size = (size_t)arg2;
    80002b44:	fc843783          	ld	a5,-56(s0)
    80002b48:	f0f43423          	sd	a5,-248(s0)
                ptr = MemoryAllocator::mem_alloc(size);
    80002b4c:	f0843503          	ld	a0,-248(s0)
    80002b50:	00000097          	auipc	ra,0x0
    80002b54:	9c8080e7          	jalr	-1592(ra) # 80002518 <_ZN15MemoryAllocator9mem_allocEm>
    80002b58:	f0a43823          	sd	a0,-240(s0)
                __asm__ volatile ("mv a0, %[ret]" : : [ret] "r" (ptr));
    80002b5c:	f1043783          	ld	a5,-240(s0)
    80002b60:	00078513          	mv	a0,a5
        w_sepc(sepc);
    80002b64:	ee843783          	ld	a5,-280(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002b68:	14179073          	csrw	sepc,a5
        w_sstatus(sstatus);
    80002b6c:	ef043783          	ld	a5,-272(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002b70:	10079073          	csrw	sstatus,a5
    80002b74:	12813083          	ld	ra,296(sp)
    80002b78:	12013403          	ld	s0,288(sp)
    80002b7c:	11813483          	ld	s1,280(sp)
    80002b80:	11013903          	ld	s2,272(sp)
    80002b84:	13010113          	addi	sp,sp,304
    80002b88:	00008067          	ret
                mem = (void*)arg2;
    80002b8c:	fc843783          	ld	a5,-56(s0)
    80002b90:	f0f43c23          	sd	a5,-232(s0)
                code = MemoryAllocator::mem_free((void*)mem);
    80002b94:	f1843503          	ld	a0,-232(s0)
    80002b98:	00000097          	auipc	ra,0x0
    80002b9c:	b1c080e7          	jalr	-1252(ra) # 800026b4 <_ZN15MemoryAllocator8mem_freeEPv>
    80002ba0:	eea42023          	sw	a0,-288(s0)
                __asm__ volatile ("mv a0, %[ret]" : : [ret] "r" (code));
    80002ba4:	ee042783          	lw	a5,-288(s0)
    80002ba8:	00078513          	mv	a0,a5
                break;
    80002bac:	fb9ff06f          	j	80002b64 <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
                tcb = (TCB**)arg2;
    80002bb0:	fc843783          	ld	a5,-56(s0)
    80002bb4:	f2f43023          	sd	a5,-224(s0)
                body = (Body)arg3;
    80002bb8:	fc043783          	ld	a5,-64(s0)
    80002bbc:	f2f43423          	sd	a5,-216(s0)
                arg = (void*)arg4;
    80002bc0:	fb843783          	ld	a5,-72(s0)
    80002bc4:	f2f43823          	sd	a5,-208(s0)
                *tcb = TCB::createThread(body, (void*)arg, DEFAULT_TIME_SLICE);
    80002bc8:	f2843503          	ld	a0,-216(s0)
    80002bcc:	f3043583          	ld	a1,-208(s0)
    80002bd0:	f2043483          	ld	s1,-224(s0)
    80002bd4:	00200613          	li	a2,2
    80002bd8:	fffff097          	auipc	ra,0xfffff
    80002bdc:	18c080e7          	jalr	396(ra) # 80001d64 <_ZN3TCB12createThreadEPFvPvES0_m>
    80002be0:	00a4b023          	sd	a0,0(s1)
                if (tcb)
    80002be4:	f2043783          	ld	a5,-224(s0)
    80002be8:	00078663          	beqz	a5,80002bf4 <_ZN5Riscv20handleSupervisorTrapEv+0x254>
                    __asm__ volatile ("li a0, 0");
    80002bec:	00000513          	li	a0,0
    80002bf0:	f75ff06f          	j	80002b64 <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
                    __asm__ volatile ("li a0, -1");
    80002bf4:	fff00513          	li	a0,-1
    80002bf8:	f6dff06f          	j	80002b64 <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
                TCB::running->setFinished(true);
    80002bfc:	00009797          	auipc	a5,0x9
    80002c00:	ce47b783          	ld	a5,-796(a5) # 8000b8e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002c04:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { this->finished = value; }
    80002c08:	00100713          	li	a4,1
    80002c0c:	02e78023          	sb	a4,32(a5)
                thread_dispatch();
    80002c10:	ffffe097          	auipc	ra,0xffffe
    80002c14:	64c080e7          	jalr	1612(ra) # 8000125c <_Z15thread_dispatchv>
                __asm__ volatile ("li a0, 0");
    80002c18:	00000513          	li	a0,0
                break;
    80002c1c:	f49ff06f          	j	80002b64 <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
                TCB::dispatch();
    80002c20:	fffff097          	auipc	ra,0xfffff
    80002c24:	2b4080e7          	jalr	692(ra) # 80001ed4 <_ZN3TCB8dispatchEv>
                break;
    80002c28:	f3dff06f          	j	80002b64 <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
                time = (time_t)arg2;
    80002c2c:	fc843783          	ld	a5,-56(s0)
    80002c30:	f2f43c23          	sd	a5,-200(s0)
                if (time != 0) {
    80002c34:	f3843783          	ld	a5,-200(s0)
    80002c38:	f20786e3          	beqz	a5,80002b64 <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
                    TCB::running->setSleepingTime(time);
    80002c3c:	00009797          	auipc	a5,0x9
    80002c40:	ca47b783          	ld	a5,-860(a5) # 8000b8e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002c44:	0007b503          	ld	a0,0(a5)
    80002c48:	f3843783          	ld	a5,-200(s0)
    void setSleepingTime(time_t time) { this->sleepingTime = time; }
    80002c4c:	02f53823          	sd	a5,48(a0) # 5030 <_entry-0x7fffafd0>
    void setSleep(bool val) { this->sleep = val; }
    80002c50:	00100793          	li	a5,1
    80002c54:	02f50c23          	sb	a5,56(a0)
                    WaitList::add(TCB::running);
    80002c58:	fffff097          	auipc	ra,0xfffff
    80002c5c:	b94080e7          	jalr	-1132(ra) # 800017ec <_ZN8WaitList3addEP3TCB>
                    thread_dispatch();
    80002c60:	ffffe097          	auipc	ra,0xffffe
    80002c64:	5fc080e7          	jalr	1532(ra) # 8000125c <_Z15thread_dispatchv>
    80002c68:	efdff06f          	j	80002b64 <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
                handleT = (sem_t*)arg2;
    80002c6c:	fc843783          	ld	a5,-56(s0)
    80002c70:	f4f43023          	sd	a5,-192(s0)
                init = (int)arg3;
    80002c74:	fc043783          	ld	a5,-64(s0)
    80002c78:	0007879b          	sext.w	a5,a5
    80002c7c:	eef42223          	sw	a5,-284(s0)
                *handleT = _Semaphore::createSemaphore(init);
    80002c80:	ee442483          	lw	s1,-284(s0)
    80002c84:	0004849b          	sext.w	s1,s1
    80002c88:	f4043903          	ld	s2,-192(s0)
    List <TCB> blocked;
    bool closed;

public:
    void* operator new(size_t size) {
        return MemoryAllocator::mem_alloc(size);
    80002c8c:	02000513          	li	a0,32
    80002c90:	00000097          	auipc	ra,0x0
    80002c94:	888080e7          	jalr	-1912(ra) # 80002518 <_ZN15MemoryAllocator9mem_allocEm>

    void operator delete[] (void* ptr) noexcept {
        MemoryAllocator::mem_free(ptr);
    }

    explicit _Semaphore(int value = 1) : value(value), closed(false) {}
    80002c98:	00952023          	sw	s1,0(a0)
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80002c9c:	00053423          	sd	zero,8(a0)
    80002ca0:	00053823          	sd	zero,16(a0)
    80002ca4:	00050c23          	sb	zero,24(a0)
    80002ca8:	00a93023          	sd	a0,0(s2)
                if (*handleT)
    80002cac:	f4043783          	ld	a5,-192(s0)
    80002cb0:	0007b783          	ld	a5,0(a5)
    80002cb4:	00078863          	beqz	a5,80002cc4 <_ZN5Riscv20handleSupervisorTrapEv+0x324>
                    __asm__ volatile ("mv a0, %0" : : "r" (0));
    80002cb8:	00000793          	li	a5,0
    80002cbc:	00078513          	mv	a0,a5
    80002cc0:	ea5ff06f          	j	80002b64 <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
                    __asm__ volatile ("mv a0, %0" : : "r" (-1));
    80002cc4:	fff00793          	li	a5,-1
    80002cc8:	00078513          	mv	a0,a5
    80002ccc:	e99ff06f          	j	80002b64 <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
                handle = (sem_t)arg2;
    80002cd0:	fc843783          	ld	a5,-56(s0)
    80002cd4:	eef43c23          	sd	a5,-264(s0)
                ret = handle->close();
    80002cd8:	ef843503          	ld	a0,-264(s0)
    80002cdc:	fffff097          	auipc	ra,0xfffff
    80002ce0:	944080e7          	jalr	-1724(ra) # 80001620 <_ZN10_Semaphore5closeEv>
    80002ce4:	eca42e23          	sw	a0,-292(s0)
                __asm__ volatile ("mv a0, %[r]" : : [r] "r" (ret));
    80002ce8:	edc42783          	lw	a5,-292(s0)
    80002cec:	00078513          	mv	a0,a5
                break;
    80002cf0:	e75ff06f          	j	80002b64 <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
                handle = (sem_t)arg2;
    80002cf4:	fc843783          	ld	a5,-56(s0)
    80002cf8:	eef43c23          	sd	a5,-264(s0)
                ret = handle->wait();
    80002cfc:	ef843503          	ld	a0,-264(s0)
    80002d00:	ffffe097          	auipc	ra,0xffffe
    80002d04:	7a8080e7          	jalr	1960(ra) # 800014a8 <_ZN10_Semaphore4waitEv>
    80002d08:	eca42e23          	sw	a0,-292(s0)
                __asm__ volatile ("mv a0, %[r]" : : [r] "r" (ret));
    80002d0c:	edc42783          	lw	a5,-292(s0)
    80002d10:	00078513          	mv	a0,a5
                break;
    80002d14:	e51ff06f          	j	80002b64 <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
                handle = (sem_t)arg2;
    80002d18:	fc843783          	ld	a5,-56(s0)
    80002d1c:	eef43c23          	sd	a5,-264(s0)
                ret = handle->signal();
    80002d20:	ef843503          	ld	a0,-264(s0)
    80002d24:	fffff097          	auipc	ra,0xfffff
    80002d28:	850080e7          	jalr	-1968(ra) # 80001574 <_ZN10_Semaphore6signalEv>
    80002d2c:	eca42e23          	sw	a0,-292(s0)
                __asm__ volatile ("mv a0, %[r]" : : [r] "r" (ret));
    80002d30:	edc42783          	lw	a5,-292(s0)
    80002d34:	00078513          	mv	a0,a5
                break;
    80002d38:	e2dff06f          	j	80002b64 <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
                handle = (sem_t)arg2;
    80002d3c:	fc843783          	ld	a5,-56(s0)
    80002d40:	eef43c23          	sd	a5,-264(s0)
                ret = handle->tryWait();
    80002d44:	ef843503          	ld	a0,-264(s0)
    80002d48:	fffff097          	auipc	ra,0xfffff
    80002d4c:	a68080e7          	jalr	-1432(ra) # 800017b0 <_ZN10_Semaphore7tryWaitEv>
    80002d50:	eca42e23          	sw	a0,-292(s0)
                __asm__ volatile ("mv a0, %[r]" : : [r] "r" (ret));
    80002d54:	edc42783          	lw	a5,-292(s0)
    80002d58:	00078513          	mv	a0,a5
                break;
    80002d5c:	e09ff06f          	j	80002b64 <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
                handle = (sem_t)arg2;
    80002d60:	fc843783          	ld	a5,-56(s0)
    80002d64:	eef43c23          	sd	a5,-264(s0)
                timeout = (time_t)arg3;
    80002d68:	fc043783          	ld	a5,-64(s0)
    80002d6c:	f4f43423          	sd	a5,-184(s0)
                ret = handle->timedwait(timeout);
    80002d70:	ef843503          	ld	a0,-264(s0)
    80002d74:	f4843583          	ld	a1,-184(s0)
    80002d78:	fffff097          	auipc	ra,0xfffff
    80002d7c:	938080e7          	jalr	-1736(ra) # 800016b0 <_ZN10_Semaphore9timedwaitEm>
    80002d80:	eca42e23          	sw	a0,-292(s0)
                __asm__ volatile ("mv a0, %[r]" : : [r] "r" (ret));
    80002d84:	edc42783          	lw	a5,-292(s0)
    80002d88:	00078513          	mv	a0,a5
                break;
    80002d8c:	dd9ff06f          	j	80002b64 <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
                ret = _Console::GETC();
    80002d90:	fffff097          	auipc	ra,0xfffff
    80002d94:	dd4080e7          	jalr	-556(ra) # 80001b64 <_ZN8_Console4GETCEv>
    80002d98:	0005051b          	sext.w	a0,a0
    80002d9c:	eca42e23          	sw	a0,-292(s0)
                __asm__ volatile ("mv a0, %[r]" : : [r] "r" (ret));
    80002da0:	edc42783          	lw	a5,-292(s0)
    80002da4:	00078513          	mv	a0,a5
                break;
    80002da8:	dbdff06f          	j	80002b64 <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
                c = (char)arg2;
    80002dac:	fc843783          	ld	a5,-56(s0)
    80002db0:	0ff7f793          	andi	a5,a5,255
    80002db4:	ecf40da3          	sb	a5,-293(s0)
                _Console::PUTC(c);
    80002db8:	edb44503          	lbu	a0,-293(s0)
    80002dbc:	0ff57513          	andi	a0,a0,255
    80002dc0:	fffff097          	auipc	ra,0xfffff
    80002dc4:	d70080e7          	jalr	-656(ra) # 80001b30 <_ZN8_Console4PUTCEc>
                break;
    80002dc8:	d9dff06f          	j	80002b64 <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
                _Console::putcHandler();
    80002dcc:	fffff097          	auipc	ra,0xfffff
    80002dd0:	dc8080e7          	jalr	-568(ra) # 80001b94 <_ZN8_Console11putcHandlerEv>
                break;
    80002dd4:	d91ff06f          	j	80002b64 <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002dd8:	141027f3          	csrr	a5,sepc
    80002ddc:	f8f43823          	sd	a5,-112(s0)
    return sepc;
    80002de0:	f9043783          	ld	a5,-112(s0)
        uint64 volatile sepc = r_sepc();
    80002de4:	f4f43823          	sd	a5,-176(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002de8:	100027f3          	csrr	a5,sstatus
    80002dec:	f8f43423          	sd	a5,-120(s0)
    return sstatus;
    80002df0:	f8843783          	ld	a5,-120(s0)
        uint64 volatile sstatus = r_sstatus();
    80002df4:	f4f43c23          	sd	a5,-168(s0)
        _Console::console_handler();
    80002df8:	fffff097          	auipc	ra,0xfffff
    80002dfc:	e34080e7          	jalr	-460(ra) # 80001c2c <_ZN8_Console15console_handlerEv>
        __asm__ volatile ("mv a0, %[r]" : : [r] "r" (arg1));
    80002e00:	fd043783          	ld	a5,-48(s0)
    80002e04:	00078513          	mv	a0,a5
        w_sepc(sepc);
    80002e08:	f5043783          	ld	a5,-176(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002e0c:	14179073          	csrw	sepc,a5
        w_sstatus(sstatus);
    80002e10:	f5843783          	ld	a5,-168(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002e14:	10079073          	csrw	sstatus,a5
}
    80002e18:	d5dff06f          	j	80002b74 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002e1c:	00200793          	li	a5,2
    80002e20:	1447b073          	csrc	sip,a5
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002e24:	141027f3          	csrr	a5,sepc
    80002e28:	faf43023          	sd	a5,-96(s0)
    return sepc;
    80002e2c:	fa043783          	ld	a5,-96(s0)
        uint64 volatile sepc = r_sepc();
    80002e30:	f6f43023          	sd	a5,-160(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002e34:	100027f3          	csrr	a5,sstatus
    80002e38:	f8f43c23          	sd	a5,-104(s0)
    return sstatus;
    80002e3c:	f9843783          	ld	a5,-104(s0)
        uint64 volatile sstatus = r_sstatus();
    80002e40:	f6f43423          	sd	a5,-152(s0)
        WaitList::wake();
    80002e44:	fffff097          	auipc	ra,0xfffff
    80002e48:	aac080e7          	jalr	-1364(ra) # 800018f0 <_ZN8WaitList4wakeEv>
        TCB::timeSliceCounter++;
    80002e4c:	00009717          	auipc	a4,0x9
    80002e50:	a6c73703          	ld	a4,-1428(a4) # 8000b8b8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002e54:	00073783          	ld	a5,0(a4)
    80002e58:	00178793          	addi	a5,a5,1
    80002e5c:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
    80002e60:	00009717          	auipc	a4,0x9
    80002e64:	a8073703          	ld	a4,-1408(a4) # 8000b8e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002e68:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return this->timeSlice; }
    80002e6c:	02873703          	ld	a4,40(a4)
    80002e70:	00e7fc63          	bgeu	a5,a4,80002e88 <_ZN5Riscv20handleSupervisorTrapEv+0x4e8>
        w_sepc(sepc);
    80002e74:	f6043783          	ld	a5,-160(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002e78:	14179073          	csrw	sepc,a5
        w_sstatus(sstatus);
    80002e7c:	f6843783          	ld	a5,-152(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002e80:	10079073          	csrw	sstatus,a5
}
    80002e84:	cf1ff06f          	j	80002b74 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
            TCB::timeSliceCounter = 0;
    80002e88:	00009797          	auipc	a5,0x9
    80002e8c:	a307b783          	ld	a5,-1488(a5) # 8000b8b8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002e90:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002e94:	fffff097          	auipc	ra,0xfffff
    80002e98:	040080e7          	jalr	64(ra) # 80001ed4 <_ZN3TCB8dispatchEv>
    80002e9c:	fd9ff06f          	j	80002e74 <_ZN5Riscv20handleSupervisorTrapEv+0x4d4>

0000000080002ea0 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *tcb)
{
    readyCoroutineQueue.addLast(tcb);
    80002ea0:	ff010113          	addi	sp,sp,-16
    80002ea4:	00813423          	sd	s0,8(sp)
    80002ea8:	01010413          	addi	s0,sp,16
    80002eac:	00100793          	li	a5,1
    80002eb0:	00f50863          	beq	a0,a5,80002ec0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002eb4:	00813403          	ld	s0,8(sp)
    80002eb8:	01010113          	addi	sp,sp,16
    80002ebc:	00008067          	ret
    80002ec0:	000107b7          	lui	a5,0x10
    80002ec4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002ec8:	fef596e3          	bne	a1,a5,80002eb4 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80002ecc:	00009797          	auipc	a5,0x9
    80002ed0:	ab478793          	addi	a5,a5,-1356 # 8000b980 <_ZN9Scheduler19readyCoroutineQueueE>
    80002ed4:	0007b023          	sd	zero,0(a5)
    80002ed8:	0007b423          	sd	zero,8(a5)
    80002edc:	fd9ff06f          	j	80002eb4 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002ee0 <_ZN9Scheduler3getEv>:
{
    80002ee0:	fe010113          	addi	sp,sp,-32
    80002ee4:	00113c23          	sd	ra,24(sp)
    80002ee8:	00813823          	sd	s0,16(sp)
    80002eec:	00913423          	sd	s1,8(sp)
    80002ef0:	02010413          	addi	s0,sp,32
        else
            head = tail = elem;
    }

    T* removeFirst() {
        if (!head)
    80002ef4:	00009517          	auipc	a0,0x9
    80002ef8:	a8c53503          	ld	a0,-1396(a0) # 8000b980 <_ZN9Scheduler19readyCoroutineQueueE>
    80002efc:	04050263          	beqz	a0,80002f40 <_ZN9Scheduler3getEv+0x60>
            return 0;

        Elem* elem = head;
        head = head->next;
    80002f00:	00853783          	ld	a5,8(a0)
    80002f04:	00009717          	auipc	a4,0x9
    80002f08:	a6f73e23          	sd	a5,-1412(a4) # 8000b980 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head)
    80002f0c:	02078463          	beqz	a5,80002f34 <_ZN9Scheduler3getEv+0x54>
            tail = 0;

        T* ret = elem->data;
    80002f10:	00053483          	ld	s1,0(a0)
            MemoryAllocator::mem_free(ptr);
    80002f14:	fffff097          	auipc	ra,0xfffff
    80002f18:	7a0080e7          	jalr	1952(ra) # 800026b4 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002f1c:	00048513          	mv	a0,s1
    80002f20:	01813083          	ld	ra,24(sp)
    80002f24:	01013403          	ld	s0,16(sp)
    80002f28:	00813483          	ld	s1,8(sp)
    80002f2c:	02010113          	addi	sp,sp,32
    80002f30:	00008067          	ret
            tail = 0;
    80002f34:	00009797          	auipc	a5,0x9
    80002f38:	a407ba23          	sd	zero,-1452(a5) # 8000b988 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002f3c:	fd5ff06f          	j	80002f10 <_ZN9Scheduler3getEv+0x30>
            return 0;
    80002f40:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80002f44:	fd9ff06f          	j	80002f1c <_ZN9Scheduler3getEv+0x3c>

0000000080002f48 <_ZN9Scheduler3putEP3TCB>:
{
    80002f48:	fe010113          	addi	sp,sp,-32
    80002f4c:	00113c23          	sd	ra,24(sp)
    80002f50:	00813823          	sd	s0,16(sp)
    80002f54:	00913423          	sd	s1,8(sp)
    80002f58:	02010413          	addi	s0,sp,32
    80002f5c:	00050493          	mv	s1,a0
            return MemoryAllocator::mem_alloc(size);
    80002f60:	01000513          	li	a0,16
    80002f64:	fffff097          	auipc	ra,0xfffff
    80002f68:	5b4080e7          	jalr	1460(ra) # 80002518 <_ZN15MemoryAllocator9mem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002f6c:	00953023          	sd	s1,0(a0)
    80002f70:	00053423          	sd	zero,8(a0)
        if (tail) {
    80002f74:	00009797          	auipc	a5,0x9
    80002f78:	a147b783          	ld	a5,-1516(a5) # 8000b988 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002f7c:	02078263          	beqz	a5,80002fa0 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002f80:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002f84:	00009797          	auipc	a5,0x9
    80002f88:	a0a7b223          	sd	a0,-1532(a5) # 8000b988 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002f8c:	01813083          	ld	ra,24(sp)
    80002f90:	01013403          	ld	s0,16(sp)
    80002f94:	00813483          	ld	s1,8(sp)
    80002f98:	02010113          	addi	sp,sp,32
    80002f9c:	00008067          	ret
            head = tail = elem;
    80002fa0:	00009797          	auipc	a5,0x9
    80002fa4:	9e078793          	addi	a5,a5,-1568 # 8000b980 <_ZN9Scheduler19readyCoroutineQueueE>
    80002fa8:	00a7b423          	sd	a0,8(a5)
    80002fac:	00a7b023          	sd	a0,0(a5)
    80002fb0:	fddff06f          	j	80002f8c <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002fb4 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80002fb4:	ff010113          	addi	sp,sp,-16
    80002fb8:	00113423          	sd	ra,8(sp)
    80002fbc:	00813023          	sd	s0,0(sp)
    80002fc0:	01010413          	addi	s0,sp,16
    80002fc4:	000105b7          	lui	a1,0x10
    80002fc8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002fcc:	00100513          	li	a0,1
    80002fd0:	00000097          	auipc	ra,0x0
    80002fd4:	ed0080e7          	jalr	-304(ra) # 80002ea0 <_Z41__static_initialization_and_destruction_0ii>
    80002fd8:	00813083          	ld	ra,8(sp)
    80002fdc:	00013403          	ld	s0,0(sp)
    80002fe0:	01010113          	addi	sp,sp,16
    80002fe4:	00008067          	ret

0000000080002fe8 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002fe8:	fe010113          	addi	sp,sp,-32
    80002fec:	00113c23          	sd	ra,24(sp)
    80002ff0:	00813823          	sd	s0,16(sp)
    80002ff4:	00913423          	sd	s1,8(sp)
    80002ff8:	01213023          	sd	s2,0(sp)
    80002ffc:	02010413          	addi	s0,sp,32
    80003000:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    printString("producerKeyboard: ");
    80003004:	00006517          	auipc	a0,0x6
    80003008:	15c50513          	addi	a0,a0,348 # 80009160 <CONSOLE_STATUS+0x150>
    8000300c:	00002097          	auipc	ra,0x2
    80003010:	53c080e7          	jalr	1340(ra) # 80005548 <_Z11printStringPKc>
    print_char_pointer_value((char*)TCB::running);
    80003014:	00009797          	auipc	a5,0x9
    80003018:	8cc7b783          	ld	a5,-1844(a5) # 8000b8e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    8000301c:	0007b503          	ld	a0,0(a5)
    80003020:	00002097          	auipc	ra,0x2
    80003024:	7ec080e7          	jalr	2028(ra) # 8000580c <_Z24print_char_pointer_valuePKc>
    printString("\n");
    80003028:	00006517          	auipc	a0,0x6
    8000302c:	4a850513          	addi	a0,a0,1192 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80003030:	00002097          	auipc	ra,0x2
    80003034:	518080e7          	jalr	1304(ra) # 80005548 <_Z11printStringPKc>

    int key;
    int i = 0;
    80003038:	00000913          	li	s2,0
    8000303c:	00c0006f          	j	80003048 <_ZL16producerKeyboardPv+0x60>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003040:	ffffe097          	auipc	ra,0xffffe
    80003044:	21c080e7          	jalr	540(ra) # 8000125c <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003048:	ffffe097          	auipc	ra,0xffffe
    8000304c:	3d0080e7          	jalr	976(ra) # 80001418 <_Z4getcv>
    80003050:	0005059b          	sext.w	a1,a0
    80003054:	01b00793          	li	a5,27
    80003058:	02f58a63          	beq	a1,a5,8000308c <_ZL16producerKeyboardPv+0xa4>
        data->buffer->put(key);
    8000305c:	0084b503          	ld	a0,8(s1)
    80003060:	00003097          	auipc	ra,0x3
    80003064:	584080e7          	jalr	1412(ra) # 800065e4 <_ZN6Buffer3putEi>
        i++;
    80003068:	0019071b          	addiw	a4,s2,1
    8000306c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003070:	0004a683          	lw	a3,0(s1)
    80003074:	0026979b          	slliw	a5,a3,0x2
    80003078:	00d787bb          	addw	a5,a5,a3
    8000307c:	0017979b          	slliw	a5,a5,0x1
    80003080:	02f767bb          	remw	a5,a4,a5
    80003084:	fc0792e3          	bnez	a5,80003048 <_ZL16producerKeyboardPv+0x60>
    80003088:	fb9ff06f          	j	80003040 <_ZL16producerKeyboardPv+0x58>
        }
    }

    threadEnd = 1;
    8000308c:	00100793          	li	a5,1
    80003090:	00009717          	auipc	a4,0x9
    80003094:	90f72023          	sw	a5,-1792(a4) # 8000b990 <_ZL9threadEnd>
    data->buffer->put('!');
    80003098:	02100593          	li	a1,33
    8000309c:	0084b503          	ld	a0,8(s1)
    800030a0:	00003097          	auipc	ra,0x3
    800030a4:	544080e7          	jalr	1348(ra) # 800065e4 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800030a8:	0104b503          	ld	a0,16(s1)
    800030ac:	ffffe097          	auipc	ra,0xffffe
    800030b0:	2c0080e7          	jalr	704(ra) # 8000136c <_Z10sem_signalP10_Semaphore>
}
    800030b4:	01813083          	ld	ra,24(sp)
    800030b8:	01013403          	ld	s0,16(sp)
    800030bc:	00813483          	ld	s1,8(sp)
    800030c0:	00013903          	ld	s2,0(sp)
    800030c4:	02010113          	addi	sp,sp,32
    800030c8:	00008067          	ret

00000000800030cc <_ZL8producerPv>:

static void producer(void *arg) {
    800030cc:	fe010113          	addi	sp,sp,-32
    800030d0:	00113c23          	sd	ra,24(sp)
    800030d4:	00813823          	sd	s0,16(sp)
    800030d8:	00913423          	sd	s1,8(sp)
    800030dc:	01213023          	sd	s2,0(sp)
    800030e0:	02010413          	addi	s0,sp,32
    800030e4:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    printString("Producer: ");
    800030e8:	00006517          	auipc	a0,0x6
    800030ec:	09050513          	addi	a0,a0,144 # 80009178 <CONSOLE_STATUS+0x168>
    800030f0:	00002097          	auipc	ra,0x2
    800030f4:	458080e7          	jalr	1112(ra) # 80005548 <_Z11printStringPKc>
    print_char_pointer_value((char*)TCB::running);
    800030f8:	00008797          	auipc	a5,0x8
    800030fc:	7e87b783          	ld	a5,2024(a5) # 8000b8e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003100:	0007b503          	ld	a0,0(a5)
    80003104:	00002097          	auipc	ra,0x2
    80003108:	708080e7          	jalr	1800(ra) # 8000580c <_Z24print_char_pointer_valuePKc>
    printString("\n");
    8000310c:	00006517          	auipc	a0,0x6
    80003110:	3c450513          	addi	a0,a0,964 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80003114:	00002097          	auipc	ra,0x2
    80003118:	434080e7          	jalr	1076(ra) # 80005548 <_Z11printStringPKc>

    int i = 0;
    8000311c:	00000913          	li	s2,0
    80003120:	00c0006f          	j	8000312c <_ZL8producerPv+0x60>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003124:	ffffe097          	auipc	ra,0xffffe
    80003128:	138080e7          	jalr	312(ra) # 8000125c <_Z15thread_dispatchv>
    while (!threadEnd) {
    8000312c:	00009797          	auipc	a5,0x9
    80003130:	8647a783          	lw	a5,-1948(a5) # 8000b990 <_ZL9threadEnd>
    80003134:	02079e63          	bnez	a5,80003170 <_ZL8producerPv+0xa4>
        data->buffer->put(data->id + '0');
    80003138:	0004a583          	lw	a1,0(s1)
    8000313c:	0305859b          	addiw	a1,a1,48
    80003140:	0084b503          	ld	a0,8(s1)
    80003144:	00003097          	auipc	ra,0x3
    80003148:	4a0080e7          	jalr	1184(ra) # 800065e4 <_ZN6Buffer3putEi>
        i++;
    8000314c:	0019071b          	addiw	a4,s2,1
    80003150:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003154:	0004a683          	lw	a3,0(s1)
    80003158:	0026979b          	slliw	a5,a3,0x2
    8000315c:	00d787bb          	addw	a5,a5,a3
    80003160:	0017979b          	slliw	a5,a5,0x1
    80003164:	02f767bb          	remw	a5,a4,a5
    80003168:	fc0792e3          	bnez	a5,8000312c <_ZL8producerPv+0x60>
    8000316c:	fb9ff06f          	j	80003124 <_ZL8producerPv+0x58>
        }
    }

    sem_signal(data->wait);
    80003170:	0104b503          	ld	a0,16(s1)
    80003174:	ffffe097          	auipc	ra,0xffffe
    80003178:	1f8080e7          	jalr	504(ra) # 8000136c <_Z10sem_signalP10_Semaphore>
}
    8000317c:	01813083          	ld	ra,24(sp)
    80003180:	01013403          	ld	s0,16(sp)
    80003184:	00813483          	ld	s1,8(sp)
    80003188:	00013903          	ld	s2,0(sp)
    8000318c:	02010113          	addi	sp,sp,32
    80003190:	00008067          	ret

0000000080003194 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003194:	fd010113          	addi	sp,sp,-48
    80003198:	02113423          	sd	ra,40(sp)
    8000319c:	02813023          	sd	s0,32(sp)
    800031a0:	00913c23          	sd	s1,24(sp)
    800031a4:	01213823          	sd	s2,16(sp)
    800031a8:	01313423          	sd	s3,8(sp)
    800031ac:	03010413          	addi	s0,sp,48
    800031b0:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    printString("Consumer: ");
    800031b4:	00006517          	auipc	a0,0x6
    800031b8:	fd450513          	addi	a0,a0,-44 # 80009188 <CONSOLE_STATUS+0x178>
    800031bc:	00002097          	auipc	ra,0x2
    800031c0:	38c080e7          	jalr	908(ra) # 80005548 <_Z11printStringPKc>
    print_char_pointer_value((char*)TCB::running);
    800031c4:	00008797          	auipc	a5,0x8
    800031c8:	71c7b783          	ld	a5,1820(a5) # 8000b8e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    800031cc:	0007b503          	ld	a0,0(a5)
    800031d0:	00002097          	auipc	ra,0x2
    800031d4:	63c080e7          	jalr	1596(ra) # 8000580c <_Z24print_char_pointer_valuePKc>
    printString("\n");
    800031d8:	00006517          	auipc	a0,0x6
    800031dc:	2f850513          	addi	a0,a0,760 # 800094d0 <CONSOLE_STATUS+0x4c0>
    800031e0:	00002097          	auipc	ra,0x2
    800031e4:	368080e7          	jalr	872(ra) # 80005548 <_Z11printStringPKc>

    int i = 0;
    800031e8:	00000993          	li	s3,0
    800031ec:	01c0006f          	j	80003208 <_ZL8consumerPv+0x74>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800031f0:	ffffe097          	auipc	ra,0xffffe
    800031f4:	06c080e7          	jalr	108(ra) # 8000125c <_Z15thread_dispatchv>
    800031f8:	0500006f          	j	80003248 <_ZL8consumerPv+0xb4>
        }

        if (i % 80 == 0) {
            putc('\n');
    800031fc:	00a00513          	li	a0,10
    80003200:	ffffe097          	auipc	ra,0xffffe
    80003204:	24c080e7          	jalr	588(ra) # 8000144c <_Z4putcc>
    while (!threadEnd) {
    80003208:	00008797          	auipc	a5,0x8
    8000320c:	7887a783          	lw	a5,1928(a5) # 8000b990 <_ZL9threadEnd>
    80003210:	06079063          	bnez	a5,80003270 <_ZL8consumerPv+0xdc>
        int key = data->buffer->get();
    80003214:	00893503          	ld	a0,8(s2)
    80003218:	00003097          	auipc	ra,0x3
    8000321c:	45c080e7          	jalr	1116(ra) # 80006674 <_ZN6Buffer3getEv>
        i++;
    80003220:	0019849b          	addiw	s1,s3,1
    80003224:	0004899b          	sext.w	s3,s1
        putc(key);
    80003228:	0ff57513          	andi	a0,a0,255
    8000322c:	ffffe097          	auipc	ra,0xffffe
    80003230:	220080e7          	jalr	544(ra) # 8000144c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003234:	00092703          	lw	a4,0(s2)
    80003238:	0027179b          	slliw	a5,a4,0x2
    8000323c:	00e787bb          	addw	a5,a5,a4
    80003240:	02f4e7bb          	remw	a5,s1,a5
    80003244:	fa0786e3          	beqz	a5,800031f0 <_ZL8consumerPv+0x5c>
        if (i % 80 == 0) {
    80003248:	05000793          	li	a5,80
    8000324c:	02f4e4bb          	remw	s1,s1,a5
    80003250:	fa049ce3          	bnez	s1,80003208 <_ZL8consumerPv+0x74>
    80003254:	fa9ff06f          	j	800031fc <_ZL8consumerPv+0x68>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003258:	00893503          	ld	a0,8(s2)
    8000325c:	00003097          	auipc	ra,0x3
    80003260:	418080e7          	jalr	1048(ra) # 80006674 <_ZN6Buffer3getEv>
        key = key;
        putc(key);
    80003264:	0ff57513          	andi	a0,a0,255
    80003268:	ffffe097          	auipc	ra,0xffffe
    8000326c:	1e4080e7          	jalr	484(ra) # 8000144c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003270:	00893503          	ld	a0,8(s2)
    80003274:	00003097          	auipc	ra,0x3
    80003278:	48c080e7          	jalr	1164(ra) # 80006700 <_ZN6Buffer6getCntEv>
    8000327c:	fca04ee3          	bgtz	a0,80003258 <_ZL8consumerPv+0xc4>
    }

    sem_signal(data->wait);
    80003280:	01093503          	ld	a0,16(s2)
    80003284:	ffffe097          	auipc	ra,0xffffe
    80003288:	0e8080e7          	jalr	232(ra) # 8000136c <_Z10sem_signalP10_Semaphore>
}
    8000328c:	02813083          	ld	ra,40(sp)
    80003290:	02013403          	ld	s0,32(sp)
    80003294:	01813483          	ld	s1,24(sp)
    80003298:	01013903          	ld	s2,16(sp)
    8000329c:	00813983          	ld	s3,8(sp)
    800032a0:	03010113          	addi	sp,sp,48
    800032a4:	00008067          	ret

00000000800032a8 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800032a8:	f9010113          	addi	sp,sp,-112
    800032ac:	06113423          	sd	ra,104(sp)
    800032b0:	06813023          	sd	s0,96(sp)
    800032b4:	04913c23          	sd	s1,88(sp)
    800032b8:	05213823          	sd	s2,80(sp)
    800032bc:	05313423          	sd	s3,72(sp)
    800032c0:	05413023          	sd	s4,64(sp)
    800032c4:	03513c23          	sd	s5,56(sp)
    800032c8:	03613823          	sd	s6,48(sp)
    800032cc:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800032d0:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800032d4:	00006517          	auipc	a0,0x6
    800032d8:	ec450513          	addi	a0,a0,-316 # 80009198 <CONSOLE_STATUS+0x188>
    800032dc:	00002097          	auipc	ra,0x2
    800032e0:	26c080e7          	jalr	620(ra) # 80005548 <_Z11printStringPKc>
    getString(input, 30);
    800032e4:	01e00593          	li	a1,30
    800032e8:	fa040493          	addi	s1,s0,-96
    800032ec:	00048513          	mv	a0,s1
    800032f0:	00002097          	auipc	ra,0x2
    800032f4:	2e0080e7          	jalr	736(ra) # 800055d0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800032f8:	00048513          	mv	a0,s1
    800032fc:	00002097          	auipc	ra,0x2
    80003300:	3a0080e7          	jalr	928(ra) # 8000569c <_Z11stringToIntPKc>
    80003304:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003308:	00006517          	auipc	a0,0x6
    8000330c:	eb050513          	addi	a0,a0,-336 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80003310:	00002097          	auipc	ra,0x2
    80003314:	238080e7          	jalr	568(ra) # 80005548 <_Z11printStringPKc>
    getString(input, 30);
    80003318:	01e00593          	li	a1,30
    8000331c:	00048513          	mv	a0,s1
    80003320:	00002097          	auipc	ra,0x2
    80003324:	2b0080e7          	jalr	688(ra) # 800055d0 <_Z9getStringPci>
    n = stringToInt(input);
    80003328:	00048513          	mv	a0,s1
    8000332c:	00002097          	auipc	ra,0x2
    80003330:	370080e7          	jalr	880(ra) # 8000569c <_Z11stringToIntPKc>
    80003334:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003338:	00006517          	auipc	a0,0x6
    8000333c:	ea050513          	addi	a0,a0,-352 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80003340:	00002097          	auipc	ra,0x2
    80003344:	208080e7          	jalr	520(ra) # 80005548 <_Z11printStringPKc>
    80003348:	00000613          	li	a2,0
    8000334c:	00a00593          	li	a1,10
    80003350:	00090513          	mv	a0,s2
    80003354:	00002097          	auipc	ra,0x2
    80003358:	398080e7          	jalr	920(ra) # 800056ec <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000335c:	00006517          	auipc	a0,0x6
    80003360:	e9450513          	addi	a0,a0,-364 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80003364:	00002097          	auipc	ra,0x2
    80003368:	1e4080e7          	jalr	484(ra) # 80005548 <_Z11printStringPKc>
    8000336c:	00000613          	li	a2,0
    80003370:	00a00593          	li	a1,10
    80003374:	00048513          	mv	a0,s1
    80003378:	00002097          	auipc	ra,0x2
    8000337c:	374080e7          	jalr	884(ra) # 800056ec <_Z8printIntiii>
    printString(".\n");
    80003380:	00006517          	auipc	a0,0x6
    80003384:	e8850513          	addi	a0,a0,-376 # 80009208 <CONSOLE_STATUS+0x1f8>
    80003388:	00002097          	auipc	ra,0x2
    8000338c:	1c0080e7          	jalr	448(ra) # 80005548 <_Z11printStringPKc>
    if(threadNum > n) {
    80003390:	0324c463          	blt	s1,s2,800033b8 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003394:	03205c63          	blez	s2,800033cc <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003398:	03800513          	li	a0,56
    8000339c:	fffff097          	auipc	ra,0xfffff
    800033a0:	c50080e7          	jalr	-944(ra) # 80001fec <_Znwm>
    800033a4:	00050a13          	mv	s4,a0
    800033a8:	00048593          	mv	a1,s1
    800033ac:	00003097          	auipc	ra,0x3
    800033b0:	19c080e7          	jalr	412(ra) # 80006548 <_ZN6BufferC1Ei>
    800033b4:	0300006f          	j	800033e4 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800033b8:	00006517          	auipc	a0,0x6
    800033bc:	e5850513          	addi	a0,a0,-424 # 80009210 <CONSOLE_STATUS+0x200>
    800033c0:	00002097          	auipc	ra,0x2
    800033c4:	188080e7          	jalr	392(ra) # 80005548 <_Z11printStringPKc>
        return;
    800033c8:	0140006f          	j	800033dc <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800033cc:	00006517          	auipc	a0,0x6
    800033d0:	e8450513          	addi	a0,a0,-380 # 80009250 <CONSOLE_STATUS+0x240>
    800033d4:	00002097          	auipc	ra,0x2
    800033d8:	174080e7          	jalr	372(ra) # 80005548 <_Z11printStringPKc>
        return;
    800033dc:	000b0113          	mv	sp,s6
    800033e0:	15c0006f          	j	8000353c <_Z22producerConsumer_C_APIv+0x294>
    Buffer::pera = buffer;
    800033e4:	00008797          	auipc	a5,0x8
    800033e8:	4ac7b783          	ld	a5,1196(a5) # 8000b890 <_GLOBAL_OFFSET_TABLE_+0x8>
    800033ec:	0147b023          	sd	s4,0(a5)
    sem_open(&waitForAll, 0);
    800033f0:	00000593          	li	a1,0
    800033f4:	00008517          	auipc	a0,0x8
    800033f8:	5a450513          	addi	a0,a0,1444 # 8000b998 <_ZL10waitForAll>
    800033fc:	ffffe097          	auipc	ra,0xffffe
    80003400:	ec4080e7          	jalr	-316(ra) # 800012c0 <_Z8sem_openPP10_Semaphorej>
    thread_t threads[threadNum];
    80003404:	00391793          	slli	a5,s2,0x3
    80003408:	00f78793          	addi	a5,a5,15
    8000340c:	ff07f793          	andi	a5,a5,-16
    80003410:	40f10133          	sub	sp,sp,a5
    80003414:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003418:	0019071b          	addiw	a4,s2,1
    8000341c:	00171793          	slli	a5,a4,0x1
    80003420:	00e787b3          	add	a5,a5,a4
    80003424:	00379793          	slli	a5,a5,0x3
    80003428:	00f78793          	addi	a5,a5,15
    8000342c:	ff07f793          	andi	a5,a5,-16
    80003430:	40f10133          	sub	sp,sp,a5
    80003434:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003438:	00191613          	slli	a2,s2,0x1
    8000343c:	012607b3          	add	a5,a2,s2
    80003440:	00379793          	slli	a5,a5,0x3
    80003444:	00f987b3          	add	a5,s3,a5
    80003448:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000344c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003450:	00008717          	auipc	a4,0x8
    80003454:	54873703          	ld	a4,1352(a4) # 8000b998 <_ZL10waitForAll>
    80003458:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    8000345c:	00078613          	mv	a2,a5
    80003460:	00000597          	auipc	a1,0x0
    80003464:	d3458593          	addi	a1,a1,-716 # 80003194 <_ZL8consumerPv>
    80003468:	f9840513          	addi	a0,s0,-104
    8000346c:	ffffe097          	auipc	ra,0xffffe
    80003470:	d7c080e7          	jalr	-644(ra) # 800011e8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003474:	00000493          	li	s1,0
    80003478:	0280006f          	j	800034a0 <_Z22producerConsumer_C_APIv+0x1f8>
        thread_create(threads + i,
    8000347c:	00000597          	auipc	a1,0x0
    80003480:	b6c58593          	addi	a1,a1,-1172 # 80002fe8 <_ZL16producerKeyboardPv>
                      data + i);
    80003484:	00179613          	slli	a2,a5,0x1
    80003488:	00f60633          	add	a2,a2,a5
    8000348c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003490:	00c98633          	add	a2,s3,a2
    80003494:	ffffe097          	auipc	ra,0xffffe
    80003498:	d54080e7          	jalr	-684(ra) # 800011e8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000349c:	0014849b          	addiw	s1,s1,1
    800034a0:	0524d263          	bge	s1,s2,800034e4 <_Z22producerConsumer_C_APIv+0x23c>
        data[i].id = i;
    800034a4:	00149793          	slli	a5,s1,0x1
    800034a8:	009787b3          	add	a5,a5,s1
    800034ac:	00379793          	slli	a5,a5,0x3
    800034b0:	00f987b3          	add	a5,s3,a5
    800034b4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800034b8:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800034bc:	00008717          	auipc	a4,0x8
    800034c0:	4dc73703          	ld	a4,1244(a4) # 8000b998 <_ZL10waitForAll>
    800034c4:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800034c8:	00048793          	mv	a5,s1
    800034cc:	00349513          	slli	a0,s1,0x3
    800034d0:	00aa8533          	add	a0,s5,a0
    800034d4:	fa9054e3          	blez	s1,8000347c <_Z22producerConsumer_C_APIv+0x1d4>
    800034d8:	00000597          	auipc	a1,0x0
    800034dc:	bf458593          	addi	a1,a1,-1036 # 800030cc <_ZL8producerPv>
    800034e0:	fa5ff06f          	j	80003484 <_Z22producerConsumer_C_APIv+0x1dc>
    thread_dispatch();
    800034e4:	ffffe097          	auipc	ra,0xffffe
    800034e8:	d78080e7          	jalr	-648(ra) # 8000125c <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800034ec:	00000493          	li	s1,0
    800034f0:	00994e63          	blt	s2,s1,8000350c <_Z22producerConsumer_C_APIv+0x264>
        sem_wait(waitForAll);
    800034f4:	00008517          	auipc	a0,0x8
    800034f8:	4a453503          	ld	a0,1188(a0) # 8000b998 <_ZL10waitForAll>
    800034fc:	ffffe097          	auipc	ra,0xffffe
    80003500:	e38080e7          	jalr	-456(ra) # 80001334 <_Z8sem_waitP10_Semaphore>
    for (int i = 0; i <= threadNum; i++) {
    80003504:	0014849b          	addiw	s1,s1,1
    80003508:	fe9ff06f          	j	800034f0 <_Z22producerConsumer_C_APIv+0x248>
    sem_close(waitForAll);
    8000350c:	00008517          	auipc	a0,0x8
    80003510:	48c53503          	ld	a0,1164(a0) # 8000b998 <_ZL10waitForAll>
    80003514:	ffffe097          	auipc	ra,0xffffe
    80003518:	de8080e7          	jalr	-536(ra) # 800012fc <_Z9sem_closeP10_Semaphore>
    delete buffer;
    8000351c:	000a0e63          	beqz	s4,80003538 <_Z22producerConsumer_C_APIv+0x290>
    80003520:	000a0513          	mv	a0,s4
    80003524:	00003097          	auipc	ra,0x3
    80003528:	264080e7          	jalr	612(ra) # 80006788 <_ZN6BufferD1Ev>
    8000352c:	000a0513          	mv	a0,s4
    80003530:	fffff097          	auipc	ra,0xfffff
    80003534:	b0c080e7          	jalr	-1268(ra) # 8000203c <_ZdlPv>
    80003538:	000b0113          	mv	sp,s6

}
    8000353c:	f9040113          	addi	sp,s0,-112
    80003540:	06813083          	ld	ra,104(sp)
    80003544:	06013403          	ld	s0,96(sp)
    80003548:	05813483          	ld	s1,88(sp)
    8000354c:	05013903          	ld	s2,80(sp)
    80003550:	04813983          	ld	s3,72(sp)
    80003554:	04013a03          	ld	s4,64(sp)
    80003558:	03813a83          	ld	s5,56(sp)
    8000355c:	03013b03          	ld	s6,48(sp)
    80003560:	07010113          	addi	sp,sp,112
    80003564:	00008067          	ret
    80003568:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    8000356c:	000a0513          	mv	a0,s4
    80003570:	fffff097          	auipc	ra,0xfffff
    80003574:	acc080e7          	jalr	-1332(ra) # 8000203c <_ZdlPv>
    80003578:	00048513          	mv	a0,s1
    8000357c:	00009097          	auipc	ra,0x9
    80003580:	53c080e7          	jalr	1340(ra) # 8000cab8 <_Unwind_Resume>

0000000080003584 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003584:	fe010113          	addi	sp,sp,-32
    80003588:	00113c23          	sd	ra,24(sp)
    8000358c:	00813823          	sd	s0,16(sp)
    80003590:	00913423          	sd	s1,8(sp)
    80003594:	01213023          	sd	s2,0(sp)
    80003598:	02010413          	addi	s0,sp,32
    8000359c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800035a0:	00100793          	li	a5,1
    800035a4:	02a7f863          	bgeu	a5,a0,800035d4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800035a8:	00a00793          	li	a5,10
    800035ac:	02f577b3          	remu	a5,a0,a5
    800035b0:	02078e63          	beqz	a5,800035ec <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800035b4:	fff48513          	addi	a0,s1,-1
    800035b8:	00000097          	auipc	ra,0x0
    800035bc:	fcc080e7          	jalr	-52(ra) # 80003584 <_ZL9fibonaccim>
    800035c0:	00050913          	mv	s2,a0
    800035c4:	ffe48513          	addi	a0,s1,-2
    800035c8:	00000097          	auipc	ra,0x0
    800035cc:	fbc080e7          	jalr	-68(ra) # 80003584 <_ZL9fibonaccim>
    800035d0:	00a90533          	add	a0,s2,a0
}
    800035d4:	01813083          	ld	ra,24(sp)
    800035d8:	01013403          	ld	s0,16(sp)
    800035dc:	00813483          	ld	s1,8(sp)
    800035e0:	00013903          	ld	s2,0(sp)
    800035e4:	02010113          	addi	sp,sp,32
    800035e8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800035ec:	ffffe097          	auipc	ra,0xffffe
    800035f0:	c70080e7          	jalr	-912(ra) # 8000125c <_Z15thread_dispatchv>
    800035f4:	fc1ff06f          	j	800035b4 <_ZL9fibonaccim+0x30>

00000000800035f8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800035f8:	fe010113          	addi	sp,sp,-32
    800035fc:	00113c23          	sd	ra,24(sp)
    80003600:	00813823          	sd	s0,16(sp)
    80003604:	00913423          	sd	s1,8(sp)
    80003608:	01213023          	sd	s2,0(sp)
    8000360c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003610:	00000913          	li	s2,0
    80003614:	0380006f          	j	8000364c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003618:	ffffe097          	auipc	ra,0xffffe
    8000361c:	c44080e7          	jalr	-956(ra) # 8000125c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003620:	00148493          	addi	s1,s1,1
    80003624:	000027b7          	lui	a5,0x2
    80003628:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000362c:	0097ee63          	bltu	a5,s1,80003648 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003630:	00000713          	li	a4,0
    80003634:	000077b7          	lui	a5,0x7
    80003638:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000363c:	fce7eee3          	bltu	a5,a4,80003618 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003640:	00170713          	addi	a4,a4,1
    80003644:	ff1ff06f          	j	80003634 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003648:	00190913          	addi	s2,s2,1
    8000364c:	00900793          	li	a5,9
    80003650:	0527e063          	bltu	a5,s2,80003690 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003654:	00006517          	auipc	a0,0x6
    80003658:	c2c50513          	addi	a0,a0,-980 # 80009280 <CONSOLE_STATUS+0x270>
    8000365c:	00002097          	auipc	ra,0x2
    80003660:	eec080e7          	jalr	-276(ra) # 80005548 <_Z11printStringPKc>
    80003664:	00000613          	li	a2,0
    80003668:	00a00593          	li	a1,10
    8000366c:	0009051b          	sext.w	a0,s2
    80003670:	00002097          	auipc	ra,0x2
    80003674:	07c080e7          	jalr	124(ra) # 800056ec <_Z8printIntiii>
    80003678:	00006517          	auipc	a0,0x6
    8000367c:	e5850513          	addi	a0,a0,-424 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80003680:	00002097          	auipc	ra,0x2
    80003684:	ec8080e7          	jalr	-312(ra) # 80005548 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003688:	00000493          	li	s1,0
    8000368c:	f99ff06f          	j	80003624 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003690:	00006517          	auipc	a0,0x6
    80003694:	bf850513          	addi	a0,a0,-1032 # 80009288 <CONSOLE_STATUS+0x278>
    80003698:	00002097          	auipc	ra,0x2
    8000369c:	eb0080e7          	jalr	-336(ra) # 80005548 <_Z11printStringPKc>
    finishedA = true;
    800036a0:	00100793          	li	a5,1
    800036a4:	00008717          	auipc	a4,0x8
    800036a8:	2ef70e23          	sb	a5,764(a4) # 8000b9a0 <_ZL9finishedA>
}
    800036ac:	01813083          	ld	ra,24(sp)
    800036b0:	01013403          	ld	s0,16(sp)
    800036b4:	00813483          	ld	s1,8(sp)
    800036b8:	00013903          	ld	s2,0(sp)
    800036bc:	02010113          	addi	sp,sp,32
    800036c0:	00008067          	ret

00000000800036c4 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800036c4:	fe010113          	addi	sp,sp,-32
    800036c8:	00113c23          	sd	ra,24(sp)
    800036cc:	00813823          	sd	s0,16(sp)
    800036d0:	00913423          	sd	s1,8(sp)
    800036d4:	01213023          	sd	s2,0(sp)
    800036d8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800036dc:	00000913          	li	s2,0
    800036e0:	0380006f          	j	80003718 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800036e4:	ffffe097          	auipc	ra,0xffffe
    800036e8:	b78080e7          	jalr	-1160(ra) # 8000125c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800036ec:	00148493          	addi	s1,s1,1
    800036f0:	000027b7          	lui	a5,0x2
    800036f4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800036f8:	0097ee63          	bltu	a5,s1,80003714 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800036fc:	00000713          	li	a4,0
    80003700:	000077b7          	lui	a5,0x7
    80003704:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003708:	fce7eee3          	bltu	a5,a4,800036e4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    8000370c:	00170713          	addi	a4,a4,1
    80003710:	ff1ff06f          	j	80003700 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003714:	00190913          	addi	s2,s2,1
    80003718:	00f00793          	li	a5,15
    8000371c:	0527e063          	bltu	a5,s2,8000375c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003720:	00006517          	auipc	a0,0x6
    80003724:	b7850513          	addi	a0,a0,-1160 # 80009298 <CONSOLE_STATUS+0x288>
    80003728:	00002097          	auipc	ra,0x2
    8000372c:	e20080e7          	jalr	-480(ra) # 80005548 <_Z11printStringPKc>
    80003730:	00000613          	li	a2,0
    80003734:	00a00593          	li	a1,10
    80003738:	0009051b          	sext.w	a0,s2
    8000373c:	00002097          	auipc	ra,0x2
    80003740:	fb0080e7          	jalr	-80(ra) # 800056ec <_Z8printIntiii>
    80003744:	00006517          	auipc	a0,0x6
    80003748:	d8c50513          	addi	a0,a0,-628 # 800094d0 <CONSOLE_STATUS+0x4c0>
    8000374c:	00002097          	auipc	ra,0x2
    80003750:	dfc080e7          	jalr	-516(ra) # 80005548 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003754:	00000493          	li	s1,0
    80003758:	f99ff06f          	j	800036f0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    8000375c:	00006517          	auipc	a0,0x6
    80003760:	b4450513          	addi	a0,a0,-1212 # 800092a0 <CONSOLE_STATUS+0x290>
    80003764:	00002097          	auipc	ra,0x2
    80003768:	de4080e7          	jalr	-540(ra) # 80005548 <_Z11printStringPKc>
    finishedB = true;
    8000376c:	00100793          	li	a5,1
    80003770:	00008717          	auipc	a4,0x8
    80003774:	22f708a3          	sb	a5,561(a4) # 8000b9a1 <_ZL9finishedB>
    thread_dispatch();
    80003778:	ffffe097          	auipc	ra,0xffffe
    8000377c:	ae4080e7          	jalr	-1308(ra) # 8000125c <_Z15thread_dispatchv>
}
    80003780:	01813083          	ld	ra,24(sp)
    80003784:	01013403          	ld	s0,16(sp)
    80003788:	00813483          	ld	s1,8(sp)
    8000378c:	00013903          	ld	s2,0(sp)
    80003790:	02010113          	addi	sp,sp,32
    80003794:	00008067          	ret

0000000080003798 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003798:	fe010113          	addi	sp,sp,-32
    8000379c:	00113c23          	sd	ra,24(sp)
    800037a0:	00813823          	sd	s0,16(sp)
    800037a4:	00913423          	sd	s1,8(sp)
    800037a8:	01213023          	sd	s2,0(sp)
    800037ac:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800037b0:	00000493          	li	s1,0
    800037b4:	0400006f          	j	800037f4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800037b8:	00006517          	auipc	a0,0x6
    800037bc:	af850513          	addi	a0,a0,-1288 # 800092b0 <CONSOLE_STATUS+0x2a0>
    800037c0:	00002097          	auipc	ra,0x2
    800037c4:	d88080e7          	jalr	-632(ra) # 80005548 <_Z11printStringPKc>
    800037c8:	00000613          	li	a2,0
    800037cc:	00a00593          	li	a1,10
    800037d0:	00048513          	mv	a0,s1
    800037d4:	00002097          	auipc	ra,0x2
    800037d8:	f18080e7          	jalr	-232(ra) # 800056ec <_Z8printIntiii>
    800037dc:	00006517          	auipc	a0,0x6
    800037e0:	cf450513          	addi	a0,a0,-780 # 800094d0 <CONSOLE_STATUS+0x4c0>
    800037e4:	00002097          	auipc	ra,0x2
    800037e8:	d64080e7          	jalr	-668(ra) # 80005548 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800037ec:	0014849b          	addiw	s1,s1,1
    800037f0:	0ff4f493          	andi	s1,s1,255
    800037f4:	00200793          	li	a5,2
    800037f8:	fc97f0e3          	bgeu	a5,s1,800037b8 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800037fc:	00006517          	auipc	a0,0x6
    80003800:	abc50513          	addi	a0,a0,-1348 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003804:	00002097          	auipc	ra,0x2
    80003808:	d44080e7          	jalr	-700(ra) # 80005548 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000380c:	00700313          	li	t1,7
    thread_dispatch();
    80003810:	ffffe097          	auipc	ra,0xffffe
    80003814:	a4c080e7          	jalr	-1460(ra) # 8000125c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003818:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000381c:	00006517          	auipc	a0,0x6
    80003820:	aac50513          	addi	a0,a0,-1364 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80003824:	00002097          	auipc	ra,0x2
    80003828:	d24080e7          	jalr	-732(ra) # 80005548 <_Z11printStringPKc>
    8000382c:	00000613          	li	a2,0
    80003830:	00a00593          	li	a1,10
    80003834:	0009051b          	sext.w	a0,s2
    80003838:	00002097          	auipc	ra,0x2
    8000383c:	eb4080e7          	jalr	-332(ra) # 800056ec <_Z8printIntiii>
    80003840:	00006517          	auipc	a0,0x6
    80003844:	c9050513          	addi	a0,a0,-880 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80003848:	00002097          	auipc	ra,0x2
    8000384c:	d00080e7          	jalr	-768(ra) # 80005548 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003850:	00c00513          	li	a0,12
    80003854:	00000097          	auipc	ra,0x0
    80003858:	d30080e7          	jalr	-720(ra) # 80003584 <_ZL9fibonaccim>
    8000385c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003860:	00006517          	auipc	a0,0x6
    80003864:	a7050513          	addi	a0,a0,-1424 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80003868:	00002097          	auipc	ra,0x2
    8000386c:	ce0080e7          	jalr	-800(ra) # 80005548 <_Z11printStringPKc>
    80003870:	00000613          	li	a2,0
    80003874:	00a00593          	li	a1,10
    80003878:	0009051b          	sext.w	a0,s2
    8000387c:	00002097          	auipc	ra,0x2
    80003880:	e70080e7          	jalr	-400(ra) # 800056ec <_Z8printIntiii>
    80003884:	00006517          	auipc	a0,0x6
    80003888:	c4c50513          	addi	a0,a0,-948 # 800094d0 <CONSOLE_STATUS+0x4c0>
    8000388c:	00002097          	auipc	ra,0x2
    80003890:	cbc080e7          	jalr	-836(ra) # 80005548 <_Z11printStringPKc>
    80003894:	0400006f          	j	800038d4 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003898:	00006517          	auipc	a0,0x6
    8000389c:	a1850513          	addi	a0,a0,-1512 # 800092b0 <CONSOLE_STATUS+0x2a0>
    800038a0:	00002097          	auipc	ra,0x2
    800038a4:	ca8080e7          	jalr	-856(ra) # 80005548 <_Z11printStringPKc>
    800038a8:	00000613          	li	a2,0
    800038ac:	00a00593          	li	a1,10
    800038b0:	00048513          	mv	a0,s1
    800038b4:	00002097          	auipc	ra,0x2
    800038b8:	e38080e7          	jalr	-456(ra) # 800056ec <_Z8printIntiii>
    800038bc:	00006517          	auipc	a0,0x6
    800038c0:	c1450513          	addi	a0,a0,-1004 # 800094d0 <CONSOLE_STATUS+0x4c0>
    800038c4:	00002097          	auipc	ra,0x2
    800038c8:	c84080e7          	jalr	-892(ra) # 80005548 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800038cc:	0014849b          	addiw	s1,s1,1
    800038d0:	0ff4f493          	andi	s1,s1,255
    800038d4:	00500793          	li	a5,5
    800038d8:	fc97f0e3          	bgeu	a5,s1,80003898 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800038dc:	00006517          	auipc	a0,0x6
    800038e0:	9ac50513          	addi	a0,a0,-1620 # 80009288 <CONSOLE_STATUS+0x278>
    800038e4:	00002097          	auipc	ra,0x2
    800038e8:	c64080e7          	jalr	-924(ra) # 80005548 <_Z11printStringPKc>
    finishedC = true;
    800038ec:	00100793          	li	a5,1
    800038f0:	00008717          	auipc	a4,0x8
    800038f4:	0af70923          	sb	a5,178(a4) # 8000b9a2 <_ZL9finishedC>
    thread_dispatch();
    800038f8:	ffffe097          	auipc	ra,0xffffe
    800038fc:	964080e7          	jalr	-1692(ra) # 8000125c <_Z15thread_dispatchv>
}
    80003900:	01813083          	ld	ra,24(sp)
    80003904:	01013403          	ld	s0,16(sp)
    80003908:	00813483          	ld	s1,8(sp)
    8000390c:	00013903          	ld	s2,0(sp)
    80003910:	02010113          	addi	sp,sp,32
    80003914:	00008067          	ret

0000000080003918 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003918:	fe010113          	addi	sp,sp,-32
    8000391c:	00113c23          	sd	ra,24(sp)
    80003920:	00813823          	sd	s0,16(sp)
    80003924:	00913423          	sd	s1,8(sp)
    80003928:	01213023          	sd	s2,0(sp)
    8000392c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003930:	00a00493          	li	s1,10
    80003934:	0400006f          	j	80003974 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003938:	00006517          	auipc	a0,0x6
    8000393c:	9a850513          	addi	a0,a0,-1624 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003940:	00002097          	auipc	ra,0x2
    80003944:	c08080e7          	jalr	-1016(ra) # 80005548 <_Z11printStringPKc>
    80003948:	00000613          	li	a2,0
    8000394c:	00a00593          	li	a1,10
    80003950:	00048513          	mv	a0,s1
    80003954:	00002097          	auipc	ra,0x2
    80003958:	d98080e7          	jalr	-616(ra) # 800056ec <_Z8printIntiii>
    8000395c:	00006517          	auipc	a0,0x6
    80003960:	b7450513          	addi	a0,a0,-1164 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80003964:	00002097          	auipc	ra,0x2
    80003968:	be4080e7          	jalr	-1052(ra) # 80005548 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000396c:	0014849b          	addiw	s1,s1,1
    80003970:	0ff4f493          	andi	s1,s1,255
    80003974:	00c00793          	li	a5,12
    80003978:	fc97f0e3          	bgeu	a5,s1,80003938 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    8000397c:	00006517          	auipc	a0,0x6
    80003980:	96c50513          	addi	a0,a0,-1684 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80003984:	00002097          	auipc	ra,0x2
    80003988:	bc4080e7          	jalr	-1084(ra) # 80005548 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000398c:	00500313          	li	t1,5
    thread_dispatch();
    80003990:	ffffe097          	auipc	ra,0xffffe
    80003994:	8cc080e7          	jalr	-1844(ra) # 8000125c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003998:	01000513          	li	a0,16
    8000399c:	00000097          	auipc	ra,0x0
    800039a0:	be8080e7          	jalr	-1048(ra) # 80003584 <_ZL9fibonaccim>
    800039a4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800039a8:	00006517          	auipc	a0,0x6
    800039ac:	95050513          	addi	a0,a0,-1712 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800039b0:	00002097          	auipc	ra,0x2
    800039b4:	b98080e7          	jalr	-1128(ra) # 80005548 <_Z11printStringPKc>
    800039b8:	00000613          	li	a2,0
    800039bc:	00a00593          	li	a1,10
    800039c0:	0009051b          	sext.w	a0,s2
    800039c4:	00002097          	auipc	ra,0x2
    800039c8:	d28080e7          	jalr	-728(ra) # 800056ec <_Z8printIntiii>
    800039cc:	00006517          	auipc	a0,0x6
    800039d0:	b0450513          	addi	a0,a0,-1276 # 800094d0 <CONSOLE_STATUS+0x4c0>
    800039d4:	00002097          	auipc	ra,0x2
    800039d8:	b74080e7          	jalr	-1164(ra) # 80005548 <_Z11printStringPKc>
    800039dc:	0400006f          	j	80003a1c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800039e0:	00006517          	auipc	a0,0x6
    800039e4:	90050513          	addi	a0,a0,-1792 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800039e8:	00002097          	auipc	ra,0x2
    800039ec:	b60080e7          	jalr	-1184(ra) # 80005548 <_Z11printStringPKc>
    800039f0:	00000613          	li	a2,0
    800039f4:	00a00593          	li	a1,10
    800039f8:	00048513          	mv	a0,s1
    800039fc:	00002097          	auipc	ra,0x2
    80003a00:	cf0080e7          	jalr	-784(ra) # 800056ec <_Z8printIntiii>
    80003a04:	00006517          	auipc	a0,0x6
    80003a08:	acc50513          	addi	a0,a0,-1332 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80003a0c:	00002097          	auipc	ra,0x2
    80003a10:	b3c080e7          	jalr	-1220(ra) # 80005548 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003a14:	0014849b          	addiw	s1,s1,1
    80003a18:	0ff4f493          	andi	s1,s1,255
    80003a1c:	00f00793          	li	a5,15
    80003a20:	fc97f0e3          	bgeu	a5,s1,800039e0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003a24:	00006517          	auipc	a0,0x6
    80003a28:	8e450513          	addi	a0,a0,-1820 # 80009308 <CONSOLE_STATUS+0x2f8>
    80003a2c:	00002097          	auipc	ra,0x2
    80003a30:	b1c080e7          	jalr	-1252(ra) # 80005548 <_Z11printStringPKc>
    finishedD = true;
    80003a34:	00100793          	li	a5,1
    80003a38:	00008717          	auipc	a4,0x8
    80003a3c:	f6f705a3          	sb	a5,-149(a4) # 8000b9a3 <_ZL9finishedD>
    thread_dispatch();
    80003a40:	ffffe097          	auipc	ra,0xffffe
    80003a44:	81c080e7          	jalr	-2020(ra) # 8000125c <_Z15thread_dispatchv>
}
    80003a48:	01813083          	ld	ra,24(sp)
    80003a4c:	01013403          	ld	s0,16(sp)
    80003a50:	00813483          	ld	s1,8(sp)
    80003a54:	00013903          	ld	s2,0(sp)
    80003a58:	02010113          	addi	sp,sp,32
    80003a5c:	00008067          	ret

0000000080003a60 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003a60:	fc010113          	addi	sp,sp,-64
    80003a64:	02113c23          	sd	ra,56(sp)
    80003a68:	02813823          	sd	s0,48(sp)
    80003a6c:	02913423          	sd	s1,40(sp)
    80003a70:	03213023          	sd	s2,32(sp)
    80003a74:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003a78:	02000513          	li	a0,32
    80003a7c:	ffffe097          	auipc	ra,0xffffe
    80003a80:	570080e7          	jalr	1392(ra) # 80001fec <_Znwm>
    80003a84:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003a88:	ffffe097          	auipc	ra,0xffffe
    80003a8c:	7ac080e7          	jalr	1964(ra) # 80002234 <_ZN6ThreadC1Ev>
    80003a90:	00008797          	auipc	a5,0x8
    80003a94:	c6078793          	addi	a5,a5,-928 # 8000b6f0 <_ZTV7WorkerA+0x10>
    80003a98:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003a9c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003aa0:	00006517          	auipc	a0,0x6
    80003aa4:	87850513          	addi	a0,a0,-1928 # 80009318 <CONSOLE_STATUS+0x308>
    80003aa8:	00002097          	auipc	ra,0x2
    80003aac:	aa0080e7          	jalr	-1376(ra) # 80005548 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003ab0:	02000513          	li	a0,32
    80003ab4:	ffffe097          	auipc	ra,0xffffe
    80003ab8:	538080e7          	jalr	1336(ra) # 80001fec <_Znwm>
    80003abc:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003ac0:	ffffe097          	auipc	ra,0xffffe
    80003ac4:	774080e7          	jalr	1908(ra) # 80002234 <_ZN6ThreadC1Ev>
    80003ac8:	00008797          	auipc	a5,0x8
    80003acc:	c5078793          	addi	a5,a5,-944 # 8000b718 <_ZTV7WorkerB+0x10>
    80003ad0:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003ad4:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003ad8:	00006517          	auipc	a0,0x6
    80003adc:	85850513          	addi	a0,a0,-1960 # 80009330 <CONSOLE_STATUS+0x320>
    80003ae0:	00002097          	auipc	ra,0x2
    80003ae4:	a68080e7          	jalr	-1432(ra) # 80005548 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003ae8:	02000513          	li	a0,32
    80003aec:	ffffe097          	auipc	ra,0xffffe
    80003af0:	500080e7          	jalr	1280(ra) # 80001fec <_Znwm>
    80003af4:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003af8:	ffffe097          	auipc	ra,0xffffe
    80003afc:	73c080e7          	jalr	1852(ra) # 80002234 <_ZN6ThreadC1Ev>
    80003b00:	00008797          	auipc	a5,0x8
    80003b04:	c4078793          	addi	a5,a5,-960 # 8000b740 <_ZTV7WorkerC+0x10>
    80003b08:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003b0c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003b10:	00006517          	auipc	a0,0x6
    80003b14:	83850513          	addi	a0,a0,-1992 # 80009348 <CONSOLE_STATUS+0x338>
    80003b18:	00002097          	auipc	ra,0x2
    80003b1c:	a30080e7          	jalr	-1488(ra) # 80005548 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003b20:	02000513          	li	a0,32
    80003b24:	ffffe097          	auipc	ra,0xffffe
    80003b28:	4c8080e7          	jalr	1224(ra) # 80001fec <_Znwm>
    80003b2c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003b30:	ffffe097          	auipc	ra,0xffffe
    80003b34:	704080e7          	jalr	1796(ra) # 80002234 <_ZN6ThreadC1Ev>
    80003b38:	00008797          	auipc	a5,0x8
    80003b3c:	c3078793          	addi	a5,a5,-976 # 8000b768 <_ZTV7WorkerD+0x10>
    80003b40:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003b44:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003b48:	00006517          	auipc	a0,0x6
    80003b4c:	81850513          	addi	a0,a0,-2024 # 80009360 <CONSOLE_STATUS+0x350>
    80003b50:	00002097          	auipc	ra,0x2
    80003b54:	9f8080e7          	jalr	-1544(ra) # 80005548 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003b58:	00000493          	li	s1,0
    80003b5c:	00300793          	li	a5,3
    80003b60:	0297c663          	blt	a5,s1,80003b8c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003b64:	00349793          	slli	a5,s1,0x3
    80003b68:	fe040713          	addi	a4,s0,-32
    80003b6c:	00f707b3          	add	a5,a4,a5
    80003b70:	fe07b503          	ld	a0,-32(a5)
    80003b74:	ffffe097          	auipc	ra,0xffffe
    80003b78:	61c080e7          	jalr	1564(ra) # 80002190 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003b7c:	0014849b          	addiw	s1,s1,1
    80003b80:	fddff06f          	j	80003b5c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003b84:	ffffe097          	auipc	ra,0xffffe
    80003b88:	660080e7          	jalr	1632(ra) # 800021e4 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003b8c:	00008797          	auipc	a5,0x8
    80003b90:	e147c783          	lbu	a5,-492(a5) # 8000b9a0 <_ZL9finishedA>
    80003b94:	fe0788e3          	beqz	a5,80003b84 <_Z20Threads_CPP_API_testv+0x124>
    80003b98:	00008797          	auipc	a5,0x8
    80003b9c:	e097c783          	lbu	a5,-503(a5) # 8000b9a1 <_ZL9finishedB>
    80003ba0:	fe0782e3          	beqz	a5,80003b84 <_Z20Threads_CPP_API_testv+0x124>
    80003ba4:	00008797          	auipc	a5,0x8
    80003ba8:	dfe7c783          	lbu	a5,-514(a5) # 8000b9a2 <_ZL9finishedC>
    80003bac:	fc078ce3          	beqz	a5,80003b84 <_Z20Threads_CPP_API_testv+0x124>
    80003bb0:	00008797          	auipc	a5,0x8
    80003bb4:	df37c783          	lbu	a5,-525(a5) # 8000b9a3 <_ZL9finishedD>
    80003bb8:	fc0786e3          	beqz	a5,80003b84 <_Z20Threads_CPP_API_testv+0x124>
    80003bbc:	fc040493          	addi	s1,s0,-64
    80003bc0:	0080006f          	j	80003bc8 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003bc4:	00848493          	addi	s1,s1,8
    80003bc8:	fe040793          	addi	a5,s0,-32
    80003bcc:	08f48663          	beq	s1,a5,80003c58 <_Z20Threads_CPP_API_testv+0x1f8>
    80003bd0:	0004b503          	ld	a0,0(s1)
    80003bd4:	fe0508e3          	beqz	a0,80003bc4 <_Z20Threads_CPP_API_testv+0x164>
    80003bd8:	00053783          	ld	a5,0(a0)
    80003bdc:	0087b783          	ld	a5,8(a5)
    80003be0:	000780e7          	jalr	a5
    80003be4:	fe1ff06f          	j	80003bc4 <_Z20Threads_CPP_API_testv+0x164>
    80003be8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003bec:	00048513          	mv	a0,s1
    80003bf0:	ffffe097          	auipc	ra,0xffffe
    80003bf4:	44c080e7          	jalr	1100(ra) # 8000203c <_ZdlPv>
    80003bf8:	00090513          	mv	a0,s2
    80003bfc:	00009097          	auipc	ra,0x9
    80003c00:	ebc080e7          	jalr	-324(ra) # 8000cab8 <_Unwind_Resume>
    80003c04:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003c08:	00048513          	mv	a0,s1
    80003c0c:	ffffe097          	auipc	ra,0xffffe
    80003c10:	430080e7          	jalr	1072(ra) # 8000203c <_ZdlPv>
    80003c14:	00090513          	mv	a0,s2
    80003c18:	00009097          	auipc	ra,0x9
    80003c1c:	ea0080e7          	jalr	-352(ra) # 8000cab8 <_Unwind_Resume>
    80003c20:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003c24:	00048513          	mv	a0,s1
    80003c28:	ffffe097          	auipc	ra,0xffffe
    80003c2c:	414080e7          	jalr	1044(ra) # 8000203c <_ZdlPv>
    80003c30:	00090513          	mv	a0,s2
    80003c34:	00009097          	auipc	ra,0x9
    80003c38:	e84080e7          	jalr	-380(ra) # 8000cab8 <_Unwind_Resume>
    80003c3c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003c40:	00048513          	mv	a0,s1
    80003c44:	ffffe097          	auipc	ra,0xffffe
    80003c48:	3f8080e7          	jalr	1016(ra) # 8000203c <_ZdlPv>
    80003c4c:	00090513          	mv	a0,s2
    80003c50:	00009097          	auipc	ra,0x9
    80003c54:	e68080e7          	jalr	-408(ra) # 8000cab8 <_Unwind_Resume>
}
    80003c58:	03813083          	ld	ra,56(sp)
    80003c5c:	03013403          	ld	s0,48(sp)
    80003c60:	02813483          	ld	s1,40(sp)
    80003c64:	02013903          	ld	s2,32(sp)
    80003c68:	04010113          	addi	sp,sp,64
    80003c6c:	00008067          	ret

0000000080003c70 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003c70:	ff010113          	addi	sp,sp,-16
    80003c74:	00113423          	sd	ra,8(sp)
    80003c78:	00813023          	sd	s0,0(sp)
    80003c7c:	01010413          	addi	s0,sp,16
    80003c80:	00008797          	auipc	a5,0x8
    80003c84:	a7078793          	addi	a5,a5,-1424 # 8000b6f0 <_ZTV7WorkerA+0x10>
    80003c88:	00f53023          	sd	a5,0(a0)
    80003c8c:	ffffe097          	auipc	ra,0xffffe
    80003c90:	3d8080e7          	jalr	984(ra) # 80002064 <_ZN6ThreadD1Ev>
    80003c94:	00813083          	ld	ra,8(sp)
    80003c98:	00013403          	ld	s0,0(sp)
    80003c9c:	01010113          	addi	sp,sp,16
    80003ca0:	00008067          	ret

0000000080003ca4 <_ZN7WorkerAD0Ev>:
    80003ca4:	fe010113          	addi	sp,sp,-32
    80003ca8:	00113c23          	sd	ra,24(sp)
    80003cac:	00813823          	sd	s0,16(sp)
    80003cb0:	00913423          	sd	s1,8(sp)
    80003cb4:	02010413          	addi	s0,sp,32
    80003cb8:	00050493          	mv	s1,a0
    80003cbc:	00008797          	auipc	a5,0x8
    80003cc0:	a3478793          	addi	a5,a5,-1484 # 8000b6f0 <_ZTV7WorkerA+0x10>
    80003cc4:	00f53023          	sd	a5,0(a0)
    80003cc8:	ffffe097          	auipc	ra,0xffffe
    80003ccc:	39c080e7          	jalr	924(ra) # 80002064 <_ZN6ThreadD1Ev>
    80003cd0:	00048513          	mv	a0,s1
    80003cd4:	ffffe097          	auipc	ra,0xffffe
    80003cd8:	368080e7          	jalr	872(ra) # 8000203c <_ZdlPv>
    80003cdc:	01813083          	ld	ra,24(sp)
    80003ce0:	01013403          	ld	s0,16(sp)
    80003ce4:	00813483          	ld	s1,8(sp)
    80003ce8:	02010113          	addi	sp,sp,32
    80003cec:	00008067          	ret

0000000080003cf0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003cf0:	ff010113          	addi	sp,sp,-16
    80003cf4:	00113423          	sd	ra,8(sp)
    80003cf8:	00813023          	sd	s0,0(sp)
    80003cfc:	01010413          	addi	s0,sp,16
    80003d00:	00008797          	auipc	a5,0x8
    80003d04:	a1878793          	addi	a5,a5,-1512 # 8000b718 <_ZTV7WorkerB+0x10>
    80003d08:	00f53023          	sd	a5,0(a0)
    80003d0c:	ffffe097          	auipc	ra,0xffffe
    80003d10:	358080e7          	jalr	856(ra) # 80002064 <_ZN6ThreadD1Ev>
    80003d14:	00813083          	ld	ra,8(sp)
    80003d18:	00013403          	ld	s0,0(sp)
    80003d1c:	01010113          	addi	sp,sp,16
    80003d20:	00008067          	ret

0000000080003d24 <_ZN7WorkerBD0Ev>:
    80003d24:	fe010113          	addi	sp,sp,-32
    80003d28:	00113c23          	sd	ra,24(sp)
    80003d2c:	00813823          	sd	s0,16(sp)
    80003d30:	00913423          	sd	s1,8(sp)
    80003d34:	02010413          	addi	s0,sp,32
    80003d38:	00050493          	mv	s1,a0
    80003d3c:	00008797          	auipc	a5,0x8
    80003d40:	9dc78793          	addi	a5,a5,-1572 # 8000b718 <_ZTV7WorkerB+0x10>
    80003d44:	00f53023          	sd	a5,0(a0)
    80003d48:	ffffe097          	auipc	ra,0xffffe
    80003d4c:	31c080e7          	jalr	796(ra) # 80002064 <_ZN6ThreadD1Ev>
    80003d50:	00048513          	mv	a0,s1
    80003d54:	ffffe097          	auipc	ra,0xffffe
    80003d58:	2e8080e7          	jalr	744(ra) # 8000203c <_ZdlPv>
    80003d5c:	01813083          	ld	ra,24(sp)
    80003d60:	01013403          	ld	s0,16(sp)
    80003d64:	00813483          	ld	s1,8(sp)
    80003d68:	02010113          	addi	sp,sp,32
    80003d6c:	00008067          	ret

0000000080003d70 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003d70:	ff010113          	addi	sp,sp,-16
    80003d74:	00113423          	sd	ra,8(sp)
    80003d78:	00813023          	sd	s0,0(sp)
    80003d7c:	01010413          	addi	s0,sp,16
    80003d80:	00008797          	auipc	a5,0x8
    80003d84:	9c078793          	addi	a5,a5,-1600 # 8000b740 <_ZTV7WorkerC+0x10>
    80003d88:	00f53023          	sd	a5,0(a0)
    80003d8c:	ffffe097          	auipc	ra,0xffffe
    80003d90:	2d8080e7          	jalr	728(ra) # 80002064 <_ZN6ThreadD1Ev>
    80003d94:	00813083          	ld	ra,8(sp)
    80003d98:	00013403          	ld	s0,0(sp)
    80003d9c:	01010113          	addi	sp,sp,16
    80003da0:	00008067          	ret

0000000080003da4 <_ZN7WorkerCD0Ev>:
    80003da4:	fe010113          	addi	sp,sp,-32
    80003da8:	00113c23          	sd	ra,24(sp)
    80003dac:	00813823          	sd	s0,16(sp)
    80003db0:	00913423          	sd	s1,8(sp)
    80003db4:	02010413          	addi	s0,sp,32
    80003db8:	00050493          	mv	s1,a0
    80003dbc:	00008797          	auipc	a5,0x8
    80003dc0:	98478793          	addi	a5,a5,-1660 # 8000b740 <_ZTV7WorkerC+0x10>
    80003dc4:	00f53023          	sd	a5,0(a0)
    80003dc8:	ffffe097          	auipc	ra,0xffffe
    80003dcc:	29c080e7          	jalr	668(ra) # 80002064 <_ZN6ThreadD1Ev>
    80003dd0:	00048513          	mv	a0,s1
    80003dd4:	ffffe097          	auipc	ra,0xffffe
    80003dd8:	268080e7          	jalr	616(ra) # 8000203c <_ZdlPv>
    80003ddc:	01813083          	ld	ra,24(sp)
    80003de0:	01013403          	ld	s0,16(sp)
    80003de4:	00813483          	ld	s1,8(sp)
    80003de8:	02010113          	addi	sp,sp,32
    80003dec:	00008067          	ret

0000000080003df0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003df0:	ff010113          	addi	sp,sp,-16
    80003df4:	00113423          	sd	ra,8(sp)
    80003df8:	00813023          	sd	s0,0(sp)
    80003dfc:	01010413          	addi	s0,sp,16
    80003e00:	00008797          	auipc	a5,0x8
    80003e04:	96878793          	addi	a5,a5,-1688 # 8000b768 <_ZTV7WorkerD+0x10>
    80003e08:	00f53023          	sd	a5,0(a0)
    80003e0c:	ffffe097          	auipc	ra,0xffffe
    80003e10:	258080e7          	jalr	600(ra) # 80002064 <_ZN6ThreadD1Ev>
    80003e14:	00813083          	ld	ra,8(sp)
    80003e18:	00013403          	ld	s0,0(sp)
    80003e1c:	01010113          	addi	sp,sp,16
    80003e20:	00008067          	ret

0000000080003e24 <_ZN7WorkerDD0Ev>:
    80003e24:	fe010113          	addi	sp,sp,-32
    80003e28:	00113c23          	sd	ra,24(sp)
    80003e2c:	00813823          	sd	s0,16(sp)
    80003e30:	00913423          	sd	s1,8(sp)
    80003e34:	02010413          	addi	s0,sp,32
    80003e38:	00050493          	mv	s1,a0
    80003e3c:	00008797          	auipc	a5,0x8
    80003e40:	92c78793          	addi	a5,a5,-1748 # 8000b768 <_ZTV7WorkerD+0x10>
    80003e44:	00f53023          	sd	a5,0(a0)
    80003e48:	ffffe097          	auipc	ra,0xffffe
    80003e4c:	21c080e7          	jalr	540(ra) # 80002064 <_ZN6ThreadD1Ev>
    80003e50:	00048513          	mv	a0,s1
    80003e54:	ffffe097          	auipc	ra,0xffffe
    80003e58:	1e8080e7          	jalr	488(ra) # 8000203c <_ZdlPv>
    80003e5c:	01813083          	ld	ra,24(sp)
    80003e60:	01013403          	ld	s0,16(sp)
    80003e64:	00813483          	ld	s1,8(sp)
    80003e68:	02010113          	addi	sp,sp,32
    80003e6c:	00008067          	ret

0000000080003e70 <_ZN7WorkerA3runEv>:
    void run() override {
    80003e70:	ff010113          	addi	sp,sp,-16
    80003e74:	00113423          	sd	ra,8(sp)
    80003e78:	00813023          	sd	s0,0(sp)
    80003e7c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003e80:	00000593          	li	a1,0
    80003e84:	fffff097          	auipc	ra,0xfffff
    80003e88:	774080e7          	jalr	1908(ra) # 800035f8 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003e8c:	00813083          	ld	ra,8(sp)
    80003e90:	00013403          	ld	s0,0(sp)
    80003e94:	01010113          	addi	sp,sp,16
    80003e98:	00008067          	ret

0000000080003e9c <_ZN7WorkerB3runEv>:
    void run() override {
    80003e9c:	ff010113          	addi	sp,sp,-16
    80003ea0:	00113423          	sd	ra,8(sp)
    80003ea4:	00813023          	sd	s0,0(sp)
    80003ea8:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003eac:	00000593          	li	a1,0
    80003eb0:	00000097          	auipc	ra,0x0
    80003eb4:	814080e7          	jalr	-2028(ra) # 800036c4 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003eb8:	00813083          	ld	ra,8(sp)
    80003ebc:	00013403          	ld	s0,0(sp)
    80003ec0:	01010113          	addi	sp,sp,16
    80003ec4:	00008067          	ret

0000000080003ec8 <_ZN7WorkerC3runEv>:
    void run() override {
    80003ec8:	ff010113          	addi	sp,sp,-16
    80003ecc:	00113423          	sd	ra,8(sp)
    80003ed0:	00813023          	sd	s0,0(sp)
    80003ed4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003ed8:	00000593          	li	a1,0
    80003edc:	00000097          	auipc	ra,0x0
    80003ee0:	8bc080e7          	jalr	-1860(ra) # 80003798 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003ee4:	00813083          	ld	ra,8(sp)
    80003ee8:	00013403          	ld	s0,0(sp)
    80003eec:	01010113          	addi	sp,sp,16
    80003ef0:	00008067          	ret

0000000080003ef4 <_ZN7WorkerD3runEv>:
    void run() override {
    80003ef4:	ff010113          	addi	sp,sp,-16
    80003ef8:	00113423          	sd	ra,8(sp)
    80003efc:	00813023          	sd	s0,0(sp)
    80003f00:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003f04:	00000593          	li	a1,0
    80003f08:	00000097          	auipc	ra,0x0
    80003f0c:	a10080e7          	jalr	-1520(ra) # 80003918 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003f10:	00813083          	ld	ra,8(sp)
    80003f14:	00013403          	ld	s0,0(sp)
    80003f18:	01010113          	addi	sp,sp,16
    80003f1c:	00008067          	ret

0000000080003f20 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003f20:	f8010113          	addi	sp,sp,-128
    80003f24:	06113c23          	sd	ra,120(sp)
    80003f28:	06813823          	sd	s0,112(sp)
    80003f2c:	06913423          	sd	s1,104(sp)
    80003f30:	07213023          	sd	s2,96(sp)
    80003f34:	05313c23          	sd	s3,88(sp)
    80003f38:	05413823          	sd	s4,80(sp)
    80003f3c:	05513423          	sd	s5,72(sp)
    80003f40:	05613023          	sd	s6,64(sp)
    80003f44:	03713c23          	sd	s7,56(sp)
    80003f48:	03813823          	sd	s8,48(sp)
    80003f4c:	03913423          	sd	s9,40(sp)
    80003f50:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003f54:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003f58:	00005517          	auipc	a0,0x5
    80003f5c:	24050513          	addi	a0,a0,576 # 80009198 <CONSOLE_STATUS+0x188>
    80003f60:	00001097          	auipc	ra,0x1
    80003f64:	5e8080e7          	jalr	1512(ra) # 80005548 <_Z11printStringPKc>
    getString(input, 30);
    80003f68:	01e00593          	li	a1,30
    80003f6c:	f8040493          	addi	s1,s0,-128
    80003f70:	00048513          	mv	a0,s1
    80003f74:	00001097          	auipc	ra,0x1
    80003f78:	65c080e7          	jalr	1628(ra) # 800055d0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003f7c:	00048513          	mv	a0,s1
    80003f80:	00001097          	auipc	ra,0x1
    80003f84:	71c080e7          	jalr	1820(ra) # 8000569c <_Z11stringToIntPKc>
    80003f88:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003f8c:	00005517          	auipc	a0,0x5
    80003f90:	22c50513          	addi	a0,a0,556 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80003f94:	00001097          	auipc	ra,0x1
    80003f98:	5b4080e7          	jalr	1460(ra) # 80005548 <_Z11printStringPKc>
    getString(input, 30);
    80003f9c:	01e00593          	li	a1,30
    80003fa0:	00048513          	mv	a0,s1
    80003fa4:	00001097          	auipc	ra,0x1
    80003fa8:	62c080e7          	jalr	1580(ra) # 800055d0 <_Z9getStringPci>
    n = stringToInt(input);
    80003fac:	00048513          	mv	a0,s1
    80003fb0:	00001097          	auipc	ra,0x1
    80003fb4:	6ec080e7          	jalr	1772(ra) # 8000569c <_Z11stringToIntPKc>
    80003fb8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003fbc:	00005517          	auipc	a0,0x5
    80003fc0:	21c50513          	addi	a0,a0,540 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80003fc4:	00001097          	auipc	ra,0x1
    80003fc8:	584080e7          	jalr	1412(ra) # 80005548 <_Z11printStringPKc>
    printInt(threadNum);
    80003fcc:	00000613          	li	a2,0
    80003fd0:	00a00593          	li	a1,10
    80003fd4:	00098513          	mv	a0,s3
    80003fd8:	00001097          	auipc	ra,0x1
    80003fdc:	714080e7          	jalr	1812(ra) # 800056ec <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003fe0:	00005517          	auipc	a0,0x5
    80003fe4:	21050513          	addi	a0,a0,528 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80003fe8:	00001097          	auipc	ra,0x1
    80003fec:	560080e7          	jalr	1376(ra) # 80005548 <_Z11printStringPKc>
    printInt(n);
    80003ff0:	00000613          	li	a2,0
    80003ff4:	00a00593          	li	a1,10
    80003ff8:	00048513          	mv	a0,s1
    80003ffc:	00001097          	auipc	ra,0x1
    80004000:	6f0080e7          	jalr	1776(ra) # 800056ec <_Z8printIntiii>
    printString(".\n");
    80004004:	00005517          	auipc	a0,0x5
    80004008:	20450513          	addi	a0,a0,516 # 80009208 <CONSOLE_STATUS+0x1f8>
    8000400c:	00001097          	auipc	ra,0x1
    80004010:	53c080e7          	jalr	1340(ra) # 80005548 <_Z11printStringPKc>
    if (threadNum > n) {
    80004014:	0334c463          	blt	s1,s3,8000403c <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004018:	03305c63          	blez	s3,80004050 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000401c:	03800513          	li	a0,56
    80004020:	ffffe097          	auipc	ra,0xffffe
    80004024:	fcc080e7          	jalr	-52(ra) # 80001fec <_Znwm>
    80004028:	00050a93          	mv	s5,a0
    8000402c:	00048593          	mv	a1,s1
    80004030:	00002097          	auipc	ra,0x2
    80004034:	8b8080e7          	jalr	-1864(ra) # 800058e8 <_ZN9BufferCPPC1Ei>
    80004038:	0300006f          	j	80004068 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000403c:	00005517          	auipc	a0,0x5
    80004040:	1d450513          	addi	a0,a0,468 # 80009210 <CONSOLE_STATUS+0x200>
    80004044:	00001097          	auipc	ra,0x1
    80004048:	504080e7          	jalr	1284(ra) # 80005548 <_Z11printStringPKc>
        return;
    8000404c:	0140006f          	j	80004060 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004050:	00005517          	auipc	a0,0x5
    80004054:	20050513          	addi	a0,a0,512 # 80009250 <CONSOLE_STATUS+0x240>
    80004058:	00001097          	auipc	ra,0x1
    8000405c:	4f0080e7          	jalr	1264(ra) # 80005548 <_Z11printStringPKc>
        return;
    80004060:	000c0113          	mv	sp,s8
    80004064:	2140006f          	j	80004278 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004068:	01000513          	li	a0,16
    8000406c:	ffffe097          	auipc	ra,0xffffe
    80004070:	f80080e7          	jalr	-128(ra) # 80001fec <_Znwm>
    80004074:	00050913          	mv	s2,a0
    80004078:	00000593          	li	a1,0
    8000407c:	ffffe097          	auipc	ra,0xffffe
    80004080:	1e4080e7          	jalr	484(ra) # 80002260 <_ZN9SemaphoreC1Ej>
    80004084:	00008797          	auipc	a5,0x8
    80004088:	9327b623          	sd	s2,-1748(a5) # 8000b9b0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    8000408c:	00399793          	slli	a5,s3,0x3
    80004090:	00f78793          	addi	a5,a5,15
    80004094:	ff07f793          	andi	a5,a5,-16
    80004098:	40f10133          	sub	sp,sp,a5
    8000409c:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800040a0:	0019871b          	addiw	a4,s3,1
    800040a4:	00171793          	slli	a5,a4,0x1
    800040a8:	00e787b3          	add	a5,a5,a4
    800040ac:	00379793          	slli	a5,a5,0x3
    800040b0:	00f78793          	addi	a5,a5,15
    800040b4:	ff07f793          	andi	a5,a5,-16
    800040b8:	40f10133          	sub	sp,sp,a5
    800040bc:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800040c0:	00199493          	slli	s1,s3,0x1
    800040c4:	013484b3          	add	s1,s1,s3
    800040c8:	00349493          	slli	s1,s1,0x3
    800040cc:	009b04b3          	add	s1,s6,s1
    800040d0:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800040d4:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800040d8:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800040dc:	02800513          	li	a0,40
    800040e0:	ffffe097          	auipc	ra,0xffffe
    800040e4:	f0c080e7          	jalr	-244(ra) # 80001fec <_Znwm>
    800040e8:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800040ec:	ffffe097          	auipc	ra,0xffffe
    800040f0:	148080e7          	jalr	328(ra) # 80002234 <_ZN6ThreadC1Ev>
    800040f4:	00007797          	auipc	a5,0x7
    800040f8:	6ec78793          	addi	a5,a5,1772 # 8000b7e0 <_ZTV8Consumer+0x10>
    800040fc:	00fbb023          	sd	a5,0(s7)
    80004100:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004104:	000b8513          	mv	a0,s7
    80004108:	ffffe097          	auipc	ra,0xffffe
    8000410c:	088080e7          	jalr	136(ra) # 80002190 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004110:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004114:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004118:	00008797          	auipc	a5,0x8
    8000411c:	8987b783          	ld	a5,-1896(a5) # 8000b9b0 <_ZL10waitForAll>
    80004120:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004124:	02800513          	li	a0,40
    80004128:	ffffe097          	auipc	ra,0xffffe
    8000412c:	ec4080e7          	jalr	-316(ra) # 80001fec <_Znwm>
    80004130:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004134:	ffffe097          	auipc	ra,0xffffe
    80004138:	100080e7          	jalr	256(ra) # 80002234 <_ZN6ThreadC1Ev>
    8000413c:	00007797          	auipc	a5,0x7
    80004140:	65478793          	addi	a5,a5,1620 # 8000b790 <_ZTV16ProducerKeyborad+0x10>
    80004144:	00f4b023          	sd	a5,0(s1)
    80004148:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000414c:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004150:	00048513          	mv	a0,s1
    80004154:	ffffe097          	auipc	ra,0xffffe
    80004158:	03c080e7          	jalr	60(ra) # 80002190 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000415c:	00100913          	li	s2,1
    80004160:	0300006f          	j	80004190 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004164:	00007797          	auipc	a5,0x7
    80004168:	65478793          	addi	a5,a5,1620 # 8000b7b8 <_ZTV8Producer+0x10>
    8000416c:	00fcb023          	sd	a5,0(s9)
    80004170:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004174:	00391793          	slli	a5,s2,0x3
    80004178:	00fa07b3          	add	a5,s4,a5
    8000417c:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004180:	000c8513          	mv	a0,s9
    80004184:	ffffe097          	auipc	ra,0xffffe
    80004188:	00c080e7          	jalr	12(ra) # 80002190 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000418c:	0019091b          	addiw	s2,s2,1
    80004190:	05395263          	bge	s2,s3,800041d4 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004194:	00191493          	slli	s1,s2,0x1
    80004198:	012484b3          	add	s1,s1,s2
    8000419c:	00349493          	slli	s1,s1,0x3
    800041a0:	009b04b3          	add	s1,s6,s1
    800041a4:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800041a8:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800041ac:	00008797          	auipc	a5,0x8
    800041b0:	8047b783          	ld	a5,-2044(a5) # 8000b9b0 <_ZL10waitForAll>
    800041b4:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800041b8:	02800513          	li	a0,40
    800041bc:	ffffe097          	auipc	ra,0xffffe
    800041c0:	e30080e7          	jalr	-464(ra) # 80001fec <_Znwm>
    800041c4:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800041c8:	ffffe097          	auipc	ra,0xffffe
    800041cc:	06c080e7          	jalr	108(ra) # 80002234 <_ZN6ThreadC1Ev>
    800041d0:	f95ff06f          	j	80004164 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800041d4:	ffffe097          	auipc	ra,0xffffe
    800041d8:	010080e7          	jalr	16(ra) # 800021e4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800041dc:	00000493          	li	s1,0
    800041e0:	0099ce63          	blt	s3,s1,800041fc <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    800041e4:	00007517          	auipc	a0,0x7
    800041e8:	7cc53503          	ld	a0,1996(a0) # 8000b9b0 <_ZL10waitForAll>
    800041ec:	ffffe097          	auipc	ra,0xffffe
    800041f0:	0ac080e7          	jalr	172(ra) # 80002298 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800041f4:	0014849b          	addiw	s1,s1,1
    800041f8:	fe9ff06f          	j	800041e0 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800041fc:	00007517          	auipc	a0,0x7
    80004200:	7b453503          	ld	a0,1972(a0) # 8000b9b0 <_ZL10waitForAll>
    80004204:	00050863          	beqz	a0,80004214 <_Z20testConsumerProducerv+0x2f4>
    80004208:	00053783          	ld	a5,0(a0)
    8000420c:	0087b783          	ld	a5,8(a5)
    80004210:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004214:	00000493          	li	s1,0
    80004218:	0080006f          	j	80004220 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    8000421c:	0014849b          	addiw	s1,s1,1
    80004220:	0334d263          	bge	s1,s3,80004244 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004224:	00349793          	slli	a5,s1,0x3
    80004228:	00fa07b3          	add	a5,s4,a5
    8000422c:	0007b503          	ld	a0,0(a5)
    80004230:	fe0506e3          	beqz	a0,8000421c <_Z20testConsumerProducerv+0x2fc>
    80004234:	00053783          	ld	a5,0(a0)
    80004238:	0087b783          	ld	a5,8(a5)
    8000423c:	000780e7          	jalr	a5
    80004240:	fddff06f          	j	8000421c <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004244:	000b8a63          	beqz	s7,80004258 <_Z20testConsumerProducerv+0x338>
    80004248:	000bb783          	ld	a5,0(s7)
    8000424c:	0087b783          	ld	a5,8(a5)
    80004250:	000b8513          	mv	a0,s7
    80004254:	000780e7          	jalr	a5
    delete buffer;
    80004258:	000a8e63          	beqz	s5,80004274 <_Z20testConsumerProducerv+0x354>
    8000425c:	000a8513          	mv	a0,s5
    80004260:	00002097          	auipc	ra,0x2
    80004264:	980080e7          	jalr	-1664(ra) # 80005be0 <_ZN9BufferCPPD1Ev>
    80004268:	000a8513          	mv	a0,s5
    8000426c:	ffffe097          	auipc	ra,0xffffe
    80004270:	dd0080e7          	jalr	-560(ra) # 8000203c <_ZdlPv>
    80004274:	000c0113          	mv	sp,s8
}
    80004278:	f8040113          	addi	sp,s0,-128
    8000427c:	07813083          	ld	ra,120(sp)
    80004280:	07013403          	ld	s0,112(sp)
    80004284:	06813483          	ld	s1,104(sp)
    80004288:	06013903          	ld	s2,96(sp)
    8000428c:	05813983          	ld	s3,88(sp)
    80004290:	05013a03          	ld	s4,80(sp)
    80004294:	04813a83          	ld	s5,72(sp)
    80004298:	04013b03          	ld	s6,64(sp)
    8000429c:	03813b83          	ld	s7,56(sp)
    800042a0:	03013c03          	ld	s8,48(sp)
    800042a4:	02813c83          	ld	s9,40(sp)
    800042a8:	08010113          	addi	sp,sp,128
    800042ac:	00008067          	ret
    800042b0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800042b4:	000a8513          	mv	a0,s5
    800042b8:	ffffe097          	auipc	ra,0xffffe
    800042bc:	d84080e7          	jalr	-636(ra) # 8000203c <_ZdlPv>
    800042c0:	00048513          	mv	a0,s1
    800042c4:	00008097          	auipc	ra,0x8
    800042c8:	7f4080e7          	jalr	2036(ra) # 8000cab8 <_Unwind_Resume>
    800042cc:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800042d0:	00090513          	mv	a0,s2
    800042d4:	ffffe097          	auipc	ra,0xffffe
    800042d8:	d68080e7          	jalr	-664(ra) # 8000203c <_ZdlPv>
    800042dc:	00048513          	mv	a0,s1
    800042e0:	00008097          	auipc	ra,0x8
    800042e4:	7d8080e7          	jalr	2008(ra) # 8000cab8 <_Unwind_Resume>
    800042e8:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800042ec:	000b8513          	mv	a0,s7
    800042f0:	ffffe097          	auipc	ra,0xffffe
    800042f4:	d4c080e7          	jalr	-692(ra) # 8000203c <_ZdlPv>
    800042f8:	00048513          	mv	a0,s1
    800042fc:	00008097          	auipc	ra,0x8
    80004300:	7bc080e7          	jalr	1980(ra) # 8000cab8 <_Unwind_Resume>
    80004304:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004308:	00048513          	mv	a0,s1
    8000430c:	ffffe097          	auipc	ra,0xffffe
    80004310:	d30080e7          	jalr	-720(ra) # 8000203c <_ZdlPv>
    80004314:	00090513          	mv	a0,s2
    80004318:	00008097          	auipc	ra,0x8
    8000431c:	7a0080e7          	jalr	1952(ra) # 8000cab8 <_Unwind_Resume>
    80004320:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004324:	000c8513          	mv	a0,s9
    80004328:	ffffe097          	auipc	ra,0xffffe
    8000432c:	d14080e7          	jalr	-748(ra) # 8000203c <_ZdlPv>
    80004330:	00048513          	mv	a0,s1
    80004334:	00008097          	auipc	ra,0x8
    80004338:	784080e7          	jalr	1924(ra) # 8000cab8 <_Unwind_Resume>

000000008000433c <_ZN8Consumer3runEv>:
    void run() override {
    8000433c:	fd010113          	addi	sp,sp,-48
    80004340:	02113423          	sd	ra,40(sp)
    80004344:	02813023          	sd	s0,32(sp)
    80004348:	00913c23          	sd	s1,24(sp)
    8000434c:	01213823          	sd	s2,16(sp)
    80004350:	01313423          	sd	s3,8(sp)
    80004354:	03010413          	addi	s0,sp,48
    80004358:	00050913          	mv	s2,a0
        int i = 0;
    8000435c:	00000993          	li	s3,0
    80004360:	0100006f          	j	80004370 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004364:	00a00513          	li	a0,10
    80004368:	ffffe097          	auipc	ra,0xffffe
    8000436c:	080080e7          	jalr	128(ra) # 800023e8 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004370:	00007797          	auipc	a5,0x7
    80004374:	6387a783          	lw	a5,1592(a5) # 8000b9a8 <_ZL9threadEnd>
    80004378:	04079a63          	bnez	a5,800043cc <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    8000437c:	02093783          	ld	a5,32(s2)
    80004380:	0087b503          	ld	a0,8(a5)
    80004384:	00001097          	auipc	ra,0x1
    80004388:	748080e7          	jalr	1864(ra) # 80005acc <_ZN9BufferCPP3getEv>
            i++;
    8000438c:	0019849b          	addiw	s1,s3,1
    80004390:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004394:	0ff57513          	andi	a0,a0,255
    80004398:	ffffe097          	auipc	ra,0xffffe
    8000439c:	050080e7          	jalr	80(ra) # 800023e8 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800043a0:	05000793          	li	a5,80
    800043a4:	02f4e4bb          	remw	s1,s1,a5
    800043a8:	fc0494e3          	bnez	s1,80004370 <_ZN8Consumer3runEv+0x34>
    800043ac:	fb9ff06f          	j	80004364 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800043b0:	02093783          	ld	a5,32(s2)
    800043b4:	0087b503          	ld	a0,8(a5)
    800043b8:	00001097          	auipc	ra,0x1
    800043bc:	714080e7          	jalr	1812(ra) # 80005acc <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800043c0:	0ff57513          	andi	a0,a0,255
    800043c4:	ffffe097          	auipc	ra,0xffffe
    800043c8:	024080e7          	jalr	36(ra) # 800023e8 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800043cc:	02093783          	ld	a5,32(s2)
    800043d0:	0087b503          	ld	a0,8(a5)
    800043d4:	00001097          	auipc	ra,0x1
    800043d8:	784080e7          	jalr	1924(ra) # 80005b58 <_ZN9BufferCPP6getCntEv>
    800043dc:	fca04ae3          	bgtz	a0,800043b0 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800043e0:	02093783          	ld	a5,32(s2)
    800043e4:	0107b503          	ld	a0,16(a5)
    800043e8:	ffffe097          	auipc	ra,0xffffe
    800043ec:	edc080e7          	jalr	-292(ra) # 800022c4 <_ZN9Semaphore6signalEv>
    }
    800043f0:	02813083          	ld	ra,40(sp)
    800043f4:	02013403          	ld	s0,32(sp)
    800043f8:	01813483          	ld	s1,24(sp)
    800043fc:	01013903          	ld	s2,16(sp)
    80004400:	00813983          	ld	s3,8(sp)
    80004404:	03010113          	addi	sp,sp,48
    80004408:	00008067          	ret

000000008000440c <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    8000440c:	ff010113          	addi	sp,sp,-16
    80004410:	00113423          	sd	ra,8(sp)
    80004414:	00813023          	sd	s0,0(sp)
    80004418:	01010413          	addi	s0,sp,16
    8000441c:	00007797          	auipc	a5,0x7
    80004420:	3c478793          	addi	a5,a5,964 # 8000b7e0 <_ZTV8Consumer+0x10>
    80004424:	00f53023          	sd	a5,0(a0)
    80004428:	ffffe097          	auipc	ra,0xffffe
    8000442c:	c3c080e7          	jalr	-964(ra) # 80002064 <_ZN6ThreadD1Ev>
    80004430:	00813083          	ld	ra,8(sp)
    80004434:	00013403          	ld	s0,0(sp)
    80004438:	01010113          	addi	sp,sp,16
    8000443c:	00008067          	ret

0000000080004440 <_ZN8ConsumerD0Ev>:
    80004440:	fe010113          	addi	sp,sp,-32
    80004444:	00113c23          	sd	ra,24(sp)
    80004448:	00813823          	sd	s0,16(sp)
    8000444c:	00913423          	sd	s1,8(sp)
    80004450:	02010413          	addi	s0,sp,32
    80004454:	00050493          	mv	s1,a0
    80004458:	00007797          	auipc	a5,0x7
    8000445c:	38878793          	addi	a5,a5,904 # 8000b7e0 <_ZTV8Consumer+0x10>
    80004460:	00f53023          	sd	a5,0(a0)
    80004464:	ffffe097          	auipc	ra,0xffffe
    80004468:	c00080e7          	jalr	-1024(ra) # 80002064 <_ZN6ThreadD1Ev>
    8000446c:	00048513          	mv	a0,s1
    80004470:	ffffe097          	auipc	ra,0xffffe
    80004474:	bcc080e7          	jalr	-1076(ra) # 8000203c <_ZdlPv>
    80004478:	01813083          	ld	ra,24(sp)
    8000447c:	01013403          	ld	s0,16(sp)
    80004480:	00813483          	ld	s1,8(sp)
    80004484:	02010113          	addi	sp,sp,32
    80004488:	00008067          	ret

000000008000448c <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    8000448c:	ff010113          	addi	sp,sp,-16
    80004490:	00113423          	sd	ra,8(sp)
    80004494:	00813023          	sd	s0,0(sp)
    80004498:	01010413          	addi	s0,sp,16
    8000449c:	00007797          	auipc	a5,0x7
    800044a0:	2f478793          	addi	a5,a5,756 # 8000b790 <_ZTV16ProducerKeyborad+0x10>
    800044a4:	00f53023          	sd	a5,0(a0)
    800044a8:	ffffe097          	auipc	ra,0xffffe
    800044ac:	bbc080e7          	jalr	-1092(ra) # 80002064 <_ZN6ThreadD1Ev>
    800044b0:	00813083          	ld	ra,8(sp)
    800044b4:	00013403          	ld	s0,0(sp)
    800044b8:	01010113          	addi	sp,sp,16
    800044bc:	00008067          	ret

00000000800044c0 <_ZN16ProducerKeyboradD0Ev>:
    800044c0:	fe010113          	addi	sp,sp,-32
    800044c4:	00113c23          	sd	ra,24(sp)
    800044c8:	00813823          	sd	s0,16(sp)
    800044cc:	00913423          	sd	s1,8(sp)
    800044d0:	02010413          	addi	s0,sp,32
    800044d4:	00050493          	mv	s1,a0
    800044d8:	00007797          	auipc	a5,0x7
    800044dc:	2b878793          	addi	a5,a5,696 # 8000b790 <_ZTV16ProducerKeyborad+0x10>
    800044e0:	00f53023          	sd	a5,0(a0)
    800044e4:	ffffe097          	auipc	ra,0xffffe
    800044e8:	b80080e7          	jalr	-1152(ra) # 80002064 <_ZN6ThreadD1Ev>
    800044ec:	00048513          	mv	a0,s1
    800044f0:	ffffe097          	auipc	ra,0xffffe
    800044f4:	b4c080e7          	jalr	-1204(ra) # 8000203c <_ZdlPv>
    800044f8:	01813083          	ld	ra,24(sp)
    800044fc:	01013403          	ld	s0,16(sp)
    80004500:	00813483          	ld	s1,8(sp)
    80004504:	02010113          	addi	sp,sp,32
    80004508:	00008067          	ret

000000008000450c <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    8000450c:	ff010113          	addi	sp,sp,-16
    80004510:	00113423          	sd	ra,8(sp)
    80004514:	00813023          	sd	s0,0(sp)
    80004518:	01010413          	addi	s0,sp,16
    8000451c:	00007797          	auipc	a5,0x7
    80004520:	29c78793          	addi	a5,a5,668 # 8000b7b8 <_ZTV8Producer+0x10>
    80004524:	00f53023          	sd	a5,0(a0)
    80004528:	ffffe097          	auipc	ra,0xffffe
    8000452c:	b3c080e7          	jalr	-1220(ra) # 80002064 <_ZN6ThreadD1Ev>
    80004530:	00813083          	ld	ra,8(sp)
    80004534:	00013403          	ld	s0,0(sp)
    80004538:	01010113          	addi	sp,sp,16
    8000453c:	00008067          	ret

0000000080004540 <_ZN8ProducerD0Ev>:
    80004540:	fe010113          	addi	sp,sp,-32
    80004544:	00113c23          	sd	ra,24(sp)
    80004548:	00813823          	sd	s0,16(sp)
    8000454c:	00913423          	sd	s1,8(sp)
    80004550:	02010413          	addi	s0,sp,32
    80004554:	00050493          	mv	s1,a0
    80004558:	00007797          	auipc	a5,0x7
    8000455c:	26078793          	addi	a5,a5,608 # 8000b7b8 <_ZTV8Producer+0x10>
    80004560:	00f53023          	sd	a5,0(a0)
    80004564:	ffffe097          	auipc	ra,0xffffe
    80004568:	b00080e7          	jalr	-1280(ra) # 80002064 <_ZN6ThreadD1Ev>
    8000456c:	00048513          	mv	a0,s1
    80004570:	ffffe097          	auipc	ra,0xffffe
    80004574:	acc080e7          	jalr	-1332(ra) # 8000203c <_ZdlPv>
    80004578:	01813083          	ld	ra,24(sp)
    8000457c:	01013403          	ld	s0,16(sp)
    80004580:	00813483          	ld	s1,8(sp)
    80004584:	02010113          	addi	sp,sp,32
    80004588:	00008067          	ret

000000008000458c <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    8000458c:	fe010113          	addi	sp,sp,-32
    80004590:	00113c23          	sd	ra,24(sp)
    80004594:	00813823          	sd	s0,16(sp)
    80004598:	00913423          	sd	s1,8(sp)
    8000459c:	02010413          	addi	s0,sp,32
    800045a0:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800045a4:	ffffd097          	auipc	ra,0xffffd
    800045a8:	e74080e7          	jalr	-396(ra) # 80001418 <_Z4getcv>
    800045ac:	0005059b          	sext.w	a1,a0
    800045b0:	01b00793          	li	a5,27
    800045b4:	00f58c63          	beq	a1,a5,800045cc <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800045b8:	0204b783          	ld	a5,32(s1)
    800045bc:	0087b503          	ld	a0,8(a5)
    800045c0:	00001097          	auipc	ra,0x1
    800045c4:	47c080e7          	jalr	1148(ra) # 80005a3c <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800045c8:	fddff06f          	j	800045a4 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800045cc:	00100793          	li	a5,1
    800045d0:	00007717          	auipc	a4,0x7
    800045d4:	3cf72c23          	sw	a5,984(a4) # 8000b9a8 <_ZL9threadEnd>
        td->buffer->put('!');
    800045d8:	0204b783          	ld	a5,32(s1)
    800045dc:	02100593          	li	a1,33
    800045e0:	0087b503          	ld	a0,8(a5)
    800045e4:	00001097          	auipc	ra,0x1
    800045e8:	458080e7          	jalr	1112(ra) # 80005a3c <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800045ec:	0204b783          	ld	a5,32(s1)
    800045f0:	0107b503          	ld	a0,16(a5)
    800045f4:	ffffe097          	auipc	ra,0xffffe
    800045f8:	cd0080e7          	jalr	-816(ra) # 800022c4 <_ZN9Semaphore6signalEv>
    }
    800045fc:	01813083          	ld	ra,24(sp)
    80004600:	01013403          	ld	s0,16(sp)
    80004604:	00813483          	ld	s1,8(sp)
    80004608:	02010113          	addi	sp,sp,32
    8000460c:	00008067          	ret

0000000080004610 <_ZN8Producer3runEv>:
    void run() override {
    80004610:	fe010113          	addi	sp,sp,-32
    80004614:	00113c23          	sd	ra,24(sp)
    80004618:	00813823          	sd	s0,16(sp)
    8000461c:	00913423          	sd	s1,8(sp)
    80004620:	01213023          	sd	s2,0(sp)
    80004624:	02010413          	addi	s0,sp,32
    80004628:	00050493          	mv	s1,a0
        int i = 0;
    8000462c:	00000913          	li	s2,0
        while (!threadEnd) {
    80004630:	00007797          	auipc	a5,0x7
    80004634:	3787a783          	lw	a5,888(a5) # 8000b9a8 <_ZL9threadEnd>
    80004638:	04079263          	bnez	a5,8000467c <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    8000463c:	0204b783          	ld	a5,32(s1)
    80004640:	0007a583          	lw	a1,0(a5)
    80004644:	0305859b          	addiw	a1,a1,48
    80004648:	0087b503          	ld	a0,8(a5)
    8000464c:	00001097          	auipc	ra,0x1
    80004650:	3f0080e7          	jalr	1008(ra) # 80005a3c <_ZN9BufferCPP3putEi>
            i++;
    80004654:	0019071b          	addiw	a4,s2,1
    80004658:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    8000465c:	0204b783          	ld	a5,32(s1)
    80004660:	0007a783          	lw	a5,0(a5)
    80004664:	00e787bb          	addw	a5,a5,a4
    80004668:	00500513          	li	a0,5
    8000466c:	02a7e53b          	remw	a0,a5,a0
    80004670:	ffffe097          	auipc	ra,0xffffe
    80004674:	b9c080e7          	jalr	-1124(ra) # 8000220c <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004678:	fb9ff06f          	j	80004630 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    8000467c:	0204b783          	ld	a5,32(s1)
    80004680:	0107b503          	ld	a0,16(a5)
    80004684:	ffffe097          	auipc	ra,0xffffe
    80004688:	c40080e7          	jalr	-960(ra) # 800022c4 <_ZN9Semaphore6signalEv>
    }
    8000468c:	01813083          	ld	ra,24(sp)
    80004690:	01013403          	ld	s0,16(sp)
    80004694:	00813483          	ld	s1,8(sp)
    80004698:	00013903          	ld	s2,0(sp)
    8000469c:	02010113          	addi	sp,sp,32
    800046a0:	00008067          	ret

00000000800046a4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800046a4:	fe010113          	addi	sp,sp,-32
    800046a8:	00113c23          	sd	ra,24(sp)
    800046ac:	00813823          	sd	s0,16(sp)
    800046b0:	00913423          	sd	s1,8(sp)
    800046b4:	01213023          	sd	s2,0(sp)
    800046b8:	02010413          	addi	s0,sp,32
    800046bc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800046c0:	00100793          	li	a5,1
    800046c4:	02a7f863          	bgeu	a5,a0,800046f4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800046c8:	00a00793          	li	a5,10
    800046cc:	02f577b3          	remu	a5,a0,a5
    800046d0:	02078e63          	beqz	a5,8000470c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800046d4:	fff48513          	addi	a0,s1,-1
    800046d8:	00000097          	auipc	ra,0x0
    800046dc:	fcc080e7          	jalr	-52(ra) # 800046a4 <_ZL9fibonaccim>
    800046e0:	00050913          	mv	s2,a0
    800046e4:	ffe48513          	addi	a0,s1,-2
    800046e8:	00000097          	auipc	ra,0x0
    800046ec:	fbc080e7          	jalr	-68(ra) # 800046a4 <_ZL9fibonaccim>
    800046f0:	00a90533          	add	a0,s2,a0
}
    800046f4:	01813083          	ld	ra,24(sp)
    800046f8:	01013403          	ld	s0,16(sp)
    800046fc:	00813483          	ld	s1,8(sp)
    80004700:	00013903          	ld	s2,0(sp)
    80004704:	02010113          	addi	sp,sp,32
    80004708:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000470c:	ffffd097          	auipc	ra,0xffffd
    80004710:	b50080e7          	jalr	-1200(ra) # 8000125c <_Z15thread_dispatchv>
    80004714:	fc1ff06f          	j	800046d4 <_ZL9fibonaccim+0x30>

0000000080004718 <_ZL11workerBodyDPv>:
    finishedC = true;
    TCB::running->setFinished(true);
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004718:	fe010113          	addi	sp,sp,-32
    8000471c:	00113c23          	sd	ra,24(sp)
    80004720:	00813823          	sd	s0,16(sp)
    80004724:	00913423          	sd	s1,8(sp)
    80004728:	01213023          	sd	s2,0(sp)
    8000472c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004730:	00a00493          	li	s1,10
    80004734:	0400006f          	j	80004774 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004738:	00005517          	auipc	a0,0x5
    8000473c:	ba850513          	addi	a0,a0,-1112 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004740:	00001097          	auipc	ra,0x1
    80004744:	e08080e7          	jalr	-504(ra) # 80005548 <_Z11printStringPKc>
    80004748:	00000613          	li	a2,0
    8000474c:	00a00593          	li	a1,10
    80004750:	00048513          	mv	a0,s1
    80004754:	00001097          	auipc	ra,0x1
    80004758:	f98080e7          	jalr	-104(ra) # 800056ec <_Z8printIntiii>
    8000475c:	00005517          	auipc	a0,0x5
    80004760:	d7450513          	addi	a0,a0,-652 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80004764:	00001097          	auipc	ra,0x1
    80004768:	de4080e7          	jalr	-540(ra) # 80005548 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000476c:	0014849b          	addiw	s1,s1,1
    80004770:	0ff4f493          	andi	s1,s1,255
    80004774:	00c00793          	li	a5,12
    80004778:	fc97f0e3          	bgeu	a5,s1,80004738 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000477c:	00005517          	auipc	a0,0x5
    80004780:	b6c50513          	addi	a0,a0,-1172 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80004784:	00001097          	auipc	ra,0x1
    80004788:	dc4080e7          	jalr	-572(ra) # 80005548 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000478c:	00500313          	li	t1,5
    thread_dispatch();
    80004790:	ffffd097          	auipc	ra,0xffffd
    80004794:	acc080e7          	jalr	-1332(ra) # 8000125c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004798:	01000513          	li	a0,16
    8000479c:	00000097          	auipc	ra,0x0
    800047a0:	f08080e7          	jalr	-248(ra) # 800046a4 <_ZL9fibonaccim>
    800047a4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800047a8:	00005517          	auipc	a0,0x5
    800047ac:	b5050513          	addi	a0,a0,-1200 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800047b0:	00001097          	auipc	ra,0x1
    800047b4:	d98080e7          	jalr	-616(ra) # 80005548 <_Z11printStringPKc>
    800047b8:	00000613          	li	a2,0
    800047bc:	00a00593          	li	a1,10
    800047c0:	0009051b          	sext.w	a0,s2
    800047c4:	00001097          	auipc	ra,0x1
    800047c8:	f28080e7          	jalr	-216(ra) # 800056ec <_Z8printIntiii>
    800047cc:	00005517          	auipc	a0,0x5
    800047d0:	d0450513          	addi	a0,a0,-764 # 800094d0 <CONSOLE_STATUS+0x4c0>
    800047d4:	00001097          	auipc	ra,0x1
    800047d8:	d74080e7          	jalr	-652(ra) # 80005548 <_Z11printStringPKc>
    800047dc:	0400006f          	j	8000481c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800047e0:	00005517          	auipc	a0,0x5
    800047e4:	b0050513          	addi	a0,a0,-1280 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800047e8:	00001097          	auipc	ra,0x1
    800047ec:	d60080e7          	jalr	-672(ra) # 80005548 <_Z11printStringPKc>
    800047f0:	00000613          	li	a2,0
    800047f4:	00a00593          	li	a1,10
    800047f8:	00048513          	mv	a0,s1
    800047fc:	00001097          	auipc	ra,0x1
    80004800:	ef0080e7          	jalr	-272(ra) # 800056ec <_Z8printIntiii>
    80004804:	00005517          	auipc	a0,0x5
    80004808:	ccc50513          	addi	a0,a0,-820 # 800094d0 <CONSOLE_STATUS+0x4c0>
    8000480c:	00001097          	auipc	ra,0x1
    80004810:	d3c080e7          	jalr	-708(ra) # 80005548 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004814:	0014849b          	addiw	s1,s1,1
    80004818:	0ff4f493          	andi	s1,s1,255
    8000481c:	00f00793          	li	a5,15
    80004820:	fc97f0e3          	bgeu	a5,s1,800047e0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004824:	00005517          	auipc	a0,0x5
    80004828:	ae450513          	addi	a0,a0,-1308 # 80009308 <CONSOLE_STATUS+0x2f8>
    8000482c:	00001097          	auipc	ra,0x1
    80004830:	d1c080e7          	jalr	-740(ra) # 80005548 <_Z11printStringPKc>
    finishedD = true;
    80004834:	00100793          	li	a5,1
    80004838:	00007717          	auipc	a4,0x7
    8000483c:	18f70023          	sb	a5,384(a4) # 8000b9b8 <_ZL9finishedD>
    TCB::running->setFinished(true);
    80004840:	00007717          	auipc	a4,0x7
    80004844:	0a073703          	ld	a4,160(a4) # 8000b8e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80004848:	00073703          	ld	a4,0(a4)

    static TCB* createThread(Body body, void* arg, uint64 timeSlice);

    // Getter and setter for finished
    bool isFinished() const { return this->finished; }
    void setFinished(bool value) { this->finished = value; }
    8000484c:	02f70023          	sb	a5,32(a4)
    thread_dispatch();
    80004850:	ffffd097          	auipc	ra,0xffffd
    80004854:	a0c080e7          	jalr	-1524(ra) # 8000125c <_Z15thread_dispatchv>
}
    80004858:	01813083          	ld	ra,24(sp)
    8000485c:	01013403          	ld	s0,16(sp)
    80004860:	00813483          	ld	s1,8(sp)
    80004864:	00013903          	ld	s2,0(sp)
    80004868:	02010113          	addi	sp,sp,32
    8000486c:	00008067          	ret

0000000080004870 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004870:	fe010113          	addi	sp,sp,-32
    80004874:	00113c23          	sd	ra,24(sp)
    80004878:	00813823          	sd	s0,16(sp)
    8000487c:	00913423          	sd	s1,8(sp)
    80004880:	01213023          	sd	s2,0(sp)
    80004884:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004888:	00000493          	li	s1,0
    8000488c:	0400006f          	j	800048cc <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004890:	00005517          	auipc	a0,0x5
    80004894:	a2050513          	addi	a0,a0,-1504 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80004898:	00001097          	auipc	ra,0x1
    8000489c:	cb0080e7          	jalr	-848(ra) # 80005548 <_Z11printStringPKc>
    800048a0:	00000613          	li	a2,0
    800048a4:	00a00593          	li	a1,10
    800048a8:	00048513          	mv	a0,s1
    800048ac:	00001097          	auipc	ra,0x1
    800048b0:	e40080e7          	jalr	-448(ra) # 800056ec <_Z8printIntiii>
    800048b4:	00005517          	auipc	a0,0x5
    800048b8:	c1c50513          	addi	a0,a0,-996 # 800094d0 <CONSOLE_STATUS+0x4c0>
    800048bc:	00001097          	auipc	ra,0x1
    800048c0:	c8c080e7          	jalr	-884(ra) # 80005548 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800048c4:	0014849b          	addiw	s1,s1,1
    800048c8:	0ff4f493          	andi	s1,s1,255
    800048cc:	00200793          	li	a5,2
    800048d0:	fc97f0e3          	bgeu	a5,s1,80004890 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800048d4:	00005517          	auipc	a0,0x5
    800048d8:	9e450513          	addi	a0,a0,-1564 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800048dc:	00001097          	auipc	ra,0x1
    800048e0:	c6c080e7          	jalr	-916(ra) # 80005548 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800048e4:	00700313          	li	t1,7
    thread_dispatch();
    800048e8:	ffffd097          	auipc	ra,0xffffd
    800048ec:	974080e7          	jalr	-1676(ra) # 8000125c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800048f0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800048f4:	00005517          	auipc	a0,0x5
    800048f8:	9d450513          	addi	a0,a0,-1580 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800048fc:	00001097          	auipc	ra,0x1
    80004900:	c4c080e7          	jalr	-948(ra) # 80005548 <_Z11printStringPKc>
    80004904:	00000613          	li	a2,0
    80004908:	00a00593          	li	a1,10
    8000490c:	0009051b          	sext.w	a0,s2
    80004910:	00001097          	auipc	ra,0x1
    80004914:	ddc080e7          	jalr	-548(ra) # 800056ec <_Z8printIntiii>
    80004918:	00005517          	auipc	a0,0x5
    8000491c:	bb850513          	addi	a0,a0,-1096 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80004920:	00001097          	auipc	ra,0x1
    80004924:	c28080e7          	jalr	-984(ra) # 80005548 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004928:	00c00513          	li	a0,12
    8000492c:	00000097          	auipc	ra,0x0
    80004930:	d78080e7          	jalr	-648(ra) # 800046a4 <_ZL9fibonaccim>
    80004934:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004938:	00005517          	auipc	a0,0x5
    8000493c:	99850513          	addi	a0,a0,-1640 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80004940:	00001097          	auipc	ra,0x1
    80004944:	c08080e7          	jalr	-1016(ra) # 80005548 <_Z11printStringPKc>
    80004948:	00000613          	li	a2,0
    8000494c:	00a00593          	li	a1,10
    80004950:	0009051b          	sext.w	a0,s2
    80004954:	00001097          	auipc	ra,0x1
    80004958:	d98080e7          	jalr	-616(ra) # 800056ec <_Z8printIntiii>
    8000495c:	00005517          	auipc	a0,0x5
    80004960:	b7450513          	addi	a0,a0,-1164 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80004964:	00001097          	auipc	ra,0x1
    80004968:	be4080e7          	jalr	-1052(ra) # 80005548 <_Z11printStringPKc>
    8000496c:	0400006f          	j	800049ac <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004970:	00005517          	auipc	a0,0x5
    80004974:	94050513          	addi	a0,a0,-1728 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80004978:	00001097          	auipc	ra,0x1
    8000497c:	bd0080e7          	jalr	-1072(ra) # 80005548 <_Z11printStringPKc>
    80004980:	00000613          	li	a2,0
    80004984:	00a00593          	li	a1,10
    80004988:	00048513          	mv	a0,s1
    8000498c:	00001097          	auipc	ra,0x1
    80004990:	d60080e7          	jalr	-672(ra) # 800056ec <_Z8printIntiii>
    80004994:	00005517          	auipc	a0,0x5
    80004998:	b3c50513          	addi	a0,a0,-1220 # 800094d0 <CONSOLE_STATUS+0x4c0>
    8000499c:	00001097          	auipc	ra,0x1
    800049a0:	bac080e7          	jalr	-1108(ra) # 80005548 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800049a4:	0014849b          	addiw	s1,s1,1
    800049a8:	0ff4f493          	andi	s1,s1,255
    800049ac:	00500793          	li	a5,5
    800049b0:	fc97f0e3          	bgeu	a5,s1,80004970 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800049b4:	00005517          	auipc	a0,0x5
    800049b8:	8d450513          	addi	a0,a0,-1836 # 80009288 <CONSOLE_STATUS+0x278>
    800049bc:	00001097          	auipc	ra,0x1
    800049c0:	b8c080e7          	jalr	-1140(ra) # 80005548 <_Z11printStringPKc>
    finishedC = true;
    800049c4:	00100793          	li	a5,1
    800049c8:	00007717          	auipc	a4,0x7
    800049cc:	fef708a3          	sb	a5,-15(a4) # 8000b9b9 <_ZL9finishedC>
    TCB::running->setFinished(true);
    800049d0:	00007717          	auipc	a4,0x7
    800049d4:	f1073703          	ld	a4,-240(a4) # 8000b8e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    800049d8:	00073703          	ld	a4,0(a4)
    800049dc:	02f70023          	sb	a5,32(a4)
    thread_dispatch();
    800049e0:	ffffd097          	auipc	ra,0xffffd
    800049e4:	87c080e7          	jalr	-1924(ra) # 8000125c <_Z15thread_dispatchv>
}
    800049e8:	01813083          	ld	ra,24(sp)
    800049ec:	01013403          	ld	s0,16(sp)
    800049f0:	00813483          	ld	s1,8(sp)
    800049f4:	00013903          	ld	s2,0(sp)
    800049f8:	02010113          	addi	sp,sp,32
    800049fc:	00008067          	ret

0000000080004a00 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004a00:	fe010113          	addi	sp,sp,-32
    80004a04:	00113c23          	sd	ra,24(sp)
    80004a08:	00813823          	sd	s0,16(sp)
    80004a0c:	00913423          	sd	s1,8(sp)
    80004a10:	01213023          	sd	s2,0(sp)
    80004a14:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004a18:	00000913          	li	s2,0
    80004a1c:	0380006f          	j	80004a54 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004a20:	ffffd097          	auipc	ra,0xffffd
    80004a24:	83c080e7          	jalr	-1988(ra) # 8000125c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004a28:	00148493          	addi	s1,s1,1
    80004a2c:	000027b7          	lui	a5,0x2
    80004a30:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004a34:	0097ee63          	bltu	a5,s1,80004a50 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004a38:	00000713          	li	a4,0
    80004a3c:	000077b7          	lui	a5,0x7
    80004a40:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004a44:	fce7eee3          	bltu	a5,a4,80004a20 <_ZL11workerBodyBPv+0x20>
    80004a48:	00170713          	addi	a4,a4,1
    80004a4c:	ff1ff06f          	j	80004a3c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004a50:	00190913          	addi	s2,s2,1
    80004a54:	00f00793          	li	a5,15
    80004a58:	0527e063          	bltu	a5,s2,80004a98 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004a5c:	00005517          	auipc	a0,0x5
    80004a60:	83c50513          	addi	a0,a0,-1988 # 80009298 <CONSOLE_STATUS+0x288>
    80004a64:	00001097          	auipc	ra,0x1
    80004a68:	ae4080e7          	jalr	-1308(ra) # 80005548 <_Z11printStringPKc>
    80004a6c:	00000613          	li	a2,0
    80004a70:	00a00593          	li	a1,10
    80004a74:	0009051b          	sext.w	a0,s2
    80004a78:	00001097          	auipc	ra,0x1
    80004a7c:	c74080e7          	jalr	-908(ra) # 800056ec <_Z8printIntiii>
    80004a80:	00005517          	auipc	a0,0x5
    80004a84:	a5050513          	addi	a0,a0,-1456 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80004a88:	00001097          	auipc	ra,0x1
    80004a8c:	ac0080e7          	jalr	-1344(ra) # 80005548 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004a90:	00000493          	li	s1,0
    80004a94:	f99ff06f          	j	80004a2c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004a98:	00005517          	auipc	a0,0x5
    80004a9c:	80850513          	addi	a0,a0,-2040 # 800092a0 <CONSOLE_STATUS+0x290>
    80004aa0:	00001097          	auipc	ra,0x1
    80004aa4:	aa8080e7          	jalr	-1368(ra) # 80005548 <_Z11printStringPKc>
    finishedB = true;
    80004aa8:	00100793          	li	a5,1
    80004aac:	00007717          	auipc	a4,0x7
    80004ab0:	f0f70723          	sb	a5,-242(a4) # 8000b9ba <_ZL9finishedB>
    TCB::running->setFinished(true);
    80004ab4:	00007717          	auipc	a4,0x7
    80004ab8:	e2c73703          	ld	a4,-468(a4) # 8000b8e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80004abc:	00073703          	ld	a4,0(a4)
    80004ac0:	02f70023          	sb	a5,32(a4)
    thread_dispatch();
    80004ac4:	ffffc097          	auipc	ra,0xffffc
    80004ac8:	798080e7          	jalr	1944(ra) # 8000125c <_Z15thread_dispatchv>
}
    80004acc:	01813083          	ld	ra,24(sp)
    80004ad0:	01013403          	ld	s0,16(sp)
    80004ad4:	00813483          	ld	s1,8(sp)
    80004ad8:	00013903          	ld	s2,0(sp)
    80004adc:	02010113          	addi	sp,sp,32
    80004ae0:	00008067          	ret

0000000080004ae4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004ae4:	fe010113          	addi	sp,sp,-32
    80004ae8:	00113c23          	sd	ra,24(sp)
    80004aec:	00813823          	sd	s0,16(sp)
    80004af0:	00913423          	sd	s1,8(sp)
    80004af4:	01213023          	sd	s2,0(sp)
    80004af8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004afc:	00000913          	li	s2,0
    80004b00:	0380006f          	j	80004b38 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004b04:	ffffc097          	auipc	ra,0xffffc
    80004b08:	758080e7          	jalr	1880(ra) # 8000125c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004b0c:	00148493          	addi	s1,s1,1
    80004b10:	000027b7          	lui	a5,0x2
    80004b14:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004b18:	0097ee63          	bltu	a5,s1,80004b34 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004b1c:	00000713          	li	a4,0
    80004b20:	000077b7          	lui	a5,0x7
    80004b24:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004b28:	fce7eee3          	bltu	a5,a4,80004b04 <_ZL11workerBodyAPv+0x20>
    80004b2c:	00170713          	addi	a4,a4,1
    80004b30:	ff1ff06f          	j	80004b20 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004b34:	00190913          	addi	s2,s2,1
    80004b38:	00900793          	li	a5,9
    80004b3c:	0527e063          	bltu	a5,s2,80004b7c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004b40:	00004517          	auipc	a0,0x4
    80004b44:	74050513          	addi	a0,a0,1856 # 80009280 <CONSOLE_STATUS+0x270>
    80004b48:	00001097          	auipc	ra,0x1
    80004b4c:	a00080e7          	jalr	-1536(ra) # 80005548 <_Z11printStringPKc>
    80004b50:	00000613          	li	a2,0
    80004b54:	00a00593          	li	a1,10
    80004b58:	0009051b          	sext.w	a0,s2
    80004b5c:	00001097          	auipc	ra,0x1
    80004b60:	b90080e7          	jalr	-1136(ra) # 800056ec <_Z8printIntiii>
    80004b64:	00005517          	auipc	a0,0x5
    80004b68:	96c50513          	addi	a0,a0,-1684 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80004b6c:	00001097          	auipc	ra,0x1
    80004b70:	9dc080e7          	jalr	-1572(ra) # 80005548 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004b74:	00000493          	li	s1,0
    80004b78:	f99ff06f          	j	80004b10 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004b7c:	00004517          	auipc	a0,0x4
    80004b80:	70c50513          	addi	a0,a0,1804 # 80009288 <CONSOLE_STATUS+0x278>
    80004b84:	00001097          	auipc	ra,0x1
    80004b88:	9c4080e7          	jalr	-1596(ra) # 80005548 <_Z11printStringPKc>
    TCB::running->setFinished(true);
    80004b8c:	00007797          	auipc	a5,0x7
    80004b90:	d547b783          	ld	a5,-684(a5) # 8000b8e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80004b94:	0007b703          	ld	a4,0(a5)
    80004b98:	00100793          	li	a5,1
    80004b9c:	02f70023          	sb	a5,32(a4)
    finishedA = true;
    80004ba0:	00007717          	auipc	a4,0x7
    80004ba4:	e0f70da3          	sb	a5,-485(a4) # 8000b9bb <_ZL9finishedA>
}
    80004ba8:	01813083          	ld	ra,24(sp)
    80004bac:	01013403          	ld	s0,16(sp)
    80004bb0:	00813483          	ld	s1,8(sp)
    80004bb4:	00013903          	ld	s2,0(sp)
    80004bb8:	02010113          	addi	sp,sp,32
    80004bbc:	00008067          	ret

0000000080004bc0 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004bc0:	fd010113          	addi	sp,sp,-48
    80004bc4:	02113423          	sd	ra,40(sp)
    80004bc8:	02813023          	sd	s0,32(sp)
    80004bcc:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004bd0:	00000613          	li	a2,0
    80004bd4:	00000597          	auipc	a1,0x0
    80004bd8:	f1058593          	addi	a1,a1,-240 # 80004ae4 <_ZL11workerBodyAPv>
    80004bdc:	fd040513          	addi	a0,s0,-48
    80004be0:	ffffc097          	auipc	ra,0xffffc
    80004be4:	608080e7          	jalr	1544(ra) # 800011e8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004be8:	00004517          	auipc	a0,0x4
    80004bec:	73050513          	addi	a0,a0,1840 # 80009318 <CONSOLE_STATUS+0x308>
    80004bf0:	00001097          	auipc	ra,0x1
    80004bf4:	958080e7          	jalr	-1704(ra) # 80005548 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004bf8:	00000613          	li	a2,0
    80004bfc:	00000597          	auipc	a1,0x0
    80004c00:	e0458593          	addi	a1,a1,-508 # 80004a00 <_ZL11workerBodyBPv>
    80004c04:	fd840513          	addi	a0,s0,-40
    80004c08:	ffffc097          	auipc	ra,0xffffc
    80004c0c:	5e0080e7          	jalr	1504(ra) # 800011e8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004c10:	00004517          	auipc	a0,0x4
    80004c14:	72050513          	addi	a0,a0,1824 # 80009330 <CONSOLE_STATUS+0x320>
    80004c18:	00001097          	auipc	ra,0x1
    80004c1c:	930080e7          	jalr	-1744(ra) # 80005548 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004c20:	00000613          	li	a2,0
    80004c24:	00000597          	auipc	a1,0x0
    80004c28:	c4c58593          	addi	a1,a1,-948 # 80004870 <_ZL11workerBodyCPv>
    80004c2c:	fe040513          	addi	a0,s0,-32
    80004c30:	ffffc097          	auipc	ra,0xffffc
    80004c34:	5b8080e7          	jalr	1464(ra) # 800011e8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004c38:	00004517          	auipc	a0,0x4
    80004c3c:	71050513          	addi	a0,a0,1808 # 80009348 <CONSOLE_STATUS+0x338>
    80004c40:	00001097          	auipc	ra,0x1
    80004c44:	908080e7          	jalr	-1784(ra) # 80005548 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004c48:	00000613          	li	a2,0
    80004c4c:	00000597          	auipc	a1,0x0
    80004c50:	acc58593          	addi	a1,a1,-1332 # 80004718 <_ZL11workerBodyDPv>
    80004c54:	fe840513          	addi	a0,s0,-24
    80004c58:	ffffc097          	auipc	ra,0xffffc
    80004c5c:	590080e7          	jalr	1424(ra) # 800011e8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004c60:	00004517          	auipc	a0,0x4
    80004c64:	70050513          	addi	a0,a0,1792 # 80009360 <CONSOLE_STATUS+0x350>
    80004c68:	00001097          	auipc	ra,0x1
    80004c6c:	8e0080e7          	jalr	-1824(ra) # 80005548 <_Z11printStringPKc>
    80004c70:	00c0006f          	j	80004c7c <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004c74:	ffffc097          	auipc	ra,0xffffc
    80004c78:	5e8080e7          	jalr	1512(ra) # 8000125c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004c7c:	00007797          	auipc	a5,0x7
    80004c80:	d3f7c783          	lbu	a5,-705(a5) # 8000b9bb <_ZL9finishedA>
    80004c84:	fe0788e3          	beqz	a5,80004c74 <_Z18Threads_C_API_testv+0xb4>
    80004c88:	00007797          	auipc	a5,0x7
    80004c8c:	d327c783          	lbu	a5,-718(a5) # 8000b9ba <_ZL9finishedB>
    80004c90:	fe0782e3          	beqz	a5,80004c74 <_Z18Threads_C_API_testv+0xb4>
    80004c94:	00007797          	auipc	a5,0x7
    80004c98:	d257c783          	lbu	a5,-731(a5) # 8000b9b9 <_ZL9finishedC>
    80004c9c:	fc078ce3          	beqz	a5,80004c74 <_Z18Threads_C_API_testv+0xb4>
    80004ca0:	00007797          	auipc	a5,0x7
    80004ca4:	d187c783          	lbu	a5,-744(a5) # 8000b9b8 <_ZL9finishedD>
    80004ca8:	fc0786e3          	beqz	a5,80004c74 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004cac:	02813083          	ld	ra,40(sp)
    80004cb0:	02013403          	ld	s0,32(sp)
    80004cb4:	03010113          	addi	sp,sp,48
    80004cb8:	00008067          	ret

0000000080004cbc <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004cbc:	fd010113          	addi	sp,sp,-48
    80004cc0:	02113423          	sd	ra,40(sp)
    80004cc4:	02813023          	sd	s0,32(sp)
    80004cc8:	00913c23          	sd	s1,24(sp)
    80004ccc:	01213823          	sd	s2,16(sp)
    80004cd0:	01313423          	sd	s3,8(sp)
    80004cd4:	03010413          	addi	s0,sp,48
    80004cd8:	00050993          	mv	s3,a0
    80004cdc:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004ce0:	00000913          	li	s2,0
    80004ce4:	00c0006f          	j	80004cf0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004ce8:	ffffd097          	auipc	ra,0xffffd
    80004cec:	4fc080e7          	jalr	1276(ra) # 800021e4 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004cf0:	ffffc097          	auipc	ra,0xffffc
    80004cf4:	728080e7          	jalr	1832(ra) # 80001418 <_Z4getcv>
    80004cf8:	0005059b          	sext.w	a1,a0
    80004cfc:	01b00793          	li	a5,27
    80004d00:	02f58a63          	beq	a1,a5,80004d34 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004d04:	0084b503          	ld	a0,8(s1)
    80004d08:	00001097          	auipc	ra,0x1
    80004d0c:	d34080e7          	jalr	-716(ra) # 80005a3c <_ZN9BufferCPP3putEi>
        i++;
    80004d10:	0019071b          	addiw	a4,s2,1
    80004d14:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004d18:	0004a683          	lw	a3,0(s1)
    80004d1c:	0026979b          	slliw	a5,a3,0x2
    80004d20:	00d787bb          	addw	a5,a5,a3
    80004d24:	0017979b          	slliw	a5,a5,0x1
    80004d28:	02f767bb          	remw	a5,a4,a5
    80004d2c:	fc0792e3          	bnez	a5,80004cf0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004d30:	fb9ff06f          	j	80004ce8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004d34:	00100793          	li	a5,1
    80004d38:	00007717          	auipc	a4,0x7
    80004d3c:	c8f72423          	sw	a5,-888(a4) # 8000b9c0 <_ZL9threadEnd>
    td->buffer->put('!');
    80004d40:	0209b783          	ld	a5,32(s3)
    80004d44:	02100593          	li	a1,33
    80004d48:	0087b503          	ld	a0,8(a5)
    80004d4c:	00001097          	auipc	ra,0x1
    80004d50:	cf0080e7          	jalr	-784(ra) # 80005a3c <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004d54:	0104b503          	ld	a0,16(s1)
    80004d58:	ffffd097          	auipc	ra,0xffffd
    80004d5c:	56c080e7          	jalr	1388(ra) # 800022c4 <_ZN9Semaphore6signalEv>
}
    80004d60:	02813083          	ld	ra,40(sp)
    80004d64:	02013403          	ld	s0,32(sp)
    80004d68:	01813483          	ld	s1,24(sp)
    80004d6c:	01013903          	ld	s2,16(sp)
    80004d70:	00813983          	ld	s3,8(sp)
    80004d74:	03010113          	addi	sp,sp,48
    80004d78:	00008067          	ret

0000000080004d7c <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004d7c:	fe010113          	addi	sp,sp,-32
    80004d80:	00113c23          	sd	ra,24(sp)
    80004d84:	00813823          	sd	s0,16(sp)
    80004d88:	00913423          	sd	s1,8(sp)
    80004d8c:	01213023          	sd	s2,0(sp)
    80004d90:	02010413          	addi	s0,sp,32
    80004d94:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004d98:	00000913          	li	s2,0
    80004d9c:	00c0006f          	j	80004da8 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004da0:	ffffd097          	auipc	ra,0xffffd
    80004da4:	444080e7          	jalr	1092(ra) # 800021e4 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004da8:	00007797          	auipc	a5,0x7
    80004dac:	c187a783          	lw	a5,-1000(a5) # 8000b9c0 <_ZL9threadEnd>
    80004db0:	02079e63          	bnez	a5,80004dec <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004db4:	0004a583          	lw	a1,0(s1)
    80004db8:	0305859b          	addiw	a1,a1,48
    80004dbc:	0084b503          	ld	a0,8(s1)
    80004dc0:	00001097          	auipc	ra,0x1
    80004dc4:	c7c080e7          	jalr	-900(ra) # 80005a3c <_ZN9BufferCPP3putEi>
        i++;
    80004dc8:	0019071b          	addiw	a4,s2,1
    80004dcc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004dd0:	0004a683          	lw	a3,0(s1)
    80004dd4:	0026979b          	slliw	a5,a3,0x2
    80004dd8:	00d787bb          	addw	a5,a5,a3
    80004ddc:	0017979b          	slliw	a5,a5,0x1
    80004de0:	02f767bb          	remw	a5,a4,a5
    80004de4:	fc0792e3          	bnez	a5,80004da8 <_ZN12ProducerSync8producerEPv+0x2c>
    80004de8:	fb9ff06f          	j	80004da0 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004dec:	0104b503          	ld	a0,16(s1)
    80004df0:	ffffd097          	auipc	ra,0xffffd
    80004df4:	4d4080e7          	jalr	1236(ra) # 800022c4 <_ZN9Semaphore6signalEv>
}
    80004df8:	01813083          	ld	ra,24(sp)
    80004dfc:	01013403          	ld	s0,16(sp)
    80004e00:	00813483          	ld	s1,8(sp)
    80004e04:	00013903          	ld	s2,0(sp)
    80004e08:	02010113          	addi	sp,sp,32
    80004e0c:	00008067          	ret

0000000080004e10 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004e10:	fd010113          	addi	sp,sp,-48
    80004e14:	02113423          	sd	ra,40(sp)
    80004e18:	02813023          	sd	s0,32(sp)
    80004e1c:	00913c23          	sd	s1,24(sp)
    80004e20:	01213823          	sd	s2,16(sp)
    80004e24:	01313423          	sd	s3,8(sp)
    80004e28:	01413023          	sd	s4,0(sp)
    80004e2c:	03010413          	addi	s0,sp,48
    80004e30:	00050993          	mv	s3,a0
    80004e34:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004e38:	00000a13          	li	s4,0
    80004e3c:	01c0006f          	j	80004e58 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004e40:	ffffd097          	auipc	ra,0xffffd
    80004e44:	3a4080e7          	jalr	932(ra) # 800021e4 <_ZN6Thread8dispatchEv>
    80004e48:	0500006f          	j	80004e98 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004e4c:	00a00513          	li	a0,10
    80004e50:	ffffc097          	auipc	ra,0xffffc
    80004e54:	5fc080e7          	jalr	1532(ra) # 8000144c <_Z4putcc>
    while (!threadEnd) {
    80004e58:	00007797          	auipc	a5,0x7
    80004e5c:	b687a783          	lw	a5,-1176(a5) # 8000b9c0 <_ZL9threadEnd>
    80004e60:	06079263          	bnez	a5,80004ec4 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004e64:	00893503          	ld	a0,8(s2)
    80004e68:	00001097          	auipc	ra,0x1
    80004e6c:	c64080e7          	jalr	-924(ra) # 80005acc <_ZN9BufferCPP3getEv>
        i++;
    80004e70:	001a049b          	addiw	s1,s4,1
    80004e74:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004e78:	0ff57513          	andi	a0,a0,255
    80004e7c:	ffffc097          	auipc	ra,0xffffc
    80004e80:	5d0080e7          	jalr	1488(ra) # 8000144c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004e84:	00092703          	lw	a4,0(s2)
    80004e88:	0027179b          	slliw	a5,a4,0x2
    80004e8c:	00e787bb          	addw	a5,a5,a4
    80004e90:	02f4e7bb          	remw	a5,s1,a5
    80004e94:	fa0786e3          	beqz	a5,80004e40 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004e98:	05000793          	li	a5,80
    80004e9c:	02f4e4bb          	remw	s1,s1,a5
    80004ea0:	fa049ce3          	bnez	s1,80004e58 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004ea4:	fa9ff06f          	j	80004e4c <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004ea8:	0209b783          	ld	a5,32(s3)
    80004eac:	0087b503          	ld	a0,8(a5)
    80004eb0:	00001097          	auipc	ra,0x1
    80004eb4:	c1c080e7          	jalr	-996(ra) # 80005acc <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004eb8:	0ff57513          	andi	a0,a0,255
    80004ebc:	ffffd097          	auipc	ra,0xffffd
    80004ec0:	52c080e7          	jalr	1324(ra) # 800023e8 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004ec4:	0209b783          	ld	a5,32(s3)
    80004ec8:	0087b503          	ld	a0,8(a5)
    80004ecc:	00001097          	auipc	ra,0x1
    80004ed0:	c8c080e7          	jalr	-884(ra) # 80005b58 <_ZN9BufferCPP6getCntEv>
    80004ed4:	fca04ae3          	bgtz	a0,80004ea8 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004ed8:	01093503          	ld	a0,16(s2)
    80004edc:	ffffd097          	auipc	ra,0xffffd
    80004ee0:	3e8080e7          	jalr	1000(ra) # 800022c4 <_ZN9Semaphore6signalEv>
}
    80004ee4:	02813083          	ld	ra,40(sp)
    80004ee8:	02013403          	ld	s0,32(sp)
    80004eec:	01813483          	ld	s1,24(sp)
    80004ef0:	01013903          	ld	s2,16(sp)
    80004ef4:	00813983          	ld	s3,8(sp)
    80004ef8:	00013a03          	ld	s4,0(sp)
    80004efc:	03010113          	addi	sp,sp,48
    80004f00:	00008067          	ret

0000000080004f04 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004f04:	f8010113          	addi	sp,sp,-128
    80004f08:	06113c23          	sd	ra,120(sp)
    80004f0c:	06813823          	sd	s0,112(sp)
    80004f10:	06913423          	sd	s1,104(sp)
    80004f14:	07213023          	sd	s2,96(sp)
    80004f18:	05313c23          	sd	s3,88(sp)
    80004f1c:	05413823          	sd	s4,80(sp)
    80004f20:	05513423          	sd	s5,72(sp)
    80004f24:	05613023          	sd	s6,64(sp)
    80004f28:	03713c23          	sd	s7,56(sp)
    80004f2c:	03813823          	sd	s8,48(sp)
    80004f30:	03913423          	sd	s9,40(sp)
    80004f34:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004f38:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004f3c:	00004517          	auipc	a0,0x4
    80004f40:	25c50513          	addi	a0,a0,604 # 80009198 <CONSOLE_STATUS+0x188>
    80004f44:	00000097          	auipc	ra,0x0
    80004f48:	604080e7          	jalr	1540(ra) # 80005548 <_Z11printStringPKc>
    getString(input, 30);
    80004f4c:	01e00593          	li	a1,30
    80004f50:	f8040493          	addi	s1,s0,-128
    80004f54:	00048513          	mv	a0,s1
    80004f58:	00000097          	auipc	ra,0x0
    80004f5c:	678080e7          	jalr	1656(ra) # 800055d0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004f60:	00048513          	mv	a0,s1
    80004f64:	00000097          	auipc	ra,0x0
    80004f68:	738080e7          	jalr	1848(ra) # 8000569c <_Z11stringToIntPKc>
    80004f6c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004f70:	00004517          	auipc	a0,0x4
    80004f74:	24850513          	addi	a0,a0,584 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80004f78:	00000097          	auipc	ra,0x0
    80004f7c:	5d0080e7          	jalr	1488(ra) # 80005548 <_Z11printStringPKc>
    getString(input, 30);
    80004f80:	01e00593          	li	a1,30
    80004f84:	00048513          	mv	a0,s1
    80004f88:	00000097          	auipc	ra,0x0
    80004f8c:	648080e7          	jalr	1608(ra) # 800055d0 <_Z9getStringPci>
    n = stringToInt(input);
    80004f90:	00048513          	mv	a0,s1
    80004f94:	00000097          	auipc	ra,0x0
    80004f98:	708080e7          	jalr	1800(ra) # 8000569c <_Z11stringToIntPKc>
    80004f9c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004fa0:	00004517          	auipc	a0,0x4
    80004fa4:	23850513          	addi	a0,a0,568 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80004fa8:	00000097          	auipc	ra,0x0
    80004fac:	5a0080e7          	jalr	1440(ra) # 80005548 <_Z11printStringPKc>
    80004fb0:	00000613          	li	a2,0
    80004fb4:	00a00593          	li	a1,10
    80004fb8:	00090513          	mv	a0,s2
    80004fbc:	00000097          	auipc	ra,0x0
    80004fc0:	730080e7          	jalr	1840(ra) # 800056ec <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004fc4:	00004517          	auipc	a0,0x4
    80004fc8:	22c50513          	addi	a0,a0,556 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80004fcc:	00000097          	auipc	ra,0x0
    80004fd0:	57c080e7          	jalr	1404(ra) # 80005548 <_Z11printStringPKc>
    80004fd4:	00000613          	li	a2,0
    80004fd8:	00a00593          	li	a1,10
    80004fdc:	00048513          	mv	a0,s1
    80004fe0:	00000097          	auipc	ra,0x0
    80004fe4:	70c080e7          	jalr	1804(ra) # 800056ec <_Z8printIntiii>
    printString(".\n");
    80004fe8:	00004517          	auipc	a0,0x4
    80004fec:	22050513          	addi	a0,a0,544 # 80009208 <CONSOLE_STATUS+0x1f8>
    80004ff0:	00000097          	auipc	ra,0x0
    80004ff4:	558080e7          	jalr	1368(ra) # 80005548 <_Z11printStringPKc>
    if(threadNum > n) {
    80004ff8:	0324c463          	blt	s1,s2,80005020 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004ffc:	03205c63          	blez	s2,80005034 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005000:	03800513          	li	a0,56
    80005004:	ffffd097          	auipc	ra,0xffffd
    80005008:	fe8080e7          	jalr	-24(ra) # 80001fec <_Znwm>
    8000500c:	00050a93          	mv	s5,a0
    80005010:	00048593          	mv	a1,s1
    80005014:	00001097          	auipc	ra,0x1
    80005018:	8d4080e7          	jalr	-1836(ra) # 800058e8 <_ZN9BufferCPPC1Ei>
    8000501c:	0300006f          	j	8000504c <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005020:	00004517          	auipc	a0,0x4
    80005024:	1f050513          	addi	a0,a0,496 # 80009210 <CONSOLE_STATUS+0x200>
    80005028:	00000097          	auipc	ra,0x0
    8000502c:	520080e7          	jalr	1312(ra) # 80005548 <_Z11printStringPKc>
        return;
    80005030:	0140006f          	j	80005044 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005034:	00004517          	auipc	a0,0x4
    80005038:	21c50513          	addi	a0,a0,540 # 80009250 <CONSOLE_STATUS+0x240>
    8000503c:	00000097          	auipc	ra,0x0
    80005040:	50c080e7          	jalr	1292(ra) # 80005548 <_Z11printStringPKc>
        return;
    80005044:	000b8113          	mv	sp,s7
    80005048:	2380006f          	j	80005280 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    8000504c:	01000513          	li	a0,16
    80005050:	ffffd097          	auipc	ra,0xffffd
    80005054:	f9c080e7          	jalr	-100(ra) # 80001fec <_Znwm>
    80005058:	00050493          	mv	s1,a0
    8000505c:	00000593          	li	a1,0
    80005060:	ffffd097          	auipc	ra,0xffffd
    80005064:	200080e7          	jalr	512(ra) # 80002260 <_ZN9SemaphoreC1Ej>
    80005068:	00007797          	auipc	a5,0x7
    8000506c:	9697b023          	sd	s1,-1696(a5) # 8000b9c8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005070:	00391793          	slli	a5,s2,0x3
    80005074:	00f78793          	addi	a5,a5,15
    80005078:	ff07f793          	andi	a5,a5,-16
    8000507c:	40f10133          	sub	sp,sp,a5
    80005080:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005084:	0019071b          	addiw	a4,s2,1
    80005088:	00171793          	slli	a5,a4,0x1
    8000508c:	00e787b3          	add	a5,a5,a4
    80005090:	00379793          	slli	a5,a5,0x3
    80005094:	00f78793          	addi	a5,a5,15
    80005098:	ff07f793          	andi	a5,a5,-16
    8000509c:	40f10133          	sub	sp,sp,a5
    800050a0:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800050a4:	00191c13          	slli	s8,s2,0x1
    800050a8:	012c07b3          	add	a5,s8,s2
    800050ac:	00379793          	slli	a5,a5,0x3
    800050b0:	00fa07b3          	add	a5,s4,a5
    800050b4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800050b8:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800050bc:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800050c0:	02800513          	li	a0,40
    800050c4:	ffffd097          	auipc	ra,0xffffd
    800050c8:	f28080e7          	jalr	-216(ra) # 80001fec <_Znwm>
    800050cc:	00050b13          	mv	s6,a0
    800050d0:	012c0c33          	add	s8,s8,s2
    800050d4:	003c1c13          	slli	s8,s8,0x3
    800050d8:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800050dc:	ffffd097          	auipc	ra,0xffffd
    800050e0:	158080e7          	jalr	344(ra) # 80002234 <_ZN6ThreadC1Ev>
    800050e4:	00006797          	auipc	a5,0x6
    800050e8:	77478793          	addi	a5,a5,1908 # 8000b858 <_ZTV12ConsumerSync+0x10>
    800050ec:	00fb3023          	sd	a5,0(s6)
    800050f0:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800050f4:	000b0513          	mv	a0,s6
    800050f8:	ffffd097          	auipc	ra,0xffffd
    800050fc:	098080e7          	jalr	152(ra) # 80002190 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005100:	00000493          	li	s1,0
    80005104:	0380006f          	j	8000513c <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005108:	00006797          	auipc	a5,0x6
    8000510c:	72878793          	addi	a5,a5,1832 # 8000b830 <_ZTV12ProducerSync+0x10>
    80005110:	00fcb023          	sd	a5,0(s9)
    80005114:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005118:	00349793          	slli	a5,s1,0x3
    8000511c:	00f987b3          	add	a5,s3,a5
    80005120:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005124:	00349793          	slli	a5,s1,0x3
    80005128:	00f987b3          	add	a5,s3,a5
    8000512c:	0007b503          	ld	a0,0(a5)
    80005130:	ffffd097          	auipc	ra,0xffffd
    80005134:	060080e7          	jalr	96(ra) # 80002190 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005138:	0014849b          	addiw	s1,s1,1
    8000513c:	0b24d063          	bge	s1,s2,800051dc <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005140:	00149793          	slli	a5,s1,0x1
    80005144:	009787b3          	add	a5,a5,s1
    80005148:	00379793          	slli	a5,a5,0x3
    8000514c:	00fa07b3          	add	a5,s4,a5
    80005150:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005154:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005158:	00007717          	auipc	a4,0x7
    8000515c:	87073703          	ld	a4,-1936(a4) # 8000b9c8 <_ZL10waitForAll>
    80005160:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005164:	02905863          	blez	s1,80005194 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005168:	02800513          	li	a0,40
    8000516c:	ffffd097          	auipc	ra,0xffffd
    80005170:	e80080e7          	jalr	-384(ra) # 80001fec <_Znwm>
    80005174:	00050c93          	mv	s9,a0
    80005178:	00149c13          	slli	s8,s1,0x1
    8000517c:	009c0c33          	add	s8,s8,s1
    80005180:	003c1c13          	slli	s8,s8,0x3
    80005184:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005188:	ffffd097          	auipc	ra,0xffffd
    8000518c:	0ac080e7          	jalr	172(ra) # 80002234 <_ZN6ThreadC1Ev>
    80005190:	f79ff06f          	j	80005108 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005194:	02800513          	li	a0,40
    80005198:	ffffd097          	auipc	ra,0xffffd
    8000519c:	e54080e7          	jalr	-428(ra) # 80001fec <_Znwm>
    800051a0:	00050c93          	mv	s9,a0
    800051a4:	00149c13          	slli	s8,s1,0x1
    800051a8:	009c0c33          	add	s8,s8,s1
    800051ac:	003c1c13          	slli	s8,s8,0x3
    800051b0:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800051b4:	ffffd097          	auipc	ra,0xffffd
    800051b8:	080080e7          	jalr	128(ra) # 80002234 <_ZN6ThreadC1Ev>
    800051bc:	00006797          	auipc	a5,0x6
    800051c0:	64c78793          	addi	a5,a5,1612 # 8000b808 <_ZTV16ProducerKeyboard+0x10>
    800051c4:	00fcb023          	sd	a5,0(s9)
    800051c8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800051cc:	00349793          	slli	a5,s1,0x3
    800051d0:	00f987b3          	add	a5,s3,a5
    800051d4:	0197b023          	sd	s9,0(a5)
    800051d8:	f4dff06f          	j	80005124 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800051dc:	ffffd097          	auipc	ra,0xffffd
    800051e0:	008080e7          	jalr	8(ra) # 800021e4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800051e4:	00000493          	li	s1,0
    800051e8:	00994e63          	blt	s2,s1,80005204 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800051ec:	00006517          	auipc	a0,0x6
    800051f0:	7dc53503          	ld	a0,2012(a0) # 8000b9c8 <_ZL10waitForAll>
    800051f4:	ffffd097          	auipc	ra,0xffffd
    800051f8:	0a4080e7          	jalr	164(ra) # 80002298 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800051fc:	0014849b          	addiw	s1,s1,1
    80005200:	fe9ff06f          	j	800051e8 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005204:	00000493          	li	s1,0
    80005208:	0080006f          	j	80005210 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    8000520c:	0014849b          	addiw	s1,s1,1
    80005210:	0324d263          	bge	s1,s2,80005234 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005214:	00349793          	slli	a5,s1,0x3
    80005218:	00f987b3          	add	a5,s3,a5
    8000521c:	0007b503          	ld	a0,0(a5)
    80005220:	fe0506e3          	beqz	a0,8000520c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005224:	00053783          	ld	a5,0(a0)
    80005228:	0087b783          	ld	a5,8(a5)
    8000522c:	000780e7          	jalr	a5
    80005230:	fddff06f          	j	8000520c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005234:	000b0a63          	beqz	s6,80005248 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005238:	000b3783          	ld	a5,0(s6)
    8000523c:	0087b783          	ld	a5,8(a5)
    80005240:	000b0513          	mv	a0,s6
    80005244:	000780e7          	jalr	a5
    delete waitForAll;
    80005248:	00006517          	auipc	a0,0x6
    8000524c:	78053503          	ld	a0,1920(a0) # 8000b9c8 <_ZL10waitForAll>
    80005250:	00050863          	beqz	a0,80005260 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005254:	00053783          	ld	a5,0(a0)
    80005258:	0087b783          	ld	a5,8(a5)
    8000525c:	000780e7          	jalr	a5
    delete buffer;
    80005260:	000a8e63          	beqz	s5,8000527c <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005264:	000a8513          	mv	a0,s5
    80005268:	00001097          	auipc	ra,0x1
    8000526c:	978080e7          	jalr	-1672(ra) # 80005be0 <_ZN9BufferCPPD1Ev>
    80005270:	000a8513          	mv	a0,s5
    80005274:	ffffd097          	auipc	ra,0xffffd
    80005278:	dc8080e7          	jalr	-568(ra) # 8000203c <_ZdlPv>
    8000527c:	000b8113          	mv	sp,s7

}
    80005280:	f8040113          	addi	sp,s0,-128
    80005284:	07813083          	ld	ra,120(sp)
    80005288:	07013403          	ld	s0,112(sp)
    8000528c:	06813483          	ld	s1,104(sp)
    80005290:	06013903          	ld	s2,96(sp)
    80005294:	05813983          	ld	s3,88(sp)
    80005298:	05013a03          	ld	s4,80(sp)
    8000529c:	04813a83          	ld	s5,72(sp)
    800052a0:	04013b03          	ld	s6,64(sp)
    800052a4:	03813b83          	ld	s7,56(sp)
    800052a8:	03013c03          	ld	s8,48(sp)
    800052ac:	02813c83          	ld	s9,40(sp)
    800052b0:	08010113          	addi	sp,sp,128
    800052b4:	00008067          	ret
    800052b8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800052bc:	000a8513          	mv	a0,s5
    800052c0:	ffffd097          	auipc	ra,0xffffd
    800052c4:	d7c080e7          	jalr	-644(ra) # 8000203c <_ZdlPv>
    800052c8:	00048513          	mv	a0,s1
    800052cc:	00007097          	auipc	ra,0x7
    800052d0:	7ec080e7          	jalr	2028(ra) # 8000cab8 <_Unwind_Resume>
    800052d4:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800052d8:	00048513          	mv	a0,s1
    800052dc:	ffffd097          	auipc	ra,0xffffd
    800052e0:	d60080e7          	jalr	-672(ra) # 8000203c <_ZdlPv>
    800052e4:	00090513          	mv	a0,s2
    800052e8:	00007097          	auipc	ra,0x7
    800052ec:	7d0080e7          	jalr	2000(ra) # 8000cab8 <_Unwind_Resume>
    800052f0:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800052f4:	000b0513          	mv	a0,s6
    800052f8:	ffffd097          	auipc	ra,0xffffd
    800052fc:	d44080e7          	jalr	-700(ra) # 8000203c <_ZdlPv>
    80005300:	00048513          	mv	a0,s1
    80005304:	00007097          	auipc	ra,0x7
    80005308:	7b4080e7          	jalr	1972(ra) # 8000cab8 <_Unwind_Resume>
    8000530c:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005310:	000c8513          	mv	a0,s9
    80005314:	ffffd097          	auipc	ra,0xffffd
    80005318:	d28080e7          	jalr	-728(ra) # 8000203c <_ZdlPv>
    8000531c:	00048513          	mv	a0,s1
    80005320:	00007097          	auipc	ra,0x7
    80005324:	798080e7          	jalr	1944(ra) # 8000cab8 <_Unwind_Resume>
    80005328:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    8000532c:	000c8513          	mv	a0,s9
    80005330:	ffffd097          	auipc	ra,0xffffd
    80005334:	d0c080e7          	jalr	-756(ra) # 8000203c <_ZdlPv>
    80005338:	00048513          	mv	a0,s1
    8000533c:	00007097          	auipc	ra,0x7
    80005340:	77c080e7          	jalr	1916(ra) # 8000cab8 <_Unwind_Resume>

0000000080005344 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005344:	ff010113          	addi	sp,sp,-16
    80005348:	00113423          	sd	ra,8(sp)
    8000534c:	00813023          	sd	s0,0(sp)
    80005350:	01010413          	addi	s0,sp,16
    80005354:	00006797          	auipc	a5,0x6
    80005358:	50478793          	addi	a5,a5,1284 # 8000b858 <_ZTV12ConsumerSync+0x10>
    8000535c:	00f53023          	sd	a5,0(a0)
    80005360:	ffffd097          	auipc	ra,0xffffd
    80005364:	d04080e7          	jalr	-764(ra) # 80002064 <_ZN6ThreadD1Ev>
    80005368:	00813083          	ld	ra,8(sp)
    8000536c:	00013403          	ld	s0,0(sp)
    80005370:	01010113          	addi	sp,sp,16
    80005374:	00008067          	ret

0000000080005378 <_ZN12ConsumerSyncD0Ev>:
    80005378:	fe010113          	addi	sp,sp,-32
    8000537c:	00113c23          	sd	ra,24(sp)
    80005380:	00813823          	sd	s0,16(sp)
    80005384:	00913423          	sd	s1,8(sp)
    80005388:	02010413          	addi	s0,sp,32
    8000538c:	00050493          	mv	s1,a0
    80005390:	00006797          	auipc	a5,0x6
    80005394:	4c878793          	addi	a5,a5,1224 # 8000b858 <_ZTV12ConsumerSync+0x10>
    80005398:	00f53023          	sd	a5,0(a0)
    8000539c:	ffffd097          	auipc	ra,0xffffd
    800053a0:	cc8080e7          	jalr	-824(ra) # 80002064 <_ZN6ThreadD1Ev>
    800053a4:	00048513          	mv	a0,s1
    800053a8:	ffffd097          	auipc	ra,0xffffd
    800053ac:	c94080e7          	jalr	-876(ra) # 8000203c <_ZdlPv>
    800053b0:	01813083          	ld	ra,24(sp)
    800053b4:	01013403          	ld	s0,16(sp)
    800053b8:	00813483          	ld	s1,8(sp)
    800053bc:	02010113          	addi	sp,sp,32
    800053c0:	00008067          	ret

00000000800053c4 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800053c4:	ff010113          	addi	sp,sp,-16
    800053c8:	00113423          	sd	ra,8(sp)
    800053cc:	00813023          	sd	s0,0(sp)
    800053d0:	01010413          	addi	s0,sp,16
    800053d4:	00006797          	auipc	a5,0x6
    800053d8:	45c78793          	addi	a5,a5,1116 # 8000b830 <_ZTV12ProducerSync+0x10>
    800053dc:	00f53023          	sd	a5,0(a0)
    800053e0:	ffffd097          	auipc	ra,0xffffd
    800053e4:	c84080e7          	jalr	-892(ra) # 80002064 <_ZN6ThreadD1Ev>
    800053e8:	00813083          	ld	ra,8(sp)
    800053ec:	00013403          	ld	s0,0(sp)
    800053f0:	01010113          	addi	sp,sp,16
    800053f4:	00008067          	ret

00000000800053f8 <_ZN12ProducerSyncD0Ev>:
    800053f8:	fe010113          	addi	sp,sp,-32
    800053fc:	00113c23          	sd	ra,24(sp)
    80005400:	00813823          	sd	s0,16(sp)
    80005404:	00913423          	sd	s1,8(sp)
    80005408:	02010413          	addi	s0,sp,32
    8000540c:	00050493          	mv	s1,a0
    80005410:	00006797          	auipc	a5,0x6
    80005414:	42078793          	addi	a5,a5,1056 # 8000b830 <_ZTV12ProducerSync+0x10>
    80005418:	00f53023          	sd	a5,0(a0)
    8000541c:	ffffd097          	auipc	ra,0xffffd
    80005420:	c48080e7          	jalr	-952(ra) # 80002064 <_ZN6ThreadD1Ev>
    80005424:	00048513          	mv	a0,s1
    80005428:	ffffd097          	auipc	ra,0xffffd
    8000542c:	c14080e7          	jalr	-1004(ra) # 8000203c <_ZdlPv>
    80005430:	01813083          	ld	ra,24(sp)
    80005434:	01013403          	ld	s0,16(sp)
    80005438:	00813483          	ld	s1,8(sp)
    8000543c:	02010113          	addi	sp,sp,32
    80005440:	00008067          	ret

0000000080005444 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005444:	ff010113          	addi	sp,sp,-16
    80005448:	00113423          	sd	ra,8(sp)
    8000544c:	00813023          	sd	s0,0(sp)
    80005450:	01010413          	addi	s0,sp,16
    80005454:	00006797          	auipc	a5,0x6
    80005458:	3b478793          	addi	a5,a5,948 # 8000b808 <_ZTV16ProducerKeyboard+0x10>
    8000545c:	00f53023          	sd	a5,0(a0)
    80005460:	ffffd097          	auipc	ra,0xffffd
    80005464:	c04080e7          	jalr	-1020(ra) # 80002064 <_ZN6ThreadD1Ev>
    80005468:	00813083          	ld	ra,8(sp)
    8000546c:	00013403          	ld	s0,0(sp)
    80005470:	01010113          	addi	sp,sp,16
    80005474:	00008067          	ret

0000000080005478 <_ZN16ProducerKeyboardD0Ev>:
    80005478:	fe010113          	addi	sp,sp,-32
    8000547c:	00113c23          	sd	ra,24(sp)
    80005480:	00813823          	sd	s0,16(sp)
    80005484:	00913423          	sd	s1,8(sp)
    80005488:	02010413          	addi	s0,sp,32
    8000548c:	00050493          	mv	s1,a0
    80005490:	00006797          	auipc	a5,0x6
    80005494:	37878793          	addi	a5,a5,888 # 8000b808 <_ZTV16ProducerKeyboard+0x10>
    80005498:	00f53023          	sd	a5,0(a0)
    8000549c:	ffffd097          	auipc	ra,0xffffd
    800054a0:	bc8080e7          	jalr	-1080(ra) # 80002064 <_ZN6ThreadD1Ev>
    800054a4:	00048513          	mv	a0,s1
    800054a8:	ffffd097          	auipc	ra,0xffffd
    800054ac:	b94080e7          	jalr	-1132(ra) # 8000203c <_ZdlPv>
    800054b0:	01813083          	ld	ra,24(sp)
    800054b4:	01013403          	ld	s0,16(sp)
    800054b8:	00813483          	ld	s1,8(sp)
    800054bc:	02010113          	addi	sp,sp,32
    800054c0:	00008067          	ret

00000000800054c4 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800054c4:	ff010113          	addi	sp,sp,-16
    800054c8:	00113423          	sd	ra,8(sp)
    800054cc:	00813023          	sd	s0,0(sp)
    800054d0:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800054d4:	02053583          	ld	a1,32(a0)
    800054d8:	fffff097          	auipc	ra,0xfffff
    800054dc:	7e4080e7          	jalr	2020(ra) # 80004cbc <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800054e0:	00813083          	ld	ra,8(sp)
    800054e4:	00013403          	ld	s0,0(sp)
    800054e8:	01010113          	addi	sp,sp,16
    800054ec:	00008067          	ret

00000000800054f0 <_ZN12ProducerSync3runEv>:
    void run() override {
    800054f0:	ff010113          	addi	sp,sp,-16
    800054f4:	00113423          	sd	ra,8(sp)
    800054f8:	00813023          	sd	s0,0(sp)
    800054fc:	01010413          	addi	s0,sp,16
        producer(td);
    80005500:	02053583          	ld	a1,32(a0)
    80005504:	00000097          	auipc	ra,0x0
    80005508:	878080e7          	jalr	-1928(ra) # 80004d7c <_ZN12ProducerSync8producerEPv>
    }
    8000550c:	00813083          	ld	ra,8(sp)
    80005510:	00013403          	ld	s0,0(sp)
    80005514:	01010113          	addi	sp,sp,16
    80005518:	00008067          	ret

000000008000551c <_ZN12ConsumerSync3runEv>:
    void run() override {
    8000551c:	ff010113          	addi	sp,sp,-16
    80005520:	00113423          	sd	ra,8(sp)
    80005524:	00813023          	sd	s0,0(sp)
    80005528:	01010413          	addi	s0,sp,16
        consumer(td);
    8000552c:	02053583          	ld	a1,32(a0)
    80005530:	00000097          	auipc	ra,0x0
    80005534:	8e0080e7          	jalr	-1824(ra) # 80004e10 <_ZN12ConsumerSync8consumerEPv>
    }
    80005538:	00813083          	ld	ra,8(sp)
    8000553c:	00013403          	ld	s0,0(sp)
    80005540:	01010113          	addi	sp,sp,16
    80005544:	00008067          	ret

0000000080005548 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005548:	fe010113          	addi	sp,sp,-32
    8000554c:	00113c23          	sd	ra,24(sp)
    80005550:	00813823          	sd	s0,16(sp)
    80005554:	00913423          	sd	s1,8(sp)
    80005558:	02010413          	addi	s0,sp,32
    8000555c:	00050493          	mv	s1,a0
    LOCK();
    80005560:	00100613          	li	a2,1
    80005564:	00000593          	li	a1,0
    80005568:	00006517          	auipc	a0,0x6
    8000556c:	46850513          	addi	a0,a0,1128 # 8000b9d0 <lockPrint>
    80005570:	ffffc097          	auipc	ra,0xffffc
    80005574:	bb4080e7          	jalr	-1100(ra) # 80001124 <copy_and_swap>
    80005578:	00050863          	beqz	a0,80005588 <_Z11printStringPKc+0x40>
    8000557c:	ffffc097          	auipc	ra,0xffffc
    80005580:	ce0080e7          	jalr	-800(ra) # 8000125c <_Z15thread_dispatchv>
    80005584:	fddff06f          	j	80005560 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005588:	0004c503          	lbu	a0,0(s1)
    8000558c:	00050a63          	beqz	a0,800055a0 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005590:	ffffc097          	auipc	ra,0xffffc
    80005594:	ebc080e7          	jalr	-324(ra) # 8000144c <_Z4putcc>
        string++;
    80005598:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000559c:	fedff06f          	j	80005588 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800055a0:	00000613          	li	a2,0
    800055a4:	00100593          	li	a1,1
    800055a8:	00006517          	auipc	a0,0x6
    800055ac:	42850513          	addi	a0,a0,1064 # 8000b9d0 <lockPrint>
    800055b0:	ffffc097          	auipc	ra,0xffffc
    800055b4:	b74080e7          	jalr	-1164(ra) # 80001124 <copy_and_swap>
    800055b8:	fe0514e3          	bnez	a0,800055a0 <_Z11printStringPKc+0x58>
}
    800055bc:	01813083          	ld	ra,24(sp)
    800055c0:	01013403          	ld	s0,16(sp)
    800055c4:	00813483          	ld	s1,8(sp)
    800055c8:	02010113          	addi	sp,sp,32
    800055cc:	00008067          	ret

00000000800055d0 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800055d0:	fd010113          	addi	sp,sp,-48
    800055d4:	02113423          	sd	ra,40(sp)
    800055d8:	02813023          	sd	s0,32(sp)
    800055dc:	00913c23          	sd	s1,24(sp)
    800055e0:	01213823          	sd	s2,16(sp)
    800055e4:	01313423          	sd	s3,8(sp)
    800055e8:	01413023          	sd	s4,0(sp)
    800055ec:	03010413          	addi	s0,sp,48
    800055f0:	00050993          	mv	s3,a0
    800055f4:	00058a13          	mv	s4,a1
    LOCK();
    800055f8:	00100613          	li	a2,1
    800055fc:	00000593          	li	a1,0
    80005600:	00006517          	auipc	a0,0x6
    80005604:	3d050513          	addi	a0,a0,976 # 8000b9d0 <lockPrint>
    80005608:	ffffc097          	auipc	ra,0xffffc
    8000560c:	b1c080e7          	jalr	-1252(ra) # 80001124 <copy_and_swap>
    80005610:	00050863          	beqz	a0,80005620 <_Z9getStringPci+0x50>
    80005614:	ffffc097          	auipc	ra,0xffffc
    80005618:	c48080e7          	jalr	-952(ra) # 8000125c <_Z15thread_dispatchv>
    8000561c:	fddff06f          	j	800055f8 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; i++){
    80005620:	00000493          	li	s1,0
    80005624:	00048913          	mv	s2,s1
    80005628:	0014849b          	addiw	s1,s1,1
    8000562c:	0344d463          	bge	s1,s4,80005654 <_Z9getStringPci+0x84>
        cc = getc();
    80005630:	ffffc097          	auipc	ra,0xffffc
    80005634:	de8080e7          	jalr	-536(ra) # 80001418 <_Z4getcv>
        if(cc < 1)
    80005638:	00050e63          	beqz	a0,80005654 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i] = c;
    8000563c:	012987b3          	add	a5,s3,s2
    80005640:	00a78023          	sb	a0,0(a5)
        if(c == '\n' || c == '\r')
    80005644:	00a00793          	li	a5,10
    80005648:	00f50663          	beq	a0,a5,80005654 <_Z9getStringPci+0x84>
    8000564c:	00d00793          	li	a5,13
    80005650:	fcf51ae3          	bne	a0,a5,80005624 <_Z9getStringPci+0x54>
            break;
    }
    buf[i] = '\0';
    80005654:	01298933          	add	s2,s3,s2
    80005658:	00090023          	sb	zero,0(s2)

    UNLOCK();
    8000565c:	00000613          	li	a2,0
    80005660:	00100593          	li	a1,1
    80005664:	00006517          	auipc	a0,0x6
    80005668:	36c50513          	addi	a0,a0,876 # 8000b9d0 <lockPrint>
    8000566c:	ffffc097          	auipc	ra,0xffffc
    80005670:	ab8080e7          	jalr	-1352(ra) # 80001124 <copy_and_swap>
    80005674:	fe0514e3          	bnez	a0,8000565c <_Z9getStringPci+0x8c>
    return buf;
}
    80005678:	00098513          	mv	a0,s3
    8000567c:	02813083          	ld	ra,40(sp)
    80005680:	02013403          	ld	s0,32(sp)
    80005684:	01813483          	ld	s1,24(sp)
    80005688:	01013903          	ld	s2,16(sp)
    8000568c:	00813983          	ld	s3,8(sp)
    80005690:	00013a03          	ld	s4,0(sp)
    80005694:	03010113          	addi	sp,sp,48
    80005698:	00008067          	ret

000000008000569c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000569c:	ff010113          	addi	sp,sp,-16
    800056a0:	00813423          	sd	s0,8(sp)
    800056a4:	01010413          	addi	s0,sp,16
    800056a8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800056ac:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800056b0:	0006c603          	lbu	a2,0(a3)
    800056b4:	fd06071b          	addiw	a4,a2,-48
    800056b8:	0ff77713          	andi	a4,a4,255
    800056bc:	00900793          	li	a5,9
    800056c0:	02e7e063          	bltu	a5,a4,800056e0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800056c4:	0025179b          	slliw	a5,a0,0x2
    800056c8:	00a787bb          	addw	a5,a5,a0
    800056cc:	0017979b          	slliw	a5,a5,0x1
    800056d0:	00168693          	addi	a3,a3,1
    800056d4:	00c787bb          	addw	a5,a5,a2
    800056d8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800056dc:	fd5ff06f          	j	800056b0 <_Z11stringToIntPKc+0x14>
    return n;
}
    800056e0:	00813403          	ld	s0,8(sp)
    800056e4:	01010113          	addi	sp,sp,16
    800056e8:	00008067          	ret

00000000800056ec <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800056ec:	fc010113          	addi	sp,sp,-64
    800056f0:	02113c23          	sd	ra,56(sp)
    800056f4:	02813823          	sd	s0,48(sp)
    800056f8:	02913423          	sd	s1,40(sp)
    800056fc:	03213023          	sd	s2,32(sp)
    80005700:	01313c23          	sd	s3,24(sp)
    80005704:	04010413          	addi	s0,sp,64
    80005708:	00050493          	mv	s1,a0
    8000570c:	00058913          	mv	s2,a1
    80005710:	00060993          	mv	s3,a2
    LOCK();
    80005714:	00100613          	li	a2,1
    80005718:	00000593          	li	a1,0
    8000571c:	00006517          	auipc	a0,0x6
    80005720:	2b450513          	addi	a0,a0,692 # 8000b9d0 <lockPrint>
    80005724:	ffffc097          	auipc	ra,0xffffc
    80005728:	a00080e7          	jalr	-1536(ra) # 80001124 <copy_and_swap>
    8000572c:	00050863          	beqz	a0,8000573c <_Z8printIntiii+0x50>
    80005730:	ffffc097          	auipc	ra,0xffffc
    80005734:	b2c080e7          	jalr	-1236(ra) # 8000125c <_Z15thread_dispatchv>
    80005738:	fddff06f          	j	80005714 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000573c:	00098463          	beqz	s3,80005744 <_Z8printIntiii+0x58>
    80005740:	0804c463          	bltz	s1,800057c8 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005744:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005748:	00000593          	li	a1,0
    }

    i = 0;
    8000574c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005750:	0009079b          	sext.w	a5,s2
    80005754:	0325773b          	remuw	a4,a0,s2
    80005758:	00048613          	mv	a2,s1
    8000575c:	0014849b          	addiw	s1,s1,1
    80005760:	02071693          	slli	a3,a4,0x20
    80005764:	0206d693          	srli	a3,a3,0x20
    80005768:	00006717          	auipc	a4,0x6
    8000576c:	10870713          	addi	a4,a4,264 # 8000b870 <digits>
    80005770:	00d70733          	add	a4,a4,a3
    80005774:	00074683          	lbu	a3,0(a4)
    80005778:	fd040713          	addi	a4,s0,-48
    8000577c:	00c70733          	add	a4,a4,a2
    80005780:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005784:	0005071b          	sext.w	a4,a0
    80005788:	0325553b          	divuw	a0,a0,s2
    8000578c:	fcf772e3          	bgeu	a4,a5,80005750 <_Z8printIntiii+0x64>
    if(neg)
    80005790:	00058c63          	beqz	a1,800057a8 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005794:	fd040793          	addi	a5,s0,-48
    80005798:	009784b3          	add	s1,a5,s1
    8000579c:	02d00793          	li	a5,45
    800057a0:	fef48823          	sb	a5,-16(s1)
    800057a4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800057a8:	fff4849b          	addiw	s1,s1,-1
    800057ac:	0204c463          	bltz	s1,800057d4 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800057b0:	fd040793          	addi	a5,s0,-48
    800057b4:	009787b3          	add	a5,a5,s1
    800057b8:	ff07c503          	lbu	a0,-16(a5)
    800057bc:	ffffc097          	auipc	ra,0xffffc
    800057c0:	c90080e7          	jalr	-880(ra) # 8000144c <_Z4putcc>
    800057c4:	fe5ff06f          	j	800057a8 <_Z8printIntiii+0xbc>
        x = -xx;
    800057c8:	4090053b          	negw	a0,s1
        neg = 1;
    800057cc:	00100593          	li	a1,1
        x = -xx;
    800057d0:	f7dff06f          	j	8000574c <_Z8printIntiii+0x60>

    UNLOCK();
    800057d4:	00000613          	li	a2,0
    800057d8:	00100593          	li	a1,1
    800057dc:	00006517          	auipc	a0,0x6
    800057e0:	1f450513          	addi	a0,a0,500 # 8000b9d0 <lockPrint>
    800057e4:	ffffc097          	auipc	ra,0xffffc
    800057e8:	940080e7          	jalr	-1728(ra) # 80001124 <copy_and_swap>
    800057ec:	fe0514e3          	bnez	a0,800057d4 <_Z8printIntiii+0xe8>
}
    800057f0:	03813083          	ld	ra,56(sp)
    800057f4:	03013403          	ld	s0,48(sp)
    800057f8:	02813483          	ld	s1,40(sp)
    800057fc:	02013903          	ld	s2,32(sp)
    80005800:	01813983          	ld	s3,24(sp)
    80005804:	04010113          	addi	sp,sp,64
    80005808:	00008067          	ret

000000008000580c <_Z24print_char_pointer_valuePKc>:

void print_char_pointer_value(const char* ptr) {
    8000580c:	fc010113          	addi	sp,sp,-64
    80005810:	02113c23          	sd	ra,56(sp)
    80005814:	02813823          	sd	s0,48(sp)
    80005818:	02913423          	sd	s1,40(sp)
    8000581c:	04010413          	addi	s0,sp,64
    80005820:	00050493          	mv	s1,a0
    LOCK();
    80005824:	00100613          	li	a2,1
    80005828:	00000593          	li	a1,0
    8000582c:	00006517          	auipc	a0,0x6
    80005830:	1a450513          	addi	a0,a0,420 # 8000b9d0 <lockPrint>
    80005834:	ffffc097          	auipc	ra,0xffffc
    80005838:	8f0080e7          	jalr	-1808(ra) # 80001124 <copy_and_swap>
    8000583c:	00050863          	beqz	a0,8000584c <_Z24print_char_pointer_valuePKc+0x40>
    80005840:	ffffc097          	auipc	ra,0xffffc
    80005844:	a1c080e7          	jalr	-1508(ra) # 8000125c <_Z15thread_dispatchv>
    80005848:	fddff06f          	j	80005824 <_Z24print_char_pointer_valuePKc+0x18>
    // Convert the memory address to hexadecimal
    unsigned long address = (unsigned long)ptr;
    8000584c:	00048513          	mv	a0,s1
    char buffer[17]; // Buffer to store hexadecimal representation (16 characters + null terminator)
    int i;
    buffer[16] = '\0'; // Null-terminate the buffer
    80005850:	fc040c23          	sb	zero,-40(s0)

    int x = 0;
    // Print the memory address character by character
    for (i = 15; i >= 0; i--) {
    80005854:	00f00493          	li	s1,15
    80005858:	0200006f          	j	80005878 <_Z24print_char_pointer_valuePKc+0x6c>
        int digit = address & 0xF; // Get the least significant nibble
        buffer[i] = (digit < 10) ? ('0' + digit) : ('a' + digit - 10); // Convert to hexadecimal character
    8000585c:	05778793          	addi	a5,a5,87
    80005860:	fe040713          	addi	a4,s0,-32
    80005864:	00970733          	add	a4,a4,s1
    80005868:	fef70423          	sb	a5,-24(a4)
        address >>= 4; // Shift right by 4 bits for the next nibble
    8000586c:	00455513          	srli	a0,a0,0x4
        if(address == 0){
    80005870:	02050263          	beqz	a0,80005894 <_Z24print_char_pointer_valuePKc+0x88>
    for (i = 15; i >= 0; i--) {
    80005874:	fff4849b          	addiw	s1,s1,-1
    80005878:	0004cc63          	bltz	s1,80005890 <_Z24print_char_pointer_valuePKc+0x84>
        int digit = address & 0xF; // Get the least significant nibble
    8000587c:	00f57793          	andi	a5,a0,15
        buffer[i] = (digit < 10) ? ('0' + digit) : ('a' + digit - 10); // Convert to hexadecimal character
    80005880:	00900713          	li	a4,9
    80005884:	fcf74ce3          	blt	a4,a5,8000585c <_Z24print_char_pointer_valuePKc+0x50>
    80005888:	03078793          	addi	a5,a5,48
    8000588c:	fd5ff06f          	j	80005860 <_Z24print_char_pointer_valuePKc+0x54>
    int x = 0;
    80005890:	00000493          	li	s1,0
            break;
        }
    }

    // Print the hexadecimal representation using putc
    for (i = x; i < 16; i++) {
    80005894:	00f00793          	li	a5,15
    80005898:	0297c063          	blt	a5,s1,800058b8 <_Z24print_char_pointer_valuePKc+0xac>
        putc(buffer[i]);
    8000589c:	fe040793          	addi	a5,s0,-32
    800058a0:	009787b3          	add	a5,a5,s1
    800058a4:	fe87c503          	lbu	a0,-24(a5)
    800058a8:	ffffc097          	auipc	ra,0xffffc
    800058ac:	ba4080e7          	jalr	-1116(ra) # 8000144c <_Z4putcc>
    for (i = x; i < 16; i++) {
    800058b0:	0014849b          	addiw	s1,s1,1
    800058b4:	fe1ff06f          	j	80005894 <_Z24print_char_pointer_valuePKc+0x88>
    }
    UNLOCK();
    800058b8:	00000613          	li	a2,0
    800058bc:	00100593          	li	a1,1
    800058c0:	00006517          	auipc	a0,0x6
    800058c4:	11050513          	addi	a0,a0,272 # 8000b9d0 <lockPrint>
    800058c8:	ffffc097          	auipc	ra,0xffffc
    800058cc:	85c080e7          	jalr	-1956(ra) # 80001124 <copy_and_swap>
    800058d0:	fe0514e3          	bnez	a0,800058b8 <_Z24print_char_pointer_valuePKc+0xac>
    800058d4:	03813083          	ld	ra,56(sp)
    800058d8:	03013403          	ld	s0,48(sp)
    800058dc:	02813483          	ld	s1,40(sp)
    800058e0:	04010113          	addi	sp,sp,64
    800058e4:	00008067          	ret

00000000800058e8 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800058e8:	fd010113          	addi	sp,sp,-48
    800058ec:	02113423          	sd	ra,40(sp)
    800058f0:	02813023          	sd	s0,32(sp)
    800058f4:	00913c23          	sd	s1,24(sp)
    800058f8:	01213823          	sd	s2,16(sp)
    800058fc:	01313423          	sd	s3,8(sp)
    80005900:	03010413          	addi	s0,sp,48
    80005904:	00050493          	mv	s1,a0
    80005908:	00058913          	mv	s2,a1
    8000590c:	0015879b          	addiw	a5,a1,1
    80005910:	0007851b          	sext.w	a0,a5
    80005914:	00f4a023          	sw	a5,0(s1)
    80005918:	0004a823          	sw	zero,16(s1)
    8000591c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005920:	00251513          	slli	a0,a0,0x2
    80005924:	ffffc097          	auipc	ra,0xffffc
    80005928:	858080e7          	jalr	-1960(ra) # 8000117c <_Z9mem_allocm>
    8000592c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005930:	01000513          	li	a0,16
    80005934:	ffffc097          	auipc	ra,0xffffc
    80005938:	6b8080e7          	jalr	1720(ra) # 80001fec <_Znwm>
    8000593c:	00050993          	mv	s3,a0
    80005940:	00000593          	li	a1,0
    80005944:	ffffd097          	auipc	ra,0xffffd
    80005948:	91c080e7          	jalr	-1764(ra) # 80002260 <_ZN9SemaphoreC1Ej>
    8000594c:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005950:	01000513          	li	a0,16
    80005954:	ffffc097          	auipc	ra,0xffffc
    80005958:	698080e7          	jalr	1688(ra) # 80001fec <_Znwm>
    8000595c:	00050993          	mv	s3,a0
    80005960:	00090593          	mv	a1,s2
    80005964:	ffffd097          	auipc	ra,0xffffd
    80005968:	8fc080e7          	jalr	-1796(ra) # 80002260 <_ZN9SemaphoreC1Ej>
    8000596c:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005970:	01000513          	li	a0,16
    80005974:	ffffc097          	auipc	ra,0xffffc
    80005978:	678080e7          	jalr	1656(ra) # 80001fec <_Znwm>
    8000597c:	00050913          	mv	s2,a0
    80005980:	00100593          	li	a1,1
    80005984:	ffffd097          	auipc	ra,0xffffd
    80005988:	8dc080e7          	jalr	-1828(ra) # 80002260 <_ZN9SemaphoreC1Ej>
    8000598c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005990:	01000513          	li	a0,16
    80005994:	ffffc097          	auipc	ra,0xffffc
    80005998:	658080e7          	jalr	1624(ra) # 80001fec <_Znwm>
    8000599c:	00050913          	mv	s2,a0
    800059a0:	00100593          	li	a1,1
    800059a4:	ffffd097          	auipc	ra,0xffffd
    800059a8:	8bc080e7          	jalr	-1860(ra) # 80002260 <_ZN9SemaphoreC1Ej>
    800059ac:	0324b823          	sd	s2,48(s1)
}
    800059b0:	02813083          	ld	ra,40(sp)
    800059b4:	02013403          	ld	s0,32(sp)
    800059b8:	01813483          	ld	s1,24(sp)
    800059bc:	01013903          	ld	s2,16(sp)
    800059c0:	00813983          	ld	s3,8(sp)
    800059c4:	03010113          	addi	sp,sp,48
    800059c8:	00008067          	ret
    800059cc:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800059d0:	00098513          	mv	a0,s3
    800059d4:	ffffc097          	auipc	ra,0xffffc
    800059d8:	668080e7          	jalr	1640(ra) # 8000203c <_ZdlPv>
    800059dc:	00048513          	mv	a0,s1
    800059e0:	00007097          	auipc	ra,0x7
    800059e4:	0d8080e7          	jalr	216(ra) # 8000cab8 <_Unwind_Resume>
    800059e8:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800059ec:	00098513          	mv	a0,s3
    800059f0:	ffffc097          	auipc	ra,0xffffc
    800059f4:	64c080e7          	jalr	1612(ra) # 8000203c <_ZdlPv>
    800059f8:	00048513          	mv	a0,s1
    800059fc:	00007097          	auipc	ra,0x7
    80005a00:	0bc080e7          	jalr	188(ra) # 8000cab8 <_Unwind_Resume>
    80005a04:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005a08:	00090513          	mv	a0,s2
    80005a0c:	ffffc097          	auipc	ra,0xffffc
    80005a10:	630080e7          	jalr	1584(ra) # 8000203c <_ZdlPv>
    80005a14:	00048513          	mv	a0,s1
    80005a18:	00007097          	auipc	ra,0x7
    80005a1c:	0a0080e7          	jalr	160(ra) # 8000cab8 <_Unwind_Resume>
    80005a20:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005a24:	00090513          	mv	a0,s2
    80005a28:	ffffc097          	auipc	ra,0xffffc
    80005a2c:	614080e7          	jalr	1556(ra) # 8000203c <_ZdlPv>
    80005a30:	00048513          	mv	a0,s1
    80005a34:	00007097          	auipc	ra,0x7
    80005a38:	084080e7          	jalr	132(ra) # 8000cab8 <_Unwind_Resume>

0000000080005a3c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005a3c:	fe010113          	addi	sp,sp,-32
    80005a40:	00113c23          	sd	ra,24(sp)
    80005a44:	00813823          	sd	s0,16(sp)
    80005a48:	00913423          	sd	s1,8(sp)
    80005a4c:	01213023          	sd	s2,0(sp)
    80005a50:	02010413          	addi	s0,sp,32
    80005a54:	00050493          	mv	s1,a0
    80005a58:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005a5c:	01853503          	ld	a0,24(a0)
    80005a60:	ffffd097          	auipc	ra,0xffffd
    80005a64:	838080e7          	jalr	-1992(ra) # 80002298 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005a68:	0304b503          	ld	a0,48(s1)
    80005a6c:	ffffd097          	auipc	ra,0xffffd
    80005a70:	82c080e7          	jalr	-2004(ra) # 80002298 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005a74:	0084b783          	ld	a5,8(s1)
    80005a78:	0144a703          	lw	a4,20(s1)
    80005a7c:	00271713          	slli	a4,a4,0x2
    80005a80:	00e787b3          	add	a5,a5,a4
    80005a84:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005a88:	0144a783          	lw	a5,20(s1)
    80005a8c:	0017879b          	addiw	a5,a5,1
    80005a90:	0004a703          	lw	a4,0(s1)
    80005a94:	02e7e7bb          	remw	a5,a5,a4
    80005a98:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005a9c:	0304b503          	ld	a0,48(s1)
    80005aa0:	ffffd097          	auipc	ra,0xffffd
    80005aa4:	824080e7          	jalr	-2012(ra) # 800022c4 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005aa8:	0204b503          	ld	a0,32(s1)
    80005aac:	ffffd097          	auipc	ra,0xffffd
    80005ab0:	818080e7          	jalr	-2024(ra) # 800022c4 <_ZN9Semaphore6signalEv>

}
    80005ab4:	01813083          	ld	ra,24(sp)
    80005ab8:	01013403          	ld	s0,16(sp)
    80005abc:	00813483          	ld	s1,8(sp)
    80005ac0:	00013903          	ld	s2,0(sp)
    80005ac4:	02010113          	addi	sp,sp,32
    80005ac8:	00008067          	ret

0000000080005acc <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005acc:	fe010113          	addi	sp,sp,-32
    80005ad0:	00113c23          	sd	ra,24(sp)
    80005ad4:	00813823          	sd	s0,16(sp)
    80005ad8:	00913423          	sd	s1,8(sp)
    80005adc:	01213023          	sd	s2,0(sp)
    80005ae0:	02010413          	addi	s0,sp,32
    80005ae4:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005ae8:	02053503          	ld	a0,32(a0)
    80005aec:	ffffc097          	auipc	ra,0xffffc
    80005af0:	7ac080e7          	jalr	1964(ra) # 80002298 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005af4:	0284b503          	ld	a0,40(s1)
    80005af8:	ffffc097          	auipc	ra,0xffffc
    80005afc:	7a0080e7          	jalr	1952(ra) # 80002298 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005b00:	0084b703          	ld	a4,8(s1)
    80005b04:	0104a783          	lw	a5,16(s1)
    80005b08:	00279693          	slli	a3,a5,0x2
    80005b0c:	00d70733          	add	a4,a4,a3
    80005b10:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005b14:	0017879b          	addiw	a5,a5,1
    80005b18:	0004a703          	lw	a4,0(s1)
    80005b1c:	02e7e7bb          	remw	a5,a5,a4
    80005b20:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005b24:	0284b503          	ld	a0,40(s1)
    80005b28:	ffffc097          	auipc	ra,0xffffc
    80005b2c:	79c080e7          	jalr	1948(ra) # 800022c4 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005b30:	0184b503          	ld	a0,24(s1)
    80005b34:	ffffc097          	auipc	ra,0xffffc
    80005b38:	790080e7          	jalr	1936(ra) # 800022c4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005b3c:	00090513          	mv	a0,s2
    80005b40:	01813083          	ld	ra,24(sp)
    80005b44:	01013403          	ld	s0,16(sp)
    80005b48:	00813483          	ld	s1,8(sp)
    80005b4c:	00013903          	ld	s2,0(sp)
    80005b50:	02010113          	addi	sp,sp,32
    80005b54:	00008067          	ret

0000000080005b58 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005b58:	fe010113          	addi	sp,sp,-32
    80005b5c:	00113c23          	sd	ra,24(sp)
    80005b60:	00813823          	sd	s0,16(sp)
    80005b64:	00913423          	sd	s1,8(sp)
    80005b68:	01213023          	sd	s2,0(sp)
    80005b6c:	02010413          	addi	s0,sp,32
    80005b70:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005b74:	02853503          	ld	a0,40(a0)
    80005b78:	ffffc097          	auipc	ra,0xffffc
    80005b7c:	720080e7          	jalr	1824(ra) # 80002298 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005b80:	0304b503          	ld	a0,48(s1)
    80005b84:	ffffc097          	auipc	ra,0xffffc
    80005b88:	714080e7          	jalr	1812(ra) # 80002298 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005b8c:	0144a783          	lw	a5,20(s1)
    80005b90:	0104a903          	lw	s2,16(s1)
    80005b94:	0327ce63          	blt	a5,s2,80005bd0 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005b98:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005b9c:	0304b503          	ld	a0,48(s1)
    80005ba0:	ffffc097          	auipc	ra,0xffffc
    80005ba4:	724080e7          	jalr	1828(ra) # 800022c4 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005ba8:	0284b503          	ld	a0,40(s1)
    80005bac:	ffffc097          	auipc	ra,0xffffc
    80005bb0:	718080e7          	jalr	1816(ra) # 800022c4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005bb4:	00090513          	mv	a0,s2
    80005bb8:	01813083          	ld	ra,24(sp)
    80005bbc:	01013403          	ld	s0,16(sp)
    80005bc0:	00813483          	ld	s1,8(sp)
    80005bc4:	00013903          	ld	s2,0(sp)
    80005bc8:	02010113          	addi	sp,sp,32
    80005bcc:	00008067          	ret
        ret = cap - head + tail;
    80005bd0:	0004a703          	lw	a4,0(s1)
    80005bd4:	4127093b          	subw	s2,a4,s2
    80005bd8:	00f9093b          	addw	s2,s2,a5
    80005bdc:	fc1ff06f          	j	80005b9c <_ZN9BufferCPP6getCntEv+0x44>

0000000080005be0 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005be0:	fe010113          	addi	sp,sp,-32
    80005be4:	00113c23          	sd	ra,24(sp)
    80005be8:	00813823          	sd	s0,16(sp)
    80005bec:	00913423          	sd	s1,8(sp)
    80005bf0:	02010413          	addi	s0,sp,32
    80005bf4:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005bf8:	00a00513          	li	a0,10
    80005bfc:	ffffc097          	auipc	ra,0xffffc
    80005c00:	7ec080e7          	jalr	2028(ra) # 800023e8 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005c04:	00003517          	auipc	a0,0x3
    80005c08:	77450513          	addi	a0,a0,1908 # 80009378 <CONSOLE_STATUS+0x368>
    80005c0c:	00000097          	auipc	ra,0x0
    80005c10:	93c080e7          	jalr	-1732(ra) # 80005548 <_Z11printStringPKc>
    while (getCnt()) {
    80005c14:	00048513          	mv	a0,s1
    80005c18:	00000097          	auipc	ra,0x0
    80005c1c:	f40080e7          	jalr	-192(ra) # 80005b58 <_ZN9BufferCPP6getCntEv>
    80005c20:	02050c63          	beqz	a0,80005c58 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005c24:	0084b783          	ld	a5,8(s1)
    80005c28:	0104a703          	lw	a4,16(s1)
    80005c2c:	00271713          	slli	a4,a4,0x2
    80005c30:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005c34:	0007c503          	lbu	a0,0(a5)
    80005c38:	ffffc097          	auipc	ra,0xffffc
    80005c3c:	7b0080e7          	jalr	1968(ra) # 800023e8 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005c40:	0104a783          	lw	a5,16(s1)
    80005c44:	0017879b          	addiw	a5,a5,1
    80005c48:	0004a703          	lw	a4,0(s1)
    80005c4c:	02e7e7bb          	remw	a5,a5,a4
    80005c50:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005c54:	fc1ff06f          	j	80005c14 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005c58:	02100513          	li	a0,33
    80005c5c:	ffffc097          	auipc	ra,0xffffc
    80005c60:	78c080e7          	jalr	1932(ra) # 800023e8 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005c64:	00a00513          	li	a0,10
    80005c68:	ffffc097          	auipc	ra,0xffffc
    80005c6c:	780080e7          	jalr	1920(ra) # 800023e8 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005c70:	0084b503          	ld	a0,8(s1)
    80005c74:	ffffb097          	auipc	ra,0xffffb
    80005c78:	53c080e7          	jalr	1340(ra) # 800011b0 <_Z8mem_freePv>
    delete itemAvailable;
    80005c7c:	0204b503          	ld	a0,32(s1)
    80005c80:	00050863          	beqz	a0,80005c90 <_ZN9BufferCPPD1Ev+0xb0>
    80005c84:	00053783          	ld	a5,0(a0)
    80005c88:	0087b783          	ld	a5,8(a5)
    80005c8c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005c90:	0184b503          	ld	a0,24(s1)
    80005c94:	00050863          	beqz	a0,80005ca4 <_ZN9BufferCPPD1Ev+0xc4>
    80005c98:	00053783          	ld	a5,0(a0)
    80005c9c:	0087b783          	ld	a5,8(a5)
    80005ca0:	000780e7          	jalr	a5
    delete mutexTail;
    80005ca4:	0304b503          	ld	a0,48(s1)
    80005ca8:	00050863          	beqz	a0,80005cb8 <_ZN9BufferCPPD1Ev+0xd8>
    80005cac:	00053783          	ld	a5,0(a0)
    80005cb0:	0087b783          	ld	a5,8(a5)
    80005cb4:	000780e7          	jalr	a5
    delete mutexHead;
    80005cb8:	0284b503          	ld	a0,40(s1)
    80005cbc:	00050863          	beqz	a0,80005ccc <_ZN9BufferCPPD1Ev+0xec>
    80005cc0:	00053783          	ld	a5,0(a0)
    80005cc4:	0087b783          	ld	a5,8(a5)
    80005cc8:	000780e7          	jalr	a5
}
    80005ccc:	01813083          	ld	ra,24(sp)
    80005cd0:	01013403          	ld	s0,16(sp)
    80005cd4:	00813483          	ld	s1,8(sp)
    80005cd8:	02010113          	addi	sp,sp,32
    80005cdc:	00008067          	ret

0000000080005ce0 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005ce0:	fe010113          	addi	sp,sp,-32
    80005ce4:	00113c23          	sd	ra,24(sp)
    80005ce8:	00813823          	sd	s0,16(sp)
    80005cec:	00913423          	sd	s1,8(sp)
    80005cf0:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005cf4:	00003517          	auipc	a0,0x3
    80005cf8:	69c50513          	addi	a0,a0,1692 # 80009390 <CONSOLE_STATUS+0x380>
    80005cfc:	00000097          	auipc	ra,0x0
    80005d00:	84c080e7          	jalr	-1972(ra) # 80005548 <_Z11printStringPKc>
    int test = getc() - '0';
    80005d04:	ffffb097          	auipc	ra,0xffffb
    80005d08:	714080e7          	jalr	1812(ra) # 80001418 <_Z4getcv>
    80005d0c:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005d10:	ffffb097          	auipc	ra,0xffffb
    80005d14:	708080e7          	jalr	1800(ra) # 80001418 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005d18:	00700793          	li	a5,7
    80005d1c:	1097e263          	bltu	a5,s1,80005e20 <_Z8userMainv+0x140>
    80005d20:	00249493          	slli	s1,s1,0x2
    80005d24:	00004717          	auipc	a4,0x4
    80005d28:	8c470713          	addi	a4,a4,-1852 # 800095e8 <CONSOLE_STATUS+0x5d8>
    80005d2c:	00e484b3          	add	s1,s1,a4
    80005d30:	0004a783          	lw	a5,0(s1)
    80005d34:	00e787b3          	add	a5,a5,a4
    80005d38:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80005d3c:	fffff097          	auipc	ra,0xfffff
    80005d40:	e84080e7          	jalr	-380(ra) # 80004bc0 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005d44:	00003517          	auipc	a0,0x3
    80005d48:	66c50513          	addi	a0,a0,1644 # 800093b0 <CONSOLE_STATUS+0x3a0>
    80005d4c:	fffff097          	auipc	ra,0xfffff
    80005d50:	7fc080e7          	jalr	2044(ra) # 80005548 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005d54:	01813083          	ld	ra,24(sp)
    80005d58:	01013403          	ld	s0,16(sp)
    80005d5c:	00813483          	ld	s1,8(sp)
    80005d60:	02010113          	addi	sp,sp,32
    80005d64:	00008067          	ret
            Threads_CPP_API_test();
    80005d68:	ffffe097          	auipc	ra,0xffffe
    80005d6c:	cf8080e7          	jalr	-776(ra) # 80003a60 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005d70:	00003517          	auipc	a0,0x3
    80005d74:	68050513          	addi	a0,a0,1664 # 800093f0 <CONSOLE_STATUS+0x3e0>
    80005d78:	fffff097          	auipc	ra,0xfffff
    80005d7c:	7d0080e7          	jalr	2000(ra) # 80005548 <_Z11printStringPKc>
            break;
    80005d80:	fd5ff06f          	j	80005d54 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80005d84:	ffffd097          	auipc	ra,0xffffd
    80005d88:	524080e7          	jalr	1316(ra) # 800032a8 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005d8c:	00003517          	auipc	a0,0x3
    80005d90:	6a450513          	addi	a0,a0,1700 # 80009430 <CONSOLE_STATUS+0x420>
    80005d94:	fffff097          	auipc	ra,0xfffff
    80005d98:	7b4080e7          	jalr	1972(ra) # 80005548 <_Z11printStringPKc>
            break;
    80005d9c:	fb9ff06f          	j	80005d54 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80005da0:	fffff097          	auipc	ra,0xfffff
    80005da4:	164080e7          	jalr	356(ra) # 80004f04 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005da8:	00003517          	auipc	a0,0x3
    80005dac:	6d850513          	addi	a0,a0,1752 # 80009480 <CONSOLE_STATUS+0x470>
    80005db0:	fffff097          	auipc	ra,0xfffff
    80005db4:	798080e7          	jalr	1944(ra) # 80005548 <_Z11printStringPKc>
            break;
    80005db8:	f9dff06f          	j	80005d54 <_Z8userMainv+0x74>
            testSleeping();
    80005dbc:	00000097          	auipc	ra,0x0
    80005dc0:	11c080e7          	jalr	284(ra) # 80005ed8 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80005dc4:	00003517          	auipc	a0,0x3
    80005dc8:	71450513          	addi	a0,a0,1812 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80005dcc:	fffff097          	auipc	ra,0xfffff
    80005dd0:	77c080e7          	jalr	1916(ra) # 80005548 <_Z11printStringPKc>
            break;
    80005dd4:	f81ff06f          	j	80005d54 <_Z8userMainv+0x74>
            testConsumerProducer();
    80005dd8:	ffffe097          	auipc	ra,0xffffe
    80005ddc:	148080e7          	jalr	328(ra) # 80003f20 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80005de0:	00003517          	auipc	a0,0x3
    80005de4:	72850513          	addi	a0,a0,1832 # 80009508 <CONSOLE_STATUS+0x4f8>
    80005de8:	fffff097          	auipc	ra,0xfffff
    80005dec:	760080e7          	jalr	1888(ra) # 80005548 <_Z11printStringPKc>
            break;
    80005df0:	f65ff06f          	j	80005d54 <_Z8userMainv+0x74>
            System_Mode_test();
    80005df4:	00000097          	auipc	ra,0x0
    80005df8:	658080e7          	jalr	1624(ra) # 8000644c <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005dfc:	00003517          	auipc	a0,0x3
    80005e00:	74c50513          	addi	a0,a0,1868 # 80009548 <CONSOLE_STATUS+0x538>
    80005e04:	fffff097          	auipc	ra,0xfffff
    80005e08:	744080e7          	jalr	1860(ra) # 80005548 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005e0c:	00003517          	auipc	a0,0x3
    80005e10:	75c50513          	addi	a0,a0,1884 # 80009568 <CONSOLE_STATUS+0x558>
    80005e14:	fffff097          	auipc	ra,0xfffff
    80005e18:	734080e7          	jalr	1844(ra) # 80005548 <_Z11printStringPKc>
            break;
    80005e1c:	f39ff06f          	j	80005d54 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005e20:	00003517          	auipc	a0,0x3
    80005e24:	7a050513          	addi	a0,a0,1952 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80005e28:	fffff097          	auipc	ra,0xfffff
    80005e2c:	720080e7          	jalr	1824(ra) # 80005548 <_Z11printStringPKc>
    80005e30:	f25ff06f          	j	80005d54 <_Z8userMainv+0x74>

0000000080005e34 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005e34:	fe010113          	addi	sp,sp,-32
    80005e38:	00113c23          	sd	ra,24(sp)
    80005e3c:	00813823          	sd	s0,16(sp)
    80005e40:	00913423          	sd	s1,8(sp)
    80005e44:	01213023          	sd	s2,0(sp)
    80005e48:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005e4c:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005e50:	00600493          	li	s1,6
    while (--i > 0) {
    80005e54:	fff4849b          	addiw	s1,s1,-1
    80005e58:	04905463          	blez	s1,80005ea0 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005e5c:	00003517          	auipc	a0,0x3
    80005e60:	7ac50513          	addi	a0,a0,1964 # 80009608 <CONSOLE_STATUS+0x5f8>
    80005e64:	fffff097          	auipc	ra,0xfffff
    80005e68:	6e4080e7          	jalr	1764(ra) # 80005548 <_Z11printStringPKc>
        printInt(sleep_time);
    80005e6c:	00000613          	li	a2,0
    80005e70:	00a00593          	li	a1,10
    80005e74:	0009051b          	sext.w	a0,s2
    80005e78:	00000097          	auipc	ra,0x0
    80005e7c:	874080e7          	jalr	-1932(ra) # 800056ec <_Z8printIntiii>
        printString(" !\n");
    80005e80:	00003517          	auipc	a0,0x3
    80005e84:	79050513          	addi	a0,a0,1936 # 80009610 <CONSOLE_STATUS+0x600>
    80005e88:	fffff097          	auipc	ra,0xfffff
    80005e8c:	6c0080e7          	jalr	1728(ra) # 80005548 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005e90:	00090513          	mv	a0,s2
    80005e94:	ffffb097          	auipc	ra,0xffffb
    80005e98:	3f4080e7          	jalr	1012(ra) # 80001288 <_Z10time_sleepm>
    while (--i > 0) {
    80005e9c:	fb9ff06f          	j	80005e54 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005ea0:	00a00793          	li	a5,10
    80005ea4:	02f95933          	divu	s2,s2,a5
    80005ea8:	fff90913          	addi	s2,s2,-1
    80005eac:	00006797          	auipc	a5,0x6
    80005eb0:	b2c78793          	addi	a5,a5,-1236 # 8000b9d8 <_ZL8finished>
    80005eb4:	01278933          	add	s2,a5,s2
    80005eb8:	00100793          	li	a5,1
    80005ebc:	00f90023          	sb	a5,0(s2)
}
    80005ec0:	01813083          	ld	ra,24(sp)
    80005ec4:	01013403          	ld	s0,16(sp)
    80005ec8:	00813483          	ld	s1,8(sp)
    80005ecc:	00013903          	ld	s2,0(sp)
    80005ed0:	02010113          	addi	sp,sp,32
    80005ed4:	00008067          	ret

0000000080005ed8 <_Z12testSleepingv>:

void testSleeping() {
    80005ed8:	fc010113          	addi	sp,sp,-64
    80005edc:	02113c23          	sd	ra,56(sp)
    80005ee0:	02813823          	sd	s0,48(sp)
    80005ee4:	02913423          	sd	s1,40(sp)
    80005ee8:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005eec:	00a00793          	li	a5,10
    80005ef0:	fcf43823          	sd	a5,-48(s0)
    80005ef4:	01400793          	li	a5,20
    80005ef8:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005efc:	00000493          	li	s1,0
    80005f00:	02c0006f          	j	80005f2c <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005f04:	00349793          	slli	a5,s1,0x3
    80005f08:	fd040613          	addi	a2,s0,-48
    80005f0c:	00f60633          	add	a2,a2,a5
    80005f10:	00000597          	auipc	a1,0x0
    80005f14:	f2458593          	addi	a1,a1,-220 # 80005e34 <_ZL9sleepyRunPv>
    80005f18:	fc040513          	addi	a0,s0,-64
    80005f1c:	00f50533          	add	a0,a0,a5
    80005f20:	ffffb097          	auipc	ra,0xffffb
    80005f24:	2c8080e7          	jalr	712(ra) # 800011e8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005f28:	0014849b          	addiw	s1,s1,1
    80005f2c:	00100793          	li	a5,1
    80005f30:	fc97dae3          	bge	a5,s1,80005f04 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005f34:	00006797          	auipc	a5,0x6
    80005f38:	aa47c783          	lbu	a5,-1372(a5) # 8000b9d8 <_ZL8finished>
    80005f3c:	fe078ce3          	beqz	a5,80005f34 <_Z12testSleepingv+0x5c>
    80005f40:	00006797          	auipc	a5,0x6
    80005f44:	a997c783          	lbu	a5,-1383(a5) # 8000b9d9 <_ZL8finished+0x1>
    80005f48:	fe0786e3          	beqz	a5,80005f34 <_Z12testSleepingv+0x5c>
}
    80005f4c:	03813083          	ld	ra,56(sp)
    80005f50:	03013403          	ld	s0,48(sp)
    80005f54:	02813483          	ld	s1,40(sp)
    80005f58:	04010113          	addi	sp,sp,64
    80005f5c:	00008067          	ret

0000000080005f60 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005f60:	fe010113          	addi	sp,sp,-32
    80005f64:	00113c23          	sd	ra,24(sp)
    80005f68:	00813823          	sd	s0,16(sp)
    80005f6c:	00913423          	sd	s1,8(sp)
    80005f70:	01213023          	sd	s2,0(sp)
    80005f74:	02010413          	addi	s0,sp,32
    80005f78:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005f7c:	00100793          	li	a5,1
    80005f80:	02a7f863          	bgeu	a5,a0,80005fb0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005f84:	00a00793          	li	a5,10
    80005f88:	02f577b3          	remu	a5,a0,a5
    80005f8c:	02078e63          	beqz	a5,80005fc8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005f90:	fff48513          	addi	a0,s1,-1
    80005f94:	00000097          	auipc	ra,0x0
    80005f98:	fcc080e7          	jalr	-52(ra) # 80005f60 <_ZL9fibonaccim>
    80005f9c:	00050913          	mv	s2,a0
    80005fa0:	ffe48513          	addi	a0,s1,-2
    80005fa4:	00000097          	auipc	ra,0x0
    80005fa8:	fbc080e7          	jalr	-68(ra) # 80005f60 <_ZL9fibonaccim>
    80005fac:	00a90533          	add	a0,s2,a0
}
    80005fb0:	01813083          	ld	ra,24(sp)
    80005fb4:	01013403          	ld	s0,16(sp)
    80005fb8:	00813483          	ld	s1,8(sp)
    80005fbc:	00013903          	ld	s2,0(sp)
    80005fc0:	02010113          	addi	sp,sp,32
    80005fc4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005fc8:	ffffb097          	auipc	ra,0xffffb
    80005fcc:	294080e7          	jalr	660(ra) # 8000125c <_Z15thread_dispatchv>
    80005fd0:	fc1ff06f          	j	80005f90 <_ZL9fibonaccim+0x30>

0000000080005fd4 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005fd4:	fe010113          	addi	sp,sp,-32
    80005fd8:	00113c23          	sd	ra,24(sp)
    80005fdc:	00813823          	sd	s0,16(sp)
    80005fe0:	00913423          	sd	s1,8(sp)
    80005fe4:	01213023          	sd	s2,0(sp)
    80005fe8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005fec:	00a00493          	li	s1,10
    80005ff0:	0400006f          	j	80006030 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005ff4:	00003517          	auipc	a0,0x3
    80005ff8:	2ec50513          	addi	a0,a0,748 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80005ffc:	fffff097          	auipc	ra,0xfffff
    80006000:	54c080e7          	jalr	1356(ra) # 80005548 <_Z11printStringPKc>
    80006004:	00000613          	li	a2,0
    80006008:	00a00593          	li	a1,10
    8000600c:	00048513          	mv	a0,s1
    80006010:	fffff097          	auipc	ra,0xfffff
    80006014:	6dc080e7          	jalr	1756(ra) # 800056ec <_Z8printIntiii>
    80006018:	00003517          	auipc	a0,0x3
    8000601c:	4b850513          	addi	a0,a0,1208 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80006020:	fffff097          	auipc	ra,0xfffff
    80006024:	528080e7          	jalr	1320(ra) # 80005548 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006028:	0014849b          	addiw	s1,s1,1
    8000602c:	0ff4f493          	andi	s1,s1,255
    80006030:	00c00793          	li	a5,12
    80006034:	fc97f0e3          	bgeu	a5,s1,80005ff4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006038:	00003517          	auipc	a0,0x3
    8000603c:	2b050513          	addi	a0,a0,688 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80006040:	fffff097          	auipc	ra,0xfffff
    80006044:	508080e7          	jalr	1288(ra) # 80005548 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006048:	00500313          	li	t1,5
    thread_dispatch();
    8000604c:	ffffb097          	auipc	ra,0xffffb
    80006050:	210080e7          	jalr	528(ra) # 8000125c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006054:	01000513          	li	a0,16
    80006058:	00000097          	auipc	ra,0x0
    8000605c:	f08080e7          	jalr	-248(ra) # 80005f60 <_ZL9fibonaccim>
    80006060:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006064:	00003517          	auipc	a0,0x3
    80006068:	29450513          	addi	a0,a0,660 # 800092f8 <CONSOLE_STATUS+0x2e8>
    8000606c:	fffff097          	auipc	ra,0xfffff
    80006070:	4dc080e7          	jalr	1244(ra) # 80005548 <_Z11printStringPKc>
    80006074:	00000613          	li	a2,0
    80006078:	00a00593          	li	a1,10
    8000607c:	0009051b          	sext.w	a0,s2
    80006080:	fffff097          	auipc	ra,0xfffff
    80006084:	66c080e7          	jalr	1644(ra) # 800056ec <_Z8printIntiii>
    80006088:	00003517          	auipc	a0,0x3
    8000608c:	44850513          	addi	a0,a0,1096 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80006090:	fffff097          	auipc	ra,0xfffff
    80006094:	4b8080e7          	jalr	1208(ra) # 80005548 <_Z11printStringPKc>
    80006098:	0400006f          	j	800060d8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000609c:	00003517          	auipc	a0,0x3
    800060a0:	24450513          	addi	a0,a0,580 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800060a4:	fffff097          	auipc	ra,0xfffff
    800060a8:	4a4080e7          	jalr	1188(ra) # 80005548 <_Z11printStringPKc>
    800060ac:	00000613          	li	a2,0
    800060b0:	00a00593          	li	a1,10
    800060b4:	00048513          	mv	a0,s1
    800060b8:	fffff097          	auipc	ra,0xfffff
    800060bc:	634080e7          	jalr	1588(ra) # 800056ec <_Z8printIntiii>
    800060c0:	00003517          	auipc	a0,0x3
    800060c4:	41050513          	addi	a0,a0,1040 # 800094d0 <CONSOLE_STATUS+0x4c0>
    800060c8:	fffff097          	auipc	ra,0xfffff
    800060cc:	480080e7          	jalr	1152(ra) # 80005548 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800060d0:	0014849b          	addiw	s1,s1,1
    800060d4:	0ff4f493          	andi	s1,s1,255
    800060d8:	00f00793          	li	a5,15
    800060dc:	fc97f0e3          	bgeu	a5,s1,8000609c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800060e0:	00003517          	auipc	a0,0x3
    800060e4:	22850513          	addi	a0,a0,552 # 80009308 <CONSOLE_STATUS+0x2f8>
    800060e8:	fffff097          	auipc	ra,0xfffff
    800060ec:	460080e7          	jalr	1120(ra) # 80005548 <_Z11printStringPKc>
    finishedD = true;
    800060f0:	00100793          	li	a5,1
    800060f4:	00006717          	auipc	a4,0x6
    800060f8:	8ef70323          	sb	a5,-1818(a4) # 8000b9da <_ZL9finishedD>
    thread_dispatch();
    800060fc:	ffffb097          	auipc	ra,0xffffb
    80006100:	160080e7          	jalr	352(ra) # 8000125c <_Z15thread_dispatchv>
}
    80006104:	01813083          	ld	ra,24(sp)
    80006108:	01013403          	ld	s0,16(sp)
    8000610c:	00813483          	ld	s1,8(sp)
    80006110:	00013903          	ld	s2,0(sp)
    80006114:	02010113          	addi	sp,sp,32
    80006118:	00008067          	ret

000000008000611c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    8000611c:	fe010113          	addi	sp,sp,-32
    80006120:	00113c23          	sd	ra,24(sp)
    80006124:	00813823          	sd	s0,16(sp)
    80006128:	00913423          	sd	s1,8(sp)
    8000612c:	01213023          	sd	s2,0(sp)
    80006130:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006134:	00000493          	li	s1,0
    80006138:	0400006f          	j	80006178 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000613c:	00003517          	auipc	a0,0x3
    80006140:	17450513          	addi	a0,a0,372 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80006144:	fffff097          	auipc	ra,0xfffff
    80006148:	404080e7          	jalr	1028(ra) # 80005548 <_Z11printStringPKc>
    8000614c:	00000613          	li	a2,0
    80006150:	00a00593          	li	a1,10
    80006154:	00048513          	mv	a0,s1
    80006158:	fffff097          	auipc	ra,0xfffff
    8000615c:	594080e7          	jalr	1428(ra) # 800056ec <_Z8printIntiii>
    80006160:	00003517          	auipc	a0,0x3
    80006164:	37050513          	addi	a0,a0,880 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80006168:	fffff097          	auipc	ra,0xfffff
    8000616c:	3e0080e7          	jalr	992(ra) # 80005548 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006170:	0014849b          	addiw	s1,s1,1
    80006174:	0ff4f493          	andi	s1,s1,255
    80006178:	00200793          	li	a5,2
    8000617c:	fc97f0e3          	bgeu	a5,s1,8000613c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006180:	00003517          	auipc	a0,0x3
    80006184:	13850513          	addi	a0,a0,312 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006188:	fffff097          	auipc	ra,0xfffff
    8000618c:	3c0080e7          	jalr	960(ra) # 80005548 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006190:	00700313          	li	t1,7
    thread_dispatch();
    80006194:	ffffb097          	auipc	ra,0xffffb
    80006198:	0c8080e7          	jalr	200(ra) # 8000125c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000619c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800061a0:	00003517          	auipc	a0,0x3
    800061a4:	12850513          	addi	a0,a0,296 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800061a8:	fffff097          	auipc	ra,0xfffff
    800061ac:	3a0080e7          	jalr	928(ra) # 80005548 <_Z11printStringPKc>
    800061b0:	00000613          	li	a2,0
    800061b4:	00a00593          	li	a1,10
    800061b8:	0009051b          	sext.w	a0,s2
    800061bc:	fffff097          	auipc	ra,0xfffff
    800061c0:	530080e7          	jalr	1328(ra) # 800056ec <_Z8printIntiii>
    800061c4:	00003517          	auipc	a0,0x3
    800061c8:	30c50513          	addi	a0,a0,780 # 800094d0 <CONSOLE_STATUS+0x4c0>
    800061cc:	fffff097          	auipc	ra,0xfffff
    800061d0:	37c080e7          	jalr	892(ra) # 80005548 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800061d4:	00c00513          	li	a0,12
    800061d8:	00000097          	auipc	ra,0x0
    800061dc:	d88080e7          	jalr	-632(ra) # 80005f60 <_ZL9fibonaccim>
    800061e0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800061e4:	00003517          	auipc	a0,0x3
    800061e8:	0ec50513          	addi	a0,a0,236 # 800092d0 <CONSOLE_STATUS+0x2c0>
    800061ec:	fffff097          	auipc	ra,0xfffff
    800061f0:	35c080e7          	jalr	860(ra) # 80005548 <_Z11printStringPKc>
    800061f4:	00000613          	li	a2,0
    800061f8:	00a00593          	li	a1,10
    800061fc:	0009051b          	sext.w	a0,s2
    80006200:	fffff097          	auipc	ra,0xfffff
    80006204:	4ec080e7          	jalr	1260(ra) # 800056ec <_Z8printIntiii>
    80006208:	00003517          	auipc	a0,0x3
    8000620c:	2c850513          	addi	a0,a0,712 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80006210:	fffff097          	auipc	ra,0xfffff
    80006214:	338080e7          	jalr	824(ra) # 80005548 <_Z11printStringPKc>
    80006218:	0400006f          	j	80006258 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    8000621c:	00003517          	auipc	a0,0x3
    80006220:	09450513          	addi	a0,a0,148 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80006224:	fffff097          	auipc	ra,0xfffff
    80006228:	324080e7          	jalr	804(ra) # 80005548 <_Z11printStringPKc>
    8000622c:	00000613          	li	a2,0
    80006230:	00a00593          	li	a1,10
    80006234:	00048513          	mv	a0,s1
    80006238:	fffff097          	auipc	ra,0xfffff
    8000623c:	4b4080e7          	jalr	1204(ra) # 800056ec <_Z8printIntiii>
    80006240:	00003517          	auipc	a0,0x3
    80006244:	29050513          	addi	a0,a0,656 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80006248:	fffff097          	auipc	ra,0xfffff
    8000624c:	300080e7          	jalr	768(ra) # 80005548 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006250:	0014849b          	addiw	s1,s1,1
    80006254:	0ff4f493          	andi	s1,s1,255
    80006258:	00500793          	li	a5,5
    8000625c:	fc97f0e3          	bgeu	a5,s1,8000621c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006260:	00003517          	auipc	a0,0x3
    80006264:	02850513          	addi	a0,a0,40 # 80009288 <CONSOLE_STATUS+0x278>
    80006268:	fffff097          	auipc	ra,0xfffff
    8000626c:	2e0080e7          	jalr	736(ra) # 80005548 <_Z11printStringPKc>
    finishedC = true;
    80006270:	00100793          	li	a5,1
    80006274:	00005717          	auipc	a4,0x5
    80006278:	76f703a3          	sb	a5,1895(a4) # 8000b9db <_ZL9finishedC>
    thread_dispatch();
    8000627c:	ffffb097          	auipc	ra,0xffffb
    80006280:	fe0080e7          	jalr	-32(ra) # 8000125c <_Z15thread_dispatchv>
}
    80006284:	01813083          	ld	ra,24(sp)
    80006288:	01013403          	ld	s0,16(sp)
    8000628c:	00813483          	ld	s1,8(sp)
    80006290:	00013903          	ld	s2,0(sp)
    80006294:	02010113          	addi	sp,sp,32
    80006298:	00008067          	ret

000000008000629c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000629c:	fe010113          	addi	sp,sp,-32
    800062a0:	00113c23          	sd	ra,24(sp)
    800062a4:	00813823          	sd	s0,16(sp)
    800062a8:	00913423          	sd	s1,8(sp)
    800062ac:	01213023          	sd	s2,0(sp)
    800062b0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800062b4:	00000913          	li	s2,0
    800062b8:	0400006f          	j	800062f8 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800062bc:	ffffb097          	auipc	ra,0xffffb
    800062c0:	fa0080e7          	jalr	-96(ra) # 8000125c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800062c4:	00148493          	addi	s1,s1,1
    800062c8:	000027b7          	lui	a5,0x2
    800062cc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800062d0:	0097ee63          	bltu	a5,s1,800062ec <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800062d4:	00000713          	li	a4,0
    800062d8:	000077b7          	lui	a5,0x7
    800062dc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800062e0:	fce7eee3          	bltu	a5,a4,800062bc <_ZL11workerBodyBPv+0x20>
    800062e4:	00170713          	addi	a4,a4,1
    800062e8:	ff1ff06f          	j	800062d8 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800062ec:	00a00793          	li	a5,10
    800062f0:	04f90663          	beq	s2,a5,8000633c <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800062f4:	00190913          	addi	s2,s2,1
    800062f8:	00f00793          	li	a5,15
    800062fc:	0527e463          	bltu	a5,s2,80006344 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006300:	00003517          	auipc	a0,0x3
    80006304:	f9850513          	addi	a0,a0,-104 # 80009298 <CONSOLE_STATUS+0x288>
    80006308:	fffff097          	auipc	ra,0xfffff
    8000630c:	240080e7          	jalr	576(ra) # 80005548 <_Z11printStringPKc>
    80006310:	00000613          	li	a2,0
    80006314:	00a00593          	li	a1,10
    80006318:	0009051b          	sext.w	a0,s2
    8000631c:	fffff097          	auipc	ra,0xfffff
    80006320:	3d0080e7          	jalr	976(ra) # 800056ec <_Z8printIntiii>
    80006324:	00003517          	auipc	a0,0x3
    80006328:	1ac50513          	addi	a0,a0,428 # 800094d0 <CONSOLE_STATUS+0x4c0>
    8000632c:	fffff097          	auipc	ra,0xfffff
    80006330:	21c080e7          	jalr	540(ra) # 80005548 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006334:	00000493          	li	s1,0
    80006338:	f91ff06f          	j	800062c8 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    8000633c:	14102ff3          	csrr	t6,sepc
    80006340:	fb5ff06f          	j	800062f4 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006344:	00003517          	auipc	a0,0x3
    80006348:	f5c50513          	addi	a0,a0,-164 # 800092a0 <CONSOLE_STATUS+0x290>
    8000634c:	fffff097          	auipc	ra,0xfffff
    80006350:	1fc080e7          	jalr	508(ra) # 80005548 <_Z11printStringPKc>
    finishedB = true;
    80006354:	00100793          	li	a5,1
    80006358:	00005717          	auipc	a4,0x5
    8000635c:	68f70223          	sb	a5,1668(a4) # 8000b9dc <_ZL9finishedB>
    thread_dispatch();
    80006360:	ffffb097          	auipc	ra,0xffffb
    80006364:	efc080e7          	jalr	-260(ra) # 8000125c <_Z15thread_dispatchv>
}
    80006368:	01813083          	ld	ra,24(sp)
    8000636c:	01013403          	ld	s0,16(sp)
    80006370:	00813483          	ld	s1,8(sp)
    80006374:	00013903          	ld	s2,0(sp)
    80006378:	02010113          	addi	sp,sp,32
    8000637c:	00008067          	ret

0000000080006380 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006380:	fe010113          	addi	sp,sp,-32
    80006384:	00113c23          	sd	ra,24(sp)
    80006388:	00813823          	sd	s0,16(sp)
    8000638c:	00913423          	sd	s1,8(sp)
    80006390:	01213023          	sd	s2,0(sp)
    80006394:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006398:	00000913          	li	s2,0
    8000639c:	0380006f          	j	800063d4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800063a0:	ffffb097          	auipc	ra,0xffffb
    800063a4:	ebc080e7          	jalr	-324(ra) # 8000125c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800063a8:	00148493          	addi	s1,s1,1
    800063ac:	000027b7          	lui	a5,0x2
    800063b0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800063b4:	0097ee63          	bltu	a5,s1,800063d0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800063b8:	00000713          	li	a4,0
    800063bc:	000077b7          	lui	a5,0x7
    800063c0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800063c4:	fce7eee3          	bltu	a5,a4,800063a0 <_ZL11workerBodyAPv+0x20>
    800063c8:	00170713          	addi	a4,a4,1
    800063cc:	ff1ff06f          	j	800063bc <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800063d0:	00190913          	addi	s2,s2,1
    800063d4:	00900793          	li	a5,9
    800063d8:	0527e063          	bltu	a5,s2,80006418 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800063dc:	00003517          	auipc	a0,0x3
    800063e0:	ea450513          	addi	a0,a0,-348 # 80009280 <CONSOLE_STATUS+0x270>
    800063e4:	fffff097          	auipc	ra,0xfffff
    800063e8:	164080e7          	jalr	356(ra) # 80005548 <_Z11printStringPKc>
    800063ec:	00000613          	li	a2,0
    800063f0:	00a00593          	li	a1,10
    800063f4:	0009051b          	sext.w	a0,s2
    800063f8:	fffff097          	auipc	ra,0xfffff
    800063fc:	2f4080e7          	jalr	756(ra) # 800056ec <_Z8printIntiii>
    80006400:	00003517          	auipc	a0,0x3
    80006404:	0d050513          	addi	a0,a0,208 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80006408:	fffff097          	auipc	ra,0xfffff
    8000640c:	140080e7          	jalr	320(ra) # 80005548 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006410:	00000493          	li	s1,0
    80006414:	f99ff06f          	j	800063ac <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006418:	00003517          	auipc	a0,0x3
    8000641c:	e7050513          	addi	a0,a0,-400 # 80009288 <CONSOLE_STATUS+0x278>
    80006420:	fffff097          	auipc	ra,0xfffff
    80006424:	128080e7          	jalr	296(ra) # 80005548 <_Z11printStringPKc>
    finishedA = true;
    80006428:	00100793          	li	a5,1
    8000642c:	00005717          	auipc	a4,0x5
    80006430:	5af708a3          	sb	a5,1457(a4) # 8000b9dd <_ZL9finishedA>
}
    80006434:	01813083          	ld	ra,24(sp)
    80006438:	01013403          	ld	s0,16(sp)
    8000643c:	00813483          	ld	s1,8(sp)
    80006440:	00013903          	ld	s2,0(sp)
    80006444:	02010113          	addi	sp,sp,32
    80006448:	00008067          	ret

000000008000644c <_Z16System_Mode_testv>:


void System_Mode_test() {
    8000644c:	fd010113          	addi	sp,sp,-48
    80006450:	02113423          	sd	ra,40(sp)
    80006454:	02813023          	sd	s0,32(sp)
    80006458:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000645c:	00000613          	li	a2,0
    80006460:	00000597          	auipc	a1,0x0
    80006464:	f2058593          	addi	a1,a1,-224 # 80006380 <_ZL11workerBodyAPv>
    80006468:	fd040513          	addi	a0,s0,-48
    8000646c:	ffffb097          	auipc	ra,0xffffb
    80006470:	d7c080e7          	jalr	-644(ra) # 800011e8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006474:	00003517          	auipc	a0,0x3
    80006478:	ea450513          	addi	a0,a0,-348 # 80009318 <CONSOLE_STATUS+0x308>
    8000647c:	fffff097          	auipc	ra,0xfffff
    80006480:	0cc080e7          	jalr	204(ra) # 80005548 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006484:	00000613          	li	a2,0
    80006488:	00000597          	auipc	a1,0x0
    8000648c:	e1458593          	addi	a1,a1,-492 # 8000629c <_ZL11workerBodyBPv>
    80006490:	fd840513          	addi	a0,s0,-40
    80006494:	ffffb097          	auipc	ra,0xffffb
    80006498:	d54080e7          	jalr	-684(ra) # 800011e8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    8000649c:	00003517          	auipc	a0,0x3
    800064a0:	e9450513          	addi	a0,a0,-364 # 80009330 <CONSOLE_STATUS+0x320>
    800064a4:	fffff097          	auipc	ra,0xfffff
    800064a8:	0a4080e7          	jalr	164(ra) # 80005548 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800064ac:	00000613          	li	a2,0
    800064b0:	00000597          	auipc	a1,0x0
    800064b4:	c6c58593          	addi	a1,a1,-916 # 8000611c <_ZL11workerBodyCPv>
    800064b8:	fe040513          	addi	a0,s0,-32
    800064bc:	ffffb097          	auipc	ra,0xffffb
    800064c0:	d2c080e7          	jalr	-724(ra) # 800011e8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800064c4:	00003517          	auipc	a0,0x3
    800064c8:	e8450513          	addi	a0,a0,-380 # 80009348 <CONSOLE_STATUS+0x338>
    800064cc:	fffff097          	auipc	ra,0xfffff
    800064d0:	07c080e7          	jalr	124(ra) # 80005548 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800064d4:	00000613          	li	a2,0
    800064d8:	00000597          	auipc	a1,0x0
    800064dc:	afc58593          	addi	a1,a1,-1284 # 80005fd4 <_ZL11workerBodyDPv>
    800064e0:	fe840513          	addi	a0,s0,-24
    800064e4:	ffffb097          	auipc	ra,0xffffb
    800064e8:	d04080e7          	jalr	-764(ra) # 800011e8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800064ec:	00003517          	auipc	a0,0x3
    800064f0:	e7450513          	addi	a0,a0,-396 # 80009360 <CONSOLE_STATUS+0x350>
    800064f4:	fffff097          	auipc	ra,0xfffff
    800064f8:	054080e7          	jalr	84(ra) # 80005548 <_Z11printStringPKc>
    800064fc:	00c0006f          	j	80006508 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006500:	ffffb097          	auipc	ra,0xffffb
    80006504:	d5c080e7          	jalr	-676(ra) # 8000125c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006508:	00005797          	auipc	a5,0x5
    8000650c:	4d57c783          	lbu	a5,1237(a5) # 8000b9dd <_ZL9finishedA>
    80006510:	fe0788e3          	beqz	a5,80006500 <_Z16System_Mode_testv+0xb4>
    80006514:	00005797          	auipc	a5,0x5
    80006518:	4c87c783          	lbu	a5,1224(a5) # 8000b9dc <_ZL9finishedB>
    8000651c:	fe0782e3          	beqz	a5,80006500 <_Z16System_Mode_testv+0xb4>
    80006520:	00005797          	auipc	a5,0x5
    80006524:	4bb7c783          	lbu	a5,1211(a5) # 8000b9db <_ZL9finishedC>
    80006528:	fc078ce3          	beqz	a5,80006500 <_Z16System_Mode_testv+0xb4>
    8000652c:	00005797          	auipc	a5,0x5
    80006530:	4ae7c783          	lbu	a5,1198(a5) # 8000b9da <_ZL9finishedD>
    80006534:	fc0786e3          	beqz	a5,80006500 <_Z16System_Mode_testv+0xb4>
    }

}
    80006538:	02813083          	ld	ra,40(sp)
    8000653c:	02013403          	ld	s0,32(sp)
    80006540:	03010113          	addi	sp,sp,48
    80006544:	00008067          	ret

0000000080006548 <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/bounded_buffer.hpp"

Buffer* Buffer::pera = nullptr;

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006548:	fe010113          	addi	sp,sp,-32
    8000654c:	00113c23          	sd	ra,24(sp)
    80006550:	00813823          	sd	s0,16(sp)
    80006554:	00913423          	sd	s1,8(sp)
    80006558:	01213023          	sd	s2,0(sp)
    8000655c:	02010413          	addi	s0,sp,32
    80006560:	00050493          	mv	s1,a0
    80006564:	00058913          	mv	s2,a1
    80006568:	0015879b          	addiw	a5,a1,1
    8000656c:	0007851b          	sext.w	a0,a5
    80006570:	00f4a023          	sw	a5,0(s1)
    80006574:	0004a823          	sw	zero,16(s1)
    80006578:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000657c:	00251513          	slli	a0,a0,0x2
    80006580:	ffffb097          	auipc	ra,0xffffb
    80006584:	bfc080e7          	jalr	-1028(ra) # 8000117c <_Z9mem_allocm>
    80006588:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    8000658c:	00000593          	li	a1,0
    80006590:	02048513          	addi	a0,s1,32
    80006594:	ffffb097          	auipc	ra,0xffffb
    80006598:	d2c080e7          	jalr	-724(ra) # 800012c0 <_Z8sem_openPP10_Semaphorej>
    sem_open(&spaceAvailable, _cap);
    8000659c:	00090593          	mv	a1,s2
    800065a0:	01848513          	addi	a0,s1,24
    800065a4:	ffffb097          	auipc	ra,0xffffb
    800065a8:	d1c080e7          	jalr	-740(ra) # 800012c0 <_Z8sem_openPP10_Semaphorej>
    sem_open(&mutexHead, 1);
    800065ac:	00100593          	li	a1,1
    800065b0:	02848513          	addi	a0,s1,40
    800065b4:	ffffb097          	auipc	ra,0xffffb
    800065b8:	d0c080e7          	jalr	-756(ra) # 800012c0 <_Z8sem_openPP10_Semaphorej>
    sem_open(&mutexTail, 1);
    800065bc:	00100593          	li	a1,1
    800065c0:	03048513          	addi	a0,s1,48
    800065c4:	ffffb097          	auipc	ra,0xffffb
    800065c8:	cfc080e7          	jalr	-772(ra) # 800012c0 <_Z8sem_openPP10_Semaphorej>
}
    800065cc:	01813083          	ld	ra,24(sp)
    800065d0:	01013403          	ld	s0,16(sp)
    800065d4:	00813483          	ld	s1,8(sp)
    800065d8:	00013903          	ld	s2,0(sp)
    800065dc:	02010113          	addi	sp,sp,32
    800065e0:	00008067          	ret

00000000800065e4 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800065e4:	fe010113          	addi	sp,sp,-32
    800065e8:	00113c23          	sd	ra,24(sp)
    800065ec:	00813823          	sd	s0,16(sp)
    800065f0:	00913423          	sd	s1,8(sp)
    800065f4:	01213023          	sd	s2,0(sp)
    800065f8:	02010413          	addi	s0,sp,32
    800065fc:	00050493          	mv	s1,a0
    80006600:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006604:	01853503          	ld	a0,24(a0)
    80006608:	ffffb097          	auipc	ra,0xffffb
    8000660c:	d2c080e7          	jalr	-724(ra) # 80001334 <_Z8sem_waitP10_Semaphore>

    sem_wait(mutexTail);
    80006610:	0304b503          	ld	a0,48(s1)
    80006614:	ffffb097          	auipc	ra,0xffffb
    80006618:	d20080e7          	jalr	-736(ra) # 80001334 <_Z8sem_waitP10_Semaphore>
    buffer[tail] = val;
    8000661c:	0084b783          	ld	a5,8(s1)
    80006620:	0144a703          	lw	a4,20(s1)
    80006624:	00271713          	slli	a4,a4,0x2
    80006628:	00e787b3          	add	a5,a5,a4
    8000662c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006630:	0144a783          	lw	a5,20(s1)
    80006634:	0017879b          	addiw	a5,a5,1
    80006638:	0004a703          	lw	a4,0(s1)
    8000663c:	02e7e7bb          	remw	a5,a5,a4
    80006640:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006644:	0304b503          	ld	a0,48(s1)
    80006648:	ffffb097          	auipc	ra,0xffffb
    8000664c:	d24080e7          	jalr	-732(ra) # 8000136c <_Z10sem_signalP10_Semaphore>

    sem_signal(itemAvailable);
    80006650:	0204b503          	ld	a0,32(s1)
    80006654:	ffffb097          	auipc	ra,0xffffb
    80006658:	d18080e7          	jalr	-744(ra) # 8000136c <_Z10sem_signalP10_Semaphore>

}
    8000665c:	01813083          	ld	ra,24(sp)
    80006660:	01013403          	ld	s0,16(sp)
    80006664:	00813483          	ld	s1,8(sp)
    80006668:	00013903          	ld	s2,0(sp)
    8000666c:	02010113          	addi	sp,sp,32
    80006670:	00008067          	ret

0000000080006674 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006674:	fe010113          	addi	sp,sp,-32
    80006678:	00113c23          	sd	ra,24(sp)
    8000667c:	00813823          	sd	s0,16(sp)
    80006680:	00913423          	sd	s1,8(sp)
    80006684:	01213023          	sd	s2,0(sp)
    80006688:	02010413          	addi	s0,sp,32
    8000668c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006690:	02053503          	ld	a0,32(a0)
    80006694:	ffffb097          	auipc	ra,0xffffb
    80006698:	ca0080e7          	jalr	-864(ra) # 80001334 <_Z8sem_waitP10_Semaphore>

    mutexHead->wait();
    8000669c:	0284b503          	ld	a0,40(s1)
    800066a0:	ffffb097          	auipc	ra,0xffffb
    800066a4:	e08080e7          	jalr	-504(ra) # 800014a8 <_ZN10_Semaphore4waitEv>

    int ret = buffer[head];
    800066a8:	0084b703          	ld	a4,8(s1)
    800066ac:	0104a783          	lw	a5,16(s1)
    800066b0:	00279693          	slli	a3,a5,0x2
    800066b4:	00d70733          	add	a4,a4,a3
    800066b8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800066bc:	0017879b          	addiw	a5,a5,1
    800066c0:	0004a703          	lw	a4,0(s1)
    800066c4:	02e7e7bb          	remw	a5,a5,a4
    800066c8:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800066cc:	0284b503          	ld	a0,40(s1)
    800066d0:	ffffb097          	auipc	ra,0xffffb
    800066d4:	ea4080e7          	jalr	-348(ra) # 80001574 <_ZN10_Semaphore6signalEv>

    sem_signal(spaceAvailable);
    800066d8:	0184b503          	ld	a0,24(s1)
    800066dc:	ffffb097          	auipc	ra,0xffffb
    800066e0:	c90080e7          	jalr	-880(ra) # 8000136c <_Z10sem_signalP10_Semaphore>

    return ret;
}
    800066e4:	00090513          	mv	a0,s2
    800066e8:	01813083          	ld	ra,24(sp)
    800066ec:	01013403          	ld	s0,16(sp)
    800066f0:	00813483          	ld	s1,8(sp)
    800066f4:	00013903          	ld	s2,0(sp)
    800066f8:	02010113          	addi	sp,sp,32
    800066fc:	00008067          	ret

0000000080006700 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006700:	fe010113          	addi	sp,sp,-32
    80006704:	00113c23          	sd	ra,24(sp)
    80006708:	00813823          	sd	s0,16(sp)
    8000670c:	00913423          	sd	s1,8(sp)
    80006710:	01213023          	sd	s2,0(sp)
    80006714:	02010413          	addi	s0,sp,32
    80006718:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    8000671c:	02853503          	ld	a0,40(a0)
    80006720:	ffffb097          	auipc	ra,0xffffb
    80006724:	c14080e7          	jalr	-1004(ra) # 80001334 <_Z8sem_waitP10_Semaphore>
    sem_wait(mutexTail);
    80006728:	0304b503          	ld	a0,48(s1)
    8000672c:	ffffb097          	auipc	ra,0xffffb
    80006730:	c08080e7          	jalr	-1016(ra) # 80001334 <_Z8sem_waitP10_Semaphore>

    if (tail >= head) {
    80006734:	0144a783          	lw	a5,20(s1)
    80006738:	0104a903          	lw	s2,16(s1)
    8000673c:	0327ce63          	blt	a5,s2,80006778 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006740:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006744:	0304b503          	ld	a0,48(s1)
    80006748:	ffffb097          	auipc	ra,0xffffb
    8000674c:	c24080e7          	jalr	-988(ra) # 8000136c <_Z10sem_signalP10_Semaphore>
    sem_signal(mutexHead);
    80006750:	0284b503          	ld	a0,40(s1)
    80006754:	ffffb097          	auipc	ra,0xffffb
    80006758:	c18080e7          	jalr	-1000(ra) # 8000136c <_Z10sem_signalP10_Semaphore>

    return ret;
    8000675c:	00090513          	mv	a0,s2
    80006760:	01813083          	ld	ra,24(sp)
    80006764:	01013403          	ld	s0,16(sp)
    80006768:	00813483          	ld	s1,8(sp)
    8000676c:	00013903          	ld	s2,0(sp)
    80006770:	02010113          	addi	sp,sp,32
    80006774:	00008067          	ret
        ret = cap - head + tail;
    80006778:	0004a703          	lw	a4,0(s1)
    8000677c:	4127093b          	subw	s2,a4,s2
    80006780:	00f9093b          	addw	s2,s2,a5
    80006784:	fc1ff06f          	j	80006744 <_ZN6Buffer6getCntEv+0x44>

0000000080006788 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006788:	fe010113          	addi	sp,sp,-32
    8000678c:	00113c23          	sd	ra,24(sp)
    80006790:	00813823          	sd	s0,16(sp)
    80006794:	00913423          	sd	s1,8(sp)
    80006798:	02010413          	addi	s0,sp,32
    8000679c:	00050493          	mv	s1,a0
    putc('\n');
    800067a0:	00a00513          	li	a0,10
    800067a4:	ffffb097          	auipc	ra,0xffffb
    800067a8:	ca8080e7          	jalr	-856(ra) # 8000144c <_Z4putcc>
    printString("Buffer deleted!\n");
    800067ac:	00003517          	auipc	a0,0x3
    800067b0:	bcc50513          	addi	a0,a0,-1076 # 80009378 <CONSOLE_STATUS+0x368>
    800067b4:	fffff097          	auipc	ra,0xfffff
    800067b8:	d94080e7          	jalr	-620(ra) # 80005548 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800067bc:	00048513          	mv	a0,s1
    800067c0:	00000097          	auipc	ra,0x0
    800067c4:	f40080e7          	jalr	-192(ra) # 80006700 <_ZN6Buffer6getCntEv>
    800067c8:	02a05c63          	blez	a0,80006800 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800067cc:	0084b783          	ld	a5,8(s1)
    800067d0:	0104a703          	lw	a4,16(s1)
    800067d4:	00271713          	slli	a4,a4,0x2
    800067d8:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800067dc:	0007c503          	lbu	a0,0(a5)
    800067e0:	ffffb097          	auipc	ra,0xffffb
    800067e4:	c6c080e7          	jalr	-916(ra) # 8000144c <_Z4putcc>
        head = (head + 1) % cap;
    800067e8:	0104a783          	lw	a5,16(s1)
    800067ec:	0017879b          	addiw	a5,a5,1
    800067f0:	0004a703          	lw	a4,0(s1)
    800067f4:	02e7e7bb          	remw	a5,a5,a4
    800067f8:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800067fc:	fc1ff06f          	j	800067bc <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006800:	02100513          	li	a0,33
    80006804:	ffffb097          	auipc	ra,0xffffb
    80006808:	c48080e7          	jalr	-952(ra) # 8000144c <_Z4putcc>
    putc('\n');
    8000680c:	00a00513          	li	a0,10
    80006810:	ffffb097          	auipc	ra,0xffffb
    80006814:	c3c080e7          	jalr	-964(ra) # 8000144c <_Z4putcc>
    mem_free(buffer);
    80006818:	0084b503          	ld	a0,8(s1)
    8000681c:	ffffb097          	auipc	ra,0xffffb
    80006820:	994080e7          	jalr	-1644(ra) # 800011b0 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006824:	0204b503          	ld	a0,32(s1)
    80006828:	ffffb097          	auipc	ra,0xffffb
    8000682c:	ad4080e7          	jalr	-1324(ra) # 800012fc <_Z9sem_closeP10_Semaphore>
    sem_close(spaceAvailable);
    80006830:	0184b503          	ld	a0,24(s1)
    80006834:	ffffb097          	auipc	ra,0xffffb
    80006838:	ac8080e7          	jalr	-1336(ra) # 800012fc <_Z9sem_closeP10_Semaphore>
    sem_close(mutexTail);
    8000683c:	0304b503          	ld	a0,48(s1)
    80006840:	ffffb097          	auipc	ra,0xffffb
    80006844:	abc080e7          	jalr	-1348(ra) # 800012fc <_Z9sem_closeP10_Semaphore>
    sem_close(mutexHead);
    80006848:	0284b503          	ld	a0,40(s1)
    8000684c:	ffffb097          	auipc	ra,0xffffb
    80006850:	ab0080e7          	jalr	-1360(ra) # 800012fc <_Z9sem_closeP10_Semaphore>
}
    80006854:	01813083          	ld	ra,24(sp)
    80006858:	01013403          	ld	s0,16(sp)
    8000685c:	00813483          	ld	s1,8(sp)
    80006860:	02010113          	addi	sp,sp,32
    80006864:	00008067          	ret

0000000080006868 <start>:
    80006868:	ff010113          	addi	sp,sp,-16
    8000686c:	00813423          	sd	s0,8(sp)
    80006870:	01010413          	addi	s0,sp,16
    80006874:	300027f3          	csrr	a5,mstatus
    80006878:	ffffe737          	lui	a4,0xffffe
    8000687c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1baf>
    80006880:	00e7f7b3          	and	a5,a5,a4
    80006884:	00001737          	lui	a4,0x1
    80006888:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000688c:	00e7e7b3          	or	a5,a5,a4
    80006890:	30079073          	csrw	mstatus,a5
    80006894:	00000797          	auipc	a5,0x0
    80006898:	16078793          	addi	a5,a5,352 # 800069f4 <system_main>
    8000689c:	34179073          	csrw	mepc,a5
    800068a0:	00000793          	li	a5,0
    800068a4:	18079073          	csrw	satp,a5
    800068a8:	000107b7          	lui	a5,0x10
    800068ac:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800068b0:	30279073          	csrw	medeleg,a5
    800068b4:	30379073          	csrw	mideleg,a5
    800068b8:	104027f3          	csrr	a5,sie
    800068bc:	2227e793          	ori	a5,a5,546
    800068c0:	10479073          	csrw	sie,a5
    800068c4:	fff00793          	li	a5,-1
    800068c8:	00a7d793          	srli	a5,a5,0xa
    800068cc:	3b079073          	csrw	pmpaddr0,a5
    800068d0:	00f00793          	li	a5,15
    800068d4:	3a079073          	csrw	pmpcfg0,a5
    800068d8:	f14027f3          	csrr	a5,mhartid
    800068dc:	0200c737          	lui	a4,0x200c
    800068e0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800068e4:	0007869b          	sext.w	a3,a5
    800068e8:	00269713          	slli	a4,a3,0x2
    800068ec:	000f4637          	lui	a2,0xf4
    800068f0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800068f4:	00d70733          	add	a4,a4,a3
    800068f8:	0037979b          	slliw	a5,a5,0x3
    800068fc:	020046b7          	lui	a3,0x2004
    80006900:	00d787b3          	add	a5,a5,a3
    80006904:	00c585b3          	add	a1,a1,a2
    80006908:	00371693          	slli	a3,a4,0x3
    8000690c:	00005717          	auipc	a4,0x5
    80006910:	0e470713          	addi	a4,a4,228 # 8000b9f0 <timer_scratch>
    80006914:	00b7b023          	sd	a1,0(a5)
    80006918:	00d70733          	add	a4,a4,a3
    8000691c:	00f73c23          	sd	a5,24(a4)
    80006920:	02c73023          	sd	a2,32(a4)
    80006924:	34071073          	csrw	mscratch,a4
    80006928:	00000797          	auipc	a5,0x0
    8000692c:	6e878793          	addi	a5,a5,1768 # 80007010 <timervec>
    80006930:	30579073          	csrw	mtvec,a5
    80006934:	300027f3          	csrr	a5,mstatus
    80006938:	0087e793          	ori	a5,a5,8
    8000693c:	30079073          	csrw	mstatus,a5
    80006940:	304027f3          	csrr	a5,mie
    80006944:	0807e793          	ori	a5,a5,128
    80006948:	30479073          	csrw	mie,a5
    8000694c:	f14027f3          	csrr	a5,mhartid
    80006950:	0007879b          	sext.w	a5,a5
    80006954:	00078213          	mv	tp,a5
    80006958:	30200073          	mret
    8000695c:	00813403          	ld	s0,8(sp)
    80006960:	01010113          	addi	sp,sp,16
    80006964:	00008067          	ret

0000000080006968 <timerinit>:
    80006968:	ff010113          	addi	sp,sp,-16
    8000696c:	00813423          	sd	s0,8(sp)
    80006970:	01010413          	addi	s0,sp,16
    80006974:	f14027f3          	csrr	a5,mhartid
    80006978:	0200c737          	lui	a4,0x200c
    8000697c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006980:	0007869b          	sext.w	a3,a5
    80006984:	00269713          	slli	a4,a3,0x2
    80006988:	000f4637          	lui	a2,0xf4
    8000698c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006990:	00d70733          	add	a4,a4,a3
    80006994:	0037979b          	slliw	a5,a5,0x3
    80006998:	020046b7          	lui	a3,0x2004
    8000699c:	00d787b3          	add	a5,a5,a3
    800069a0:	00c585b3          	add	a1,a1,a2
    800069a4:	00371693          	slli	a3,a4,0x3
    800069a8:	00005717          	auipc	a4,0x5
    800069ac:	04870713          	addi	a4,a4,72 # 8000b9f0 <timer_scratch>
    800069b0:	00b7b023          	sd	a1,0(a5)
    800069b4:	00d70733          	add	a4,a4,a3
    800069b8:	00f73c23          	sd	a5,24(a4)
    800069bc:	02c73023          	sd	a2,32(a4)
    800069c0:	34071073          	csrw	mscratch,a4
    800069c4:	00000797          	auipc	a5,0x0
    800069c8:	64c78793          	addi	a5,a5,1612 # 80007010 <timervec>
    800069cc:	30579073          	csrw	mtvec,a5
    800069d0:	300027f3          	csrr	a5,mstatus
    800069d4:	0087e793          	ori	a5,a5,8
    800069d8:	30079073          	csrw	mstatus,a5
    800069dc:	304027f3          	csrr	a5,mie
    800069e0:	0807e793          	ori	a5,a5,128
    800069e4:	30479073          	csrw	mie,a5
    800069e8:	00813403          	ld	s0,8(sp)
    800069ec:	01010113          	addi	sp,sp,16
    800069f0:	00008067          	ret

00000000800069f4 <system_main>:
    800069f4:	fe010113          	addi	sp,sp,-32
    800069f8:	00813823          	sd	s0,16(sp)
    800069fc:	00913423          	sd	s1,8(sp)
    80006a00:	00113c23          	sd	ra,24(sp)
    80006a04:	02010413          	addi	s0,sp,32
    80006a08:	00000097          	auipc	ra,0x0
    80006a0c:	0c4080e7          	jalr	196(ra) # 80006acc <cpuid>
    80006a10:	00005497          	auipc	s1,0x5
    80006a14:	f0048493          	addi	s1,s1,-256 # 8000b910 <started>
    80006a18:	02050263          	beqz	a0,80006a3c <system_main+0x48>
    80006a1c:	0004a783          	lw	a5,0(s1)
    80006a20:	0007879b          	sext.w	a5,a5
    80006a24:	fe078ce3          	beqz	a5,80006a1c <system_main+0x28>
    80006a28:	0ff0000f          	fence
    80006a2c:	00003517          	auipc	a0,0x3
    80006a30:	c1c50513          	addi	a0,a0,-996 # 80009648 <CONSOLE_STATUS+0x638>
    80006a34:	00001097          	auipc	ra,0x1
    80006a38:	a78080e7          	jalr	-1416(ra) # 800074ac <panic>
    80006a3c:	00001097          	auipc	ra,0x1
    80006a40:	9cc080e7          	jalr	-1588(ra) # 80007408 <consoleinit>
    80006a44:	00001097          	auipc	ra,0x1
    80006a48:	158080e7          	jalr	344(ra) # 80007b9c <printfinit>
    80006a4c:	00003517          	auipc	a0,0x3
    80006a50:	a8450513          	addi	a0,a0,-1404 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80006a54:	00001097          	auipc	ra,0x1
    80006a58:	ab4080e7          	jalr	-1356(ra) # 80007508 <__printf>
    80006a5c:	00003517          	auipc	a0,0x3
    80006a60:	bbc50513          	addi	a0,a0,-1092 # 80009618 <CONSOLE_STATUS+0x608>
    80006a64:	00001097          	auipc	ra,0x1
    80006a68:	aa4080e7          	jalr	-1372(ra) # 80007508 <__printf>
    80006a6c:	00003517          	auipc	a0,0x3
    80006a70:	a6450513          	addi	a0,a0,-1436 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80006a74:	00001097          	auipc	ra,0x1
    80006a78:	a94080e7          	jalr	-1388(ra) # 80007508 <__printf>
    80006a7c:	00001097          	auipc	ra,0x1
    80006a80:	4ac080e7          	jalr	1196(ra) # 80007f28 <kinit>
    80006a84:	00000097          	auipc	ra,0x0
    80006a88:	148080e7          	jalr	328(ra) # 80006bcc <trapinit>
    80006a8c:	00000097          	auipc	ra,0x0
    80006a90:	16c080e7          	jalr	364(ra) # 80006bf8 <trapinithart>
    80006a94:	00000097          	auipc	ra,0x0
    80006a98:	5bc080e7          	jalr	1468(ra) # 80007050 <plicinit>
    80006a9c:	00000097          	auipc	ra,0x0
    80006aa0:	5dc080e7          	jalr	1500(ra) # 80007078 <plicinithart>
    80006aa4:	00000097          	auipc	ra,0x0
    80006aa8:	078080e7          	jalr	120(ra) # 80006b1c <userinit>
    80006aac:	0ff0000f          	fence
    80006ab0:	00100793          	li	a5,1
    80006ab4:	00003517          	auipc	a0,0x3
    80006ab8:	b7c50513          	addi	a0,a0,-1156 # 80009630 <CONSOLE_STATUS+0x620>
    80006abc:	00f4a023          	sw	a5,0(s1)
    80006ac0:	00001097          	auipc	ra,0x1
    80006ac4:	a48080e7          	jalr	-1464(ra) # 80007508 <__printf>
    80006ac8:	0000006f          	j	80006ac8 <system_main+0xd4>

0000000080006acc <cpuid>:
    80006acc:	ff010113          	addi	sp,sp,-16
    80006ad0:	00813423          	sd	s0,8(sp)
    80006ad4:	01010413          	addi	s0,sp,16
    80006ad8:	00020513          	mv	a0,tp
    80006adc:	00813403          	ld	s0,8(sp)
    80006ae0:	0005051b          	sext.w	a0,a0
    80006ae4:	01010113          	addi	sp,sp,16
    80006ae8:	00008067          	ret

0000000080006aec <mycpu>:
    80006aec:	ff010113          	addi	sp,sp,-16
    80006af0:	00813423          	sd	s0,8(sp)
    80006af4:	01010413          	addi	s0,sp,16
    80006af8:	00020793          	mv	a5,tp
    80006afc:	00813403          	ld	s0,8(sp)
    80006b00:	0007879b          	sext.w	a5,a5
    80006b04:	00779793          	slli	a5,a5,0x7
    80006b08:	00006517          	auipc	a0,0x6
    80006b0c:	f1850513          	addi	a0,a0,-232 # 8000ca20 <cpus>
    80006b10:	00f50533          	add	a0,a0,a5
    80006b14:	01010113          	addi	sp,sp,16
    80006b18:	00008067          	ret

0000000080006b1c <userinit>:
    80006b1c:	ff010113          	addi	sp,sp,-16
    80006b20:	00813423          	sd	s0,8(sp)
    80006b24:	01010413          	addi	s0,sp,16
    80006b28:	00813403          	ld	s0,8(sp)
    80006b2c:	01010113          	addi	sp,sp,16
    80006b30:	ffffb317          	auipc	t1,0xffffb
    80006b34:	e7430067          	jr	-396(t1) # 800019a4 <main>

0000000080006b38 <either_copyout>:
    80006b38:	ff010113          	addi	sp,sp,-16
    80006b3c:	00813023          	sd	s0,0(sp)
    80006b40:	00113423          	sd	ra,8(sp)
    80006b44:	01010413          	addi	s0,sp,16
    80006b48:	02051663          	bnez	a0,80006b74 <either_copyout+0x3c>
    80006b4c:	00058513          	mv	a0,a1
    80006b50:	00060593          	mv	a1,a2
    80006b54:	0006861b          	sext.w	a2,a3
    80006b58:	00002097          	auipc	ra,0x2
    80006b5c:	c5c080e7          	jalr	-932(ra) # 800087b4 <__memmove>
    80006b60:	00813083          	ld	ra,8(sp)
    80006b64:	00013403          	ld	s0,0(sp)
    80006b68:	00000513          	li	a0,0
    80006b6c:	01010113          	addi	sp,sp,16
    80006b70:	00008067          	ret
    80006b74:	00003517          	auipc	a0,0x3
    80006b78:	afc50513          	addi	a0,a0,-1284 # 80009670 <CONSOLE_STATUS+0x660>
    80006b7c:	00001097          	auipc	ra,0x1
    80006b80:	930080e7          	jalr	-1744(ra) # 800074ac <panic>

0000000080006b84 <either_copyin>:
    80006b84:	ff010113          	addi	sp,sp,-16
    80006b88:	00813023          	sd	s0,0(sp)
    80006b8c:	00113423          	sd	ra,8(sp)
    80006b90:	01010413          	addi	s0,sp,16
    80006b94:	02059463          	bnez	a1,80006bbc <either_copyin+0x38>
    80006b98:	00060593          	mv	a1,a2
    80006b9c:	0006861b          	sext.w	a2,a3
    80006ba0:	00002097          	auipc	ra,0x2
    80006ba4:	c14080e7          	jalr	-1004(ra) # 800087b4 <__memmove>
    80006ba8:	00813083          	ld	ra,8(sp)
    80006bac:	00013403          	ld	s0,0(sp)
    80006bb0:	00000513          	li	a0,0
    80006bb4:	01010113          	addi	sp,sp,16
    80006bb8:	00008067          	ret
    80006bbc:	00003517          	auipc	a0,0x3
    80006bc0:	adc50513          	addi	a0,a0,-1316 # 80009698 <CONSOLE_STATUS+0x688>
    80006bc4:	00001097          	auipc	ra,0x1
    80006bc8:	8e8080e7          	jalr	-1816(ra) # 800074ac <panic>

0000000080006bcc <trapinit>:
    80006bcc:	ff010113          	addi	sp,sp,-16
    80006bd0:	00813423          	sd	s0,8(sp)
    80006bd4:	01010413          	addi	s0,sp,16
    80006bd8:	00813403          	ld	s0,8(sp)
    80006bdc:	00003597          	auipc	a1,0x3
    80006be0:	ae458593          	addi	a1,a1,-1308 # 800096c0 <CONSOLE_STATUS+0x6b0>
    80006be4:	00006517          	auipc	a0,0x6
    80006be8:	ebc50513          	addi	a0,a0,-324 # 8000caa0 <tickslock>
    80006bec:	01010113          	addi	sp,sp,16
    80006bf0:	00001317          	auipc	t1,0x1
    80006bf4:	5c830067          	jr	1480(t1) # 800081b8 <initlock>

0000000080006bf8 <trapinithart>:
    80006bf8:	ff010113          	addi	sp,sp,-16
    80006bfc:	00813423          	sd	s0,8(sp)
    80006c00:	01010413          	addi	s0,sp,16
    80006c04:	00000797          	auipc	a5,0x0
    80006c08:	2fc78793          	addi	a5,a5,764 # 80006f00 <kernelvec>
    80006c0c:	10579073          	csrw	stvec,a5
    80006c10:	00813403          	ld	s0,8(sp)
    80006c14:	01010113          	addi	sp,sp,16
    80006c18:	00008067          	ret

0000000080006c1c <usertrap>:
    80006c1c:	ff010113          	addi	sp,sp,-16
    80006c20:	00813423          	sd	s0,8(sp)
    80006c24:	01010413          	addi	s0,sp,16
    80006c28:	00813403          	ld	s0,8(sp)
    80006c2c:	01010113          	addi	sp,sp,16
    80006c30:	00008067          	ret

0000000080006c34 <usertrapret>:
    80006c34:	ff010113          	addi	sp,sp,-16
    80006c38:	00813423          	sd	s0,8(sp)
    80006c3c:	01010413          	addi	s0,sp,16
    80006c40:	00813403          	ld	s0,8(sp)
    80006c44:	01010113          	addi	sp,sp,16
    80006c48:	00008067          	ret

0000000080006c4c <kerneltrap>:
    80006c4c:	fe010113          	addi	sp,sp,-32
    80006c50:	00813823          	sd	s0,16(sp)
    80006c54:	00113c23          	sd	ra,24(sp)
    80006c58:	00913423          	sd	s1,8(sp)
    80006c5c:	02010413          	addi	s0,sp,32
    80006c60:	142025f3          	csrr	a1,scause
    80006c64:	100027f3          	csrr	a5,sstatus
    80006c68:	0027f793          	andi	a5,a5,2
    80006c6c:	10079c63          	bnez	a5,80006d84 <kerneltrap+0x138>
    80006c70:	142027f3          	csrr	a5,scause
    80006c74:	0207ce63          	bltz	a5,80006cb0 <kerneltrap+0x64>
    80006c78:	00003517          	auipc	a0,0x3
    80006c7c:	a9050513          	addi	a0,a0,-1392 # 80009708 <CONSOLE_STATUS+0x6f8>
    80006c80:	00001097          	auipc	ra,0x1
    80006c84:	888080e7          	jalr	-1912(ra) # 80007508 <__printf>
    80006c88:	141025f3          	csrr	a1,sepc
    80006c8c:	14302673          	csrr	a2,stval
    80006c90:	00003517          	auipc	a0,0x3
    80006c94:	a8850513          	addi	a0,a0,-1400 # 80009718 <CONSOLE_STATUS+0x708>
    80006c98:	00001097          	auipc	ra,0x1
    80006c9c:	870080e7          	jalr	-1936(ra) # 80007508 <__printf>
    80006ca0:	00003517          	auipc	a0,0x3
    80006ca4:	a9050513          	addi	a0,a0,-1392 # 80009730 <CONSOLE_STATUS+0x720>
    80006ca8:	00001097          	auipc	ra,0x1
    80006cac:	804080e7          	jalr	-2044(ra) # 800074ac <panic>
    80006cb0:	0ff7f713          	andi	a4,a5,255
    80006cb4:	00900693          	li	a3,9
    80006cb8:	04d70063          	beq	a4,a3,80006cf8 <kerneltrap+0xac>
    80006cbc:	fff00713          	li	a4,-1
    80006cc0:	03f71713          	slli	a4,a4,0x3f
    80006cc4:	00170713          	addi	a4,a4,1
    80006cc8:	fae798e3          	bne	a5,a4,80006c78 <kerneltrap+0x2c>
    80006ccc:	00000097          	auipc	ra,0x0
    80006cd0:	e00080e7          	jalr	-512(ra) # 80006acc <cpuid>
    80006cd4:	06050663          	beqz	a0,80006d40 <kerneltrap+0xf4>
    80006cd8:	144027f3          	csrr	a5,sip
    80006cdc:	ffd7f793          	andi	a5,a5,-3
    80006ce0:	14479073          	csrw	sip,a5
    80006ce4:	01813083          	ld	ra,24(sp)
    80006ce8:	01013403          	ld	s0,16(sp)
    80006cec:	00813483          	ld	s1,8(sp)
    80006cf0:	02010113          	addi	sp,sp,32
    80006cf4:	00008067          	ret
    80006cf8:	00000097          	auipc	ra,0x0
    80006cfc:	3cc080e7          	jalr	972(ra) # 800070c4 <plic_claim>
    80006d00:	00a00793          	li	a5,10
    80006d04:	00050493          	mv	s1,a0
    80006d08:	06f50863          	beq	a0,a5,80006d78 <kerneltrap+0x12c>
    80006d0c:	fc050ce3          	beqz	a0,80006ce4 <kerneltrap+0x98>
    80006d10:	00050593          	mv	a1,a0
    80006d14:	00003517          	auipc	a0,0x3
    80006d18:	9d450513          	addi	a0,a0,-1580 # 800096e8 <CONSOLE_STATUS+0x6d8>
    80006d1c:	00000097          	auipc	ra,0x0
    80006d20:	7ec080e7          	jalr	2028(ra) # 80007508 <__printf>
    80006d24:	01013403          	ld	s0,16(sp)
    80006d28:	01813083          	ld	ra,24(sp)
    80006d2c:	00048513          	mv	a0,s1
    80006d30:	00813483          	ld	s1,8(sp)
    80006d34:	02010113          	addi	sp,sp,32
    80006d38:	00000317          	auipc	t1,0x0
    80006d3c:	3c430067          	jr	964(t1) # 800070fc <plic_complete>
    80006d40:	00006517          	auipc	a0,0x6
    80006d44:	d6050513          	addi	a0,a0,-672 # 8000caa0 <tickslock>
    80006d48:	00001097          	auipc	ra,0x1
    80006d4c:	494080e7          	jalr	1172(ra) # 800081dc <acquire>
    80006d50:	00005717          	auipc	a4,0x5
    80006d54:	bc470713          	addi	a4,a4,-1084 # 8000b914 <ticks>
    80006d58:	00072783          	lw	a5,0(a4)
    80006d5c:	00006517          	auipc	a0,0x6
    80006d60:	d4450513          	addi	a0,a0,-700 # 8000caa0 <tickslock>
    80006d64:	0017879b          	addiw	a5,a5,1
    80006d68:	00f72023          	sw	a5,0(a4)
    80006d6c:	00001097          	auipc	ra,0x1
    80006d70:	53c080e7          	jalr	1340(ra) # 800082a8 <release>
    80006d74:	f65ff06f          	j	80006cd8 <kerneltrap+0x8c>
    80006d78:	00001097          	auipc	ra,0x1
    80006d7c:	098080e7          	jalr	152(ra) # 80007e10 <uartintr>
    80006d80:	fa5ff06f          	j	80006d24 <kerneltrap+0xd8>
    80006d84:	00003517          	auipc	a0,0x3
    80006d88:	94450513          	addi	a0,a0,-1724 # 800096c8 <CONSOLE_STATUS+0x6b8>
    80006d8c:	00000097          	auipc	ra,0x0
    80006d90:	720080e7          	jalr	1824(ra) # 800074ac <panic>

0000000080006d94 <clockintr>:
    80006d94:	fe010113          	addi	sp,sp,-32
    80006d98:	00813823          	sd	s0,16(sp)
    80006d9c:	00913423          	sd	s1,8(sp)
    80006da0:	00113c23          	sd	ra,24(sp)
    80006da4:	02010413          	addi	s0,sp,32
    80006da8:	00006497          	auipc	s1,0x6
    80006dac:	cf848493          	addi	s1,s1,-776 # 8000caa0 <tickslock>
    80006db0:	00048513          	mv	a0,s1
    80006db4:	00001097          	auipc	ra,0x1
    80006db8:	428080e7          	jalr	1064(ra) # 800081dc <acquire>
    80006dbc:	00005717          	auipc	a4,0x5
    80006dc0:	b5870713          	addi	a4,a4,-1192 # 8000b914 <ticks>
    80006dc4:	00072783          	lw	a5,0(a4)
    80006dc8:	01013403          	ld	s0,16(sp)
    80006dcc:	01813083          	ld	ra,24(sp)
    80006dd0:	00048513          	mv	a0,s1
    80006dd4:	0017879b          	addiw	a5,a5,1
    80006dd8:	00813483          	ld	s1,8(sp)
    80006ddc:	00f72023          	sw	a5,0(a4)
    80006de0:	02010113          	addi	sp,sp,32
    80006de4:	00001317          	auipc	t1,0x1
    80006de8:	4c430067          	jr	1220(t1) # 800082a8 <release>

0000000080006dec <devintr>:
    80006dec:	142027f3          	csrr	a5,scause
    80006df0:	00000513          	li	a0,0
    80006df4:	0007c463          	bltz	a5,80006dfc <devintr+0x10>
    80006df8:	00008067          	ret
    80006dfc:	fe010113          	addi	sp,sp,-32
    80006e00:	00813823          	sd	s0,16(sp)
    80006e04:	00113c23          	sd	ra,24(sp)
    80006e08:	00913423          	sd	s1,8(sp)
    80006e0c:	02010413          	addi	s0,sp,32
    80006e10:	0ff7f713          	andi	a4,a5,255
    80006e14:	00900693          	li	a3,9
    80006e18:	04d70c63          	beq	a4,a3,80006e70 <devintr+0x84>
    80006e1c:	fff00713          	li	a4,-1
    80006e20:	03f71713          	slli	a4,a4,0x3f
    80006e24:	00170713          	addi	a4,a4,1
    80006e28:	00e78c63          	beq	a5,a4,80006e40 <devintr+0x54>
    80006e2c:	01813083          	ld	ra,24(sp)
    80006e30:	01013403          	ld	s0,16(sp)
    80006e34:	00813483          	ld	s1,8(sp)
    80006e38:	02010113          	addi	sp,sp,32
    80006e3c:	00008067          	ret
    80006e40:	00000097          	auipc	ra,0x0
    80006e44:	c8c080e7          	jalr	-884(ra) # 80006acc <cpuid>
    80006e48:	06050663          	beqz	a0,80006eb4 <devintr+0xc8>
    80006e4c:	144027f3          	csrr	a5,sip
    80006e50:	ffd7f793          	andi	a5,a5,-3
    80006e54:	14479073          	csrw	sip,a5
    80006e58:	01813083          	ld	ra,24(sp)
    80006e5c:	01013403          	ld	s0,16(sp)
    80006e60:	00813483          	ld	s1,8(sp)
    80006e64:	00200513          	li	a0,2
    80006e68:	02010113          	addi	sp,sp,32
    80006e6c:	00008067          	ret
    80006e70:	00000097          	auipc	ra,0x0
    80006e74:	254080e7          	jalr	596(ra) # 800070c4 <plic_claim>
    80006e78:	00a00793          	li	a5,10
    80006e7c:	00050493          	mv	s1,a0
    80006e80:	06f50663          	beq	a0,a5,80006eec <devintr+0x100>
    80006e84:	00100513          	li	a0,1
    80006e88:	fa0482e3          	beqz	s1,80006e2c <devintr+0x40>
    80006e8c:	00048593          	mv	a1,s1
    80006e90:	00003517          	auipc	a0,0x3
    80006e94:	85850513          	addi	a0,a0,-1960 # 800096e8 <CONSOLE_STATUS+0x6d8>
    80006e98:	00000097          	auipc	ra,0x0
    80006e9c:	670080e7          	jalr	1648(ra) # 80007508 <__printf>
    80006ea0:	00048513          	mv	a0,s1
    80006ea4:	00000097          	auipc	ra,0x0
    80006ea8:	258080e7          	jalr	600(ra) # 800070fc <plic_complete>
    80006eac:	00100513          	li	a0,1
    80006eb0:	f7dff06f          	j	80006e2c <devintr+0x40>
    80006eb4:	00006517          	auipc	a0,0x6
    80006eb8:	bec50513          	addi	a0,a0,-1044 # 8000caa0 <tickslock>
    80006ebc:	00001097          	auipc	ra,0x1
    80006ec0:	320080e7          	jalr	800(ra) # 800081dc <acquire>
    80006ec4:	00005717          	auipc	a4,0x5
    80006ec8:	a5070713          	addi	a4,a4,-1456 # 8000b914 <ticks>
    80006ecc:	00072783          	lw	a5,0(a4)
    80006ed0:	00006517          	auipc	a0,0x6
    80006ed4:	bd050513          	addi	a0,a0,-1072 # 8000caa0 <tickslock>
    80006ed8:	0017879b          	addiw	a5,a5,1
    80006edc:	00f72023          	sw	a5,0(a4)
    80006ee0:	00001097          	auipc	ra,0x1
    80006ee4:	3c8080e7          	jalr	968(ra) # 800082a8 <release>
    80006ee8:	f65ff06f          	j	80006e4c <devintr+0x60>
    80006eec:	00001097          	auipc	ra,0x1
    80006ef0:	f24080e7          	jalr	-220(ra) # 80007e10 <uartintr>
    80006ef4:	fadff06f          	j	80006ea0 <devintr+0xb4>
	...

0000000080006f00 <kernelvec>:
    80006f00:	f0010113          	addi	sp,sp,-256
    80006f04:	00113023          	sd	ra,0(sp)
    80006f08:	00213423          	sd	sp,8(sp)
    80006f0c:	00313823          	sd	gp,16(sp)
    80006f10:	00413c23          	sd	tp,24(sp)
    80006f14:	02513023          	sd	t0,32(sp)
    80006f18:	02613423          	sd	t1,40(sp)
    80006f1c:	02713823          	sd	t2,48(sp)
    80006f20:	02813c23          	sd	s0,56(sp)
    80006f24:	04913023          	sd	s1,64(sp)
    80006f28:	04a13423          	sd	a0,72(sp)
    80006f2c:	04b13823          	sd	a1,80(sp)
    80006f30:	04c13c23          	sd	a2,88(sp)
    80006f34:	06d13023          	sd	a3,96(sp)
    80006f38:	06e13423          	sd	a4,104(sp)
    80006f3c:	06f13823          	sd	a5,112(sp)
    80006f40:	07013c23          	sd	a6,120(sp)
    80006f44:	09113023          	sd	a7,128(sp)
    80006f48:	09213423          	sd	s2,136(sp)
    80006f4c:	09313823          	sd	s3,144(sp)
    80006f50:	09413c23          	sd	s4,152(sp)
    80006f54:	0b513023          	sd	s5,160(sp)
    80006f58:	0b613423          	sd	s6,168(sp)
    80006f5c:	0b713823          	sd	s7,176(sp)
    80006f60:	0b813c23          	sd	s8,184(sp)
    80006f64:	0d913023          	sd	s9,192(sp)
    80006f68:	0da13423          	sd	s10,200(sp)
    80006f6c:	0db13823          	sd	s11,208(sp)
    80006f70:	0dc13c23          	sd	t3,216(sp)
    80006f74:	0fd13023          	sd	t4,224(sp)
    80006f78:	0fe13423          	sd	t5,232(sp)
    80006f7c:	0ff13823          	sd	t6,240(sp)
    80006f80:	ccdff0ef          	jal	ra,80006c4c <kerneltrap>
    80006f84:	00013083          	ld	ra,0(sp)
    80006f88:	00813103          	ld	sp,8(sp)
    80006f8c:	01013183          	ld	gp,16(sp)
    80006f90:	02013283          	ld	t0,32(sp)
    80006f94:	02813303          	ld	t1,40(sp)
    80006f98:	03013383          	ld	t2,48(sp)
    80006f9c:	03813403          	ld	s0,56(sp)
    80006fa0:	04013483          	ld	s1,64(sp)
    80006fa4:	04813503          	ld	a0,72(sp)
    80006fa8:	05013583          	ld	a1,80(sp)
    80006fac:	05813603          	ld	a2,88(sp)
    80006fb0:	06013683          	ld	a3,96(sp)
    80006fb4:	06813703          	ld	a4,104(sp)
    80006fb8:	07013783          	ld	a5,112(sp)
    80006fbc:	07813803          	ld	a6,120(sp)
    80006fc0:	08013883          	ld	a7,128(sp)
    80006fc4:	08813903          	ld	s2,136(sp)
    80006fc8:	09013983          	ld	s3,144(sp)
    80006fcc:	09813a03          	ld	s4,152(sp)
    80006fd0:	0a013a83          	ld	s5,160(sp)
    80006fd4:	0a813b03          	ld	s6,168(sp)
    80006fd8:	0b013b83          	ld	s7,176(sp)
    80006fdc:	0b813c03          	ld	s8,184(sp)
    80006fe0:	0c013c83          	ld	s9,192(sp)
    80006fe4:	0c813d03          	ld	s10,200(sp)
    80006fe8:	0d013d83          	ld	s11,208(sp)
    80006fec:	0d813e03          	ld	t3,216(sp)
    80006ff0:	0e013e83          	ld	t4,224(sp)
    80006ff4:	0e813f03          	ld	t5,232(sp)
    80006ff8:	0f013f83          	ld	t6,240(sp)
    80006ffc:	10010113          	addi	sp,sp,256
    80007000:	10200073          	sret
    80007004:	00000013          	nop
    80007008:	00000013          	nop
    8000700c:	00000013          	nop

0000000080007010 <timervec>:
    80007010:	34051573          	csrrw	a0,mscratch,a0
    80007014:	00b53023          	sd	a1,0(a0)
    80007018:	00c53423          	sd	a2,8(a0)
    8000701c:	00d53823          	sd	a3,16(a0)
    80007020:	01853583          	ld	a1,24(a0)
    80007024:	02053603          	ld	a2,32(a0)
    80007028:	0005b683          	ld	a3,0(a1)
    8000702c:	00c686b3          	add	a3,a3,a2
    80007030:	00d5b023          	sd	a3,0(a1)
    80007034:	00200593          	li	a1,2
    80007038:	14459073          	csrw	sip,a1
    8000703c:	01053683          	ld	a3,16(a0)
    80007040:	00853603          	ld	a2,8(a0)
    80007044:	00053583          	ld	a1,0(a0)
    80007048:	34051573          	csrrw	a0,mscratch,a0
    8000704c:	30200073          	mret

0000000080007050 <plicinit>:
    80007050:	ff010113          	addi	sp,sp,-16
    80007054:	00813423          	sd	s0,8(sp)
    80007058:	01010413          	addi	s0,sp,16
    8000705c:	00813403          	ld	s0,8(sp)
    80007060:	0c0007b7          	lui	a5,0xc000
    80007064:	00100713          	li	a4,1
    80007068:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000706c:	00e7a223          	sw	a4,4(a5)
    80007070:	01010113          	addi	sp,sp,16
    80007074:	00008067          	ret

0000000080007078 <plicinithart>:
    80007078:	ff010113          	addi	sp,sp,-16
    8000707c:	00813023          	sd	s0,0(sp)
    80007080:	00113423          	sd	ra,8(sp)
    80007084:	01010413          	addi	s0,sp,16
    80007088:	00000097          	auipc	ra,0x0
    8000708c:	a44080e7          	jalr	-1468(ra) # 80006acc <cpuid>
    80007090:	0085171b          	slliw	a4,a0,0x8
    80007094:	0c0027b7          	lui	a5,0xc002
    80007098:	00e787b3          	add	a5,a5,a4
    8000709c:	40200713          	li	a4,1026
    800070a0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800070a4:	00813083          	ld	ra,8(sp)
    800070a8:	00013403          	ld	s0,0(sp)
    800070ac:	00d5151b          	slliw	a0,a0,0xd
    800070b0:	0c2017b7          	lui	a5,0xc201
    800070b4:	00a78533          	add	a0,a5,a0
    800070b8:	00052023          	sw	zero,0(a0)
    800070bc:	01010113          	addi	sp,sp,16
    800070c0:	00008067          	ret

00000000800070c4 <plic_claim>:
    800070c4:	ff010113          	addi	sp,sp,-16
    800070c8:	00813023          	sd	s0,0(sp)
    800070cc:	00113423          	sd	ra,8(sp)
    800070d0:	01010413          	addi	s0,sp,16
    800070d4:	00000097          	auipc	ra,0x0
    800070d8:	9f8080e7          	jalr	-1544(ra) # 80006acc <cpuid>
    800070dc:	00813083          	ld	ra,8(sp)
    800070e0:	00013403          	ld	s0,0(sp)
    800070e4:	00d5151b          	slliw	a0,a0,0xd
    800070e8:	0c2017b7          	lui	a5,0xc201
    800070ec:	00a78533          	add	a0,a5,a0
    800070f0:	00452503          	lw	a0,4(a0)
    800070f4:	01010113          	addi	sp,sp,16
    800070f8:	00008067          	ret

00000000800070fc <plic_complete>:
    800070fc:	fe010113          	addi	sp,sp,-32
    80007100:	00813823          	sd	s0,16(sp)
    80007104:	00913423          	sd	s1,8(sp)
    80007108:	00113c23          	sd	ra,24(sp)
    8000710c:	02010413          	addi	s0,sp,32
    80007110:	00050493          	mv	s1,a0
    80007114:	00000097          	auipc	ra,0x0
    80007118:	9b8080e7          	jalr	-1608(ra) # 80006acc <cpuid>
    8000711c:	01813083          	ld	ra,24(sp)
    80007120:	01013403          	ld	s0,16(sp)
    80007124:	00d5179b          	slliw	a5,a0,0xd
    80007128:	0c201737          	lui	a4,0xc201
    8000712c:	00f707b3          	add	a5,a4,a5
    80007130:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007134:	00813483          	ld	s1,8(sp)
    80007138:	02010113          	addi	sp,sp,32
    8000713c:	00008067          	ret

0000000080007140 <consolewrite>:
    80007140:	fb010113          	addi	sp,sp,-80
    80007144:	04813023          	sd	s0,64(sp)
    80007148:	04113423          	sd	ra,72(sp)
    8000714c:	02913c23          	sd	s1,56(sp)
    80007150:	03213823          	sd	s2,48(sp)
    80007154:	03313423          	sd	s3,40(sp)
    80007158:	03413023          	sd	s4,32(sp)
    8000715c:	01513c23          	sd	s5,24(sp)
    80007160:	05010413          	addi	s0,sp,80
    80007164:	06c05c63          	blez	a2,800071dc <consolewrite+0x9c>
    80007168:	00060993          	mv	s3,a2
    8000716c:	00050a13          	mv	s4,a0
    80007170:	00058493          	mv	s1,a1
    80007174:	00000913          	li	s2,0
    80007178:	fff00a93          	li	s5,-1
    8000717c:	01c0006f          	j	80007198 <consolewrite+0x58>
    80007180:	fbf44503          	lbu	a0,-65(s0)
    80007184:	0019091b          	addiw	s2,s2,1
    80007188:	00148493          	addi	s1,s1,1
    8000718c:	00001097          	auipc	ra,0x1
    80007190:	a9c080e7          	jalr	-1380(ra) # 80007c28 <uartputc>
    80007194:	03298063          	beq	s3,s2,800071b4 <consolewrite+0x74>
    80007198:	00048613          	mv	a2,s1
    8000719c:	00100693          	li	a3,1
    800071a0:	000a0593          	mv	a1,s4
    800071a4:	fbf40513          	addi	a0,s0,-65
    800071a8:	00000097          	auipc	ra,0x0
    800071ac:	9dc080e7          	jalr	-1572(ra) # 80006b84 <either_copyin>
    800071b0:	fd5518e3          	bne	a0,s5,80007180 <consolewrite+0x40>
    800071b4:	04813083          	ld	ra,72(sp)
    800071b8:	04013403          	ld	s0,64(sp)
    800071bc:	03813483          	ld	s1,56(sp)
    800071c0:	02813983          	ld	s3,40(sp)
    800071c4:	02013a03          	ld	s4,32(sp)
    800071c8:	01813a83          	ld	s5,24(sp)
    800071cc:	00090513          	mv	a0,s2
    800071d0:	03013903          	ld	s2,48(sp)
    800071d4:	05010113          	addi	sp,sp,80
    800071d8:	00008067          	ret
    800071dc:	00000913          	li	s2,0
    800071e0:	fd5ff06f          	j	800071b4 <consolewrite+0x74>

00000000800071e4 <consoleread>:
    800071e4:	f9010113          	addi	sp,sp,-112
    800071e8:	06813023          	sd	s0,96(sp)
    800071ec:	04913c23          	sd	s1,88(sp)
    800071f0:	05213823          	sd	s2,80(sp)
    800071f4:	05313423          	sd	s3,72(sp)
    800071f8:	05413023          	sd	s4,64(sp)
    800071fc:	03513c23          	sd	s5,56(sp)
    80007200:	03613823          	sd	s6,48(sp)
    80007204:	03713423          	sd	s7,40(sp)
    80007208:	03813023          	sd	s8,32(sp)
    8000720c:	06113423          	sd	ra,104(sp)
    80007210:	01913c23          	sd	s9,24(sp)
    80007214:	07010413          	addi	s0,sp,112
    80007218:	00060b93          	mv	s7,a2
    8000721c:	00050913          	mv	s2,a0
    80007220:	00058c13          	mv	s8,a1
    80007224:	00060b1b          	sext.w	s6,a2
    80007228:	00006497          	auipc	s1,0x6
    8000722c:	8a048493          	addi	s1,s1,-1888 # 8000cac8 <cons>
    80007230:	00400993          	li	s3,4
    80007234:	fff00a13          	li	s4,-1
    80007238:	00a00a93          	li	s5,10
    8000723c:	05705e63          	blez	s7,80007298 <consoleread+0xb4>
    80007240:	09c4a703          	lw	a4,156(s1)
    80007244:	0984a783          	lw	a5,152(s1)
    80007248:	0007071b          	sext.w	a4,a4
    8000724c:	08e78463          	beq	a5,a4,800072d4 <consoleread+0xf0>
    80007250:	07f7f713          	andi	a4,a5,127
    80007254:	00e48733          	add	a4,s1,a4
    80007258:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000725c:	0017869b          	addiw	a3,a5,1
    80007260:	08d4ac23          	sw	a3,152(s1)
    80007264:	00070c9b          	sext.w	s9,a4
    80007268:	0b370663          	beq	a4,s3,80007314 <consoleread+0x130>
    8000726c:	00100693          	li	a3,1
    80007270:	f9f40613          	addi	a2,s0,-97
    80007274:	000c0593          	mv	a1,s8
    80007278:	00090513          	mv	a0,s2
    8000727c:	f8e40fa3          	sb	a4,-97(s0)
    80007280:	00000097          	auipc	ra,0x0
    80007284:	8b8080e7          	jalr	-1864(ra) # 80006b38 <either_copyout>
    80007288:	01450863          	beq	a0,s4,80007298 <consoleread+0xb4>
    8000728c:	001c0c13          	addi	s8,s8,1
    80007290:	fffb8b9b          	addiw	s7,s7,-1
    80007294:	fb5c94e3          	bne	s9,s5,8000723c <consoleread+0x58>
    80007298:	000b851b          	sext.w	a0,s7
    8000729c:	06813083          	ld	ra,104(sp)
    800072a0:	06013403          	ld	s0,96(sp)
    800072a4:	05813483          	ld	s1,88(sp)
    800072a8:	05013903          	ld	s2,80(sp)
    800072ac:	04813983          	ld	s3,72(sp)
    800072b0:	04013a03          	ld	s4,64(sp)
    800072b4:	03813a83          	ld	s5,56(sp)
    800072b8:	02813b83          	ld	s7,40(sp)
    800072bc:	02013c03          	ld	s8,32(sp)
    800072c0:	01813c83          	ld	s9,24(sp)
    800072c4:	40ab053b          	subw	a0,s6,a0
    800072c8:	03013b03          	ld	s6,48(sp)
    800072cc:	07010113          	addi	sp,sp,112
    800072d0:	00008067          	ret
    800072d4:	00001097          	auipc	ra,0x1
    800072d8:	1d8080e7          	jalr	472(ra) # 800084ac <push_on>
    800072dc:	0984a703          	lw	a4,152(s1)
    800072e0:	09c4a783          	lw	a5,156(s1)
    800072e4:	0007879b          	sext.w	a5,a5
    800072e8:	fef70ce3          	beq	a4,a5,800072e0 <consoleread+0xfc>
    800072ec:	00001097          	auipc	ra,0x1
    800072f0:	234080e7          	jalr	564(ra) # 80008520 <pop_on>
    800072f4:	0984a783          	lw	a5,152(s1)
    800072f8:	07f7f713          	andi	a4,a5,127
    800072fc:	00e48733          	add	a4,s1,a4
    80007300:	01874703          	lbu	a4,24(a4)
    80007304:	0017869b          	addiw	a3,a5,1
    80007308:	08d4ac23          	sw	a3,152(s1)
    8000730c:	00070c9b          	sext.w	s9,a4
    80007310:	f5371ee3          	bne	a4,s3,8000726c <consoleread+0x88>
    80007314:	000b851b          	sext.w	a0,s7
    80007318:	f96bf2e3          	bgeu	s7,s6,8000729c <consoleread+0xb8>
    8000731c:	08f4ac23          	sw	a5,152(s1)
    80007320:	f7dff06f          	j	8000729c <consoleread+0xb8>

0000000080007324 <consputc>:
    80007324:	10000793          	li	a5,256
    80007328:	00f50663          	beq	a0,a5,80007334 <consputc+0x10>
    8000732c:	00001317          	auipc	t1,0x1
    80007330:	9f430067          	jr	-1548(t1) # 80007d20 <uartputc_sync>
    80007334:	ff010113          	addi	sp,sp,-16
    80007338:	00113423          	sd	ra,8(sp)
    8000733c:	00813023          	sd	s0,0(sp)
    80007340:	01010413          	addi	s0,sp,16
    80007344:	00800513          	li	a0,8
    80007348:	00001097          	auipc	ra,0x1
    8000734c:	9d8080e7          	jalr	-1576(ra) # 80007d20 <uartputc_sync>
    80007350:	02000513          	li	a0,32
    80007354:	00001097          	auipc	ra,0x1
    80007358:	9cc080e7          	jalr	-1588(ra) # 80007d20 <uartputc_sync>
    8000735c:	00013403          	ld	s0,0(sp)
    80007360:	00813083          	ld	ra,8(sp)
    80007364:	00800513          	li	a0,8
    80007368:	01010113          	addi	sp,sp,16
    8000736c:	00001317          	auipc	t1,0x1
    80007370:	9b430067          	jr	-1612(t1) # 80007d20 <uartputc_sync>

0000000080007374 <consoleintr>:
    80007374:	fe010113          	addi	sp,sp,-32
    80007378:	00813823          	sd	s0,16(sp)
    8000737c:	00913423          	sd	s1,8(sp)
    80007380:	01213023          	sd	s2,0(sp)
    80007384:	00113c23          	sd	ra,24(sp)
    80007388:	02010413          	addi	s0,sp,32
    8000738c:	00005917          	auipc	s2,0x5
    80007390:	73c90913          	addi	s2,s2,1852 # 8000cac8 <cons>
    80007394:	00050493          	mv	s1,a0
    80007398:	00090513          	mv	a0,s2
    8000739c:	00001097          	auipc	ra,0x1
    800073a0:	e40080e7          	jalr	-448(ra) # 800081dc <acquire>
    800073a4:	02048c63          	beqz	s1,800073dc <consoleintr+0x68>
    800073a8:	0a092783          	lw	a5,160(s2)
    800073ac:	09892703          	lw	a4,152(s2)
    800073b0:	07f00693          	li	a3,127
    800073b4:	40e7873b          	subw	a4,a5,a4
    800073b8:	02e6e263          	bltu	a3,a4,800073dc <consoleintr+0x68>
    800073bc:	00d00713          	li	a4,13
    800073c0:	04e48063          	beq	s1,a4,80007400 <consoleintr+0x8c>
    800073c4:	07f7f713          	andi	a4,a5,127
    800073c8:	00e90733          	add	a4,s2,a4
    800073cc:	0017879b          	addiw	a5,a5,1
    800073d0:	0af92023          	sw	a5,160(s2)
    800073d4:	00970c23          	sb	s1,24(a4)
    800073d8:	08f92e23          	sw	a5,156(s2)
    800073dc:	01013403          	ld	s0,16(sp)
    800073e0:	01813083          	ld	ra,24(sp)
    800073e4:	00813483          	ld	s1,8(sp)
    800073e8:	00013903          	ld	s2,0(sp)
    800073ec:	00005517          	auipc	a0,0x5
    800073f0:	6dc50513          	addi	a0,a0,1756 # 8000cac8 <cons>
    800073f4:	02010113          	addi	sp,sp,32
    800073f8:	00001317          	auipc	t1,0x1
    800073fc:	eb030067          	jr	-336(t1) # 800082a8 <release>
    80007400:	00a00493          	li	s1,10
    80007404:	fc1ff06f          	j	800073c4 <consoleintr+0x50>

0000000080007408 <consoleinit>:
    80007408:	fe010113          	addi	sp,sp,-32
    8000740c:	00113c23          	sd	ra,24(sp)
    80007410:	00813823          	sd	s0,16(sp)
    80007414:	00913423          	sd	s1,8(sp)
    80007418:	02010413          	addi	s0,sp,32
    8000741c:	00005497          	auipc	s1,0x5
    80007420:	6ac48493          	addi	s1,s1,1708 # 8000cac8 <cons>
    80007424:	00048513          	mv	a0,s1
    80007428:	00002597          	auipc	a1,0x2
    8000742c:	31858593          	addi	a1,a1,792 # 80009740 <CONSOLE_STATUS+0x730>
    80007430:	00001097          	auipc	ra,0x1
    80007434:	d88080e7          	jalr	-632(ra) # 800081b8 <initlock>
    80007438:	00000097          	auipc	ra,0x0
    8000743c:	7ac080e7          	jalr	1964(ra) # 80007be4 <uartinit>
    80007440:	01813083          	ld	ra,24(sp)
    80007444:	01013403          	ld	s0,16(sp)
    80007448:	00000797          	auipc	a5,0x0
    8000744c:	d9c78793          	addi	a5,a5,-612 # 800071e4 <consoleread>
    80007450:	0af4bc23          	sd	a5,184(s1)
    80007454:	00000797          	auipc	a5,0x0
    80007458:	cec78793          	addi	a5,a5,-788 # 80007140 <consolewrite>
    8000745c:	0cf4b023          	sd	a5,192(s1)
    80007460:	00813483          	ld	s1,8(sp)
    80007464:	02010113          	addi	sp,sp,32
    80007468:	00008067          	ret

000000008000746c <console_read>:
    8000746c:	ff010113          	addi	sp,sp,-16
    80007470:	00813423          	sd	s0,8(sp)
    80007474:	01010413          	addi	s0,sp,16
    80007478:	00813403          	ld	s0,8(sp)
    8000747c:	00005317          	auipc	t1,0x5
    80007480:	70433303          	ld	t1,1796(t1) # 8000cb80 <devsw+0x10>
    80007484:	01010113          	addi	sp,sp,16
    80007488:	00030067          	jr	t1

000000008000748c <console_write>:
    8000748c:	ff010113          	addi	sp,sp,-16
    80007490:	00813423          	sd	s0,8(sp)
    80007494:	01010413          	addi	s0,sp,16
    80007498:	00813403          	ld	s0,8(sp)
    8000749c:	00005317          	auipc	t1,0x5
    800074a0:	6ec33303          	ld	t1,1772(t1) # 8000cb88 <devsw+0x18>
    800074a4:	01010113          	addi	sp,sp,16
    800074a8:	00030067          	jr	t1

00000000800074ac <panic>:
    800074ac:	fe010113          	addi	sp,sp,-32
    800074b0:	00113c23          	sd	ra,24(sp)
    800074b4:	00813823          	sd	s0,16(sp)
    800074b8:	00913423          	sd	s1,8(sp)
    800074bc:	02010413          	addi	s0,sp,32
    800074c0:	00050493          	mv	s1,a0
    800074c4:	00002517          	auipc	a0,0x2
    800074c8:	28450513          	addi	a0,a0,644 # 80009748 <CONSOLE_STATUS+0x738>
    800074cc:	00005797          	auipc	a5,0x5
    800074d0:	7407ae23          	sw	zero,1884(a5) # 8000cc28 <pr+0x18>
    800074d4:	00000097          	auipc	ra,0x0
    800074d8:	034080e7          	jalr	52(ra) # 80007508 <__printf>
    800074dc:	00048513          	mv	a0,s1
    800074e0:	00000097          	auipc	ra,0x0
    800074e4:	028080e7          	jalr	40(ra) # 80007508 <__printf>
    800074e8:	00002517          	auipc	a0,0x2
    800074ec:	fe850513          	addi	a0,a0,-24 # 800094d0 <CONSOLE_STATUS+0x4c0>
    800074f0:	00000097          	auipc	ra,0x0
    800074f4:	018080e7          	jalr	24(ra) # 80007508 <__printf>
    800074f8:	00100793          	li	a5,1
    800074fc:	00004717          	auipc	a4,0x4
    80007500:	40f72e23          	sw	a5,1052(a4) # 8000b918 <panicked>
    80007504:	0000006f          	j	80007504 <panic+0x58>

0000000080007508 <__printf>:
    80007508:	f3010113          	addi	sp,sp,-208
    8000750c:	08813023          	sd	s0,128(sp)
    80007510:	07313423          	sd	s3,104(sp)
    80007514:	09010413          	addi	s0,sp,144
    80007518:	05813023          	sd	s8,64(sp)
    8000751c:	08113423          	sd	ra,136(sp)
    80007520:	06913c23          	sd	s1,120(sp)
    80007524:	07213823          	sd	s2,112(sp)
    80007528:	07413023          	sd	s4,96(sp)
    8000752c:	05513c23          	sd	s5,88(sp)
    80007530:	05613823          	sd	s6,80(sp)
    80007534:	05713423          	sd	s7,72(sp)
    80007538:	03913c23          	sd	s9,56(sp)
    8000753c:	03a13823          	sd	s10,48(sp)
    80007540:	03b13423          	sd	s11,40(sp)
    80007544:	00005317          	auipc	t1,0x5
    80007548:	6cc30313          	addi	t1,t1,1740 # 8000cc10 <pr>
    8000754c:	01832c03          	lw	s8,24(t1)
    80007550:	00b43423          	sd	a1,8(s0)
    80007554:	00c43823          	sd	a2,16(s0)
    80007558:	00d43c23          	sd	a3,24(s0)
    8000755c:	02e43023          	sd	a4,32(s0)
    80007560:	02f43423          	sd	a5,40(s0)
    80007564:	03043823          	sd	a6,48(s0)
    80007568:	03143c23          	sd	a7,56(s0)
    8000756c:	00050993          	mv	s3,a0
    80007570:	4a0c1663          	bnez	s8,80007a1c <__printf+0x514>
    80007574:	60098c63          	beqz	s3,80007b8c <__printf+0x684>
    80007578:	0009c503          	lbu	a0,0(s3)
    8000757c:	00840793          	addi	a5,s0,8
    80007580:	f6f43c23          	sd	a5,-136(s0)
    80007584:	00000493          	li	s1,0
    80007588:	22050063          	beqz	a0,800077a8 <__printf+0x2a0>
    8000758c:	00002a37          	lui	s4,0x2
    80007590:	00018ab7          	lui	s5,0x18
    80007594:	000f4b37          	lui	s6,0xf4
    80007598:	00989bb7          	lui	s7,0x989
    8000759c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800075a0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800075a4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800075a8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800075ac:	00148c9b          	addiw	s9,s1,1
    800075b0:	02500793          	li	a5,37
    800075b4:	01998933          	add	s2,s3,s9
    800075b8:	38f51263          	bne	a0,a5,8000793c <__printf+0x434>
    800075bc:	00094783          	lbu	a5,0(s2)
    800075c0:	00078c9b          	sext.w	s9,a5
    800075c4:	1e078263          	beqz	a5,800077a8 <__printf+0x2a0>
    800075c8:	0024849b          	addiw	s1,s1,2
    800075cc:	07000713          	li	a4,112
    800075d0:	00998933          	add	s2,s3,s1
    800075d4:	38e78a63          	beq	a5,a4,80007968 <__printf+0x460>
    800075d8:	20f76863          	bltu	a4,a5,800077e8 <__printf+0x2e0>
    800075dc:	42a78863          	beq	a5,a0,80007a0c <__printf+0x504>
    800075e0:	06400713          	li	a4,100
    800075e4:	40e79663          	bne	a5,a4,800079f0 <__printf+0x4e8>
    800075e8:	f7843783          	ld	a5,-136(s0)
    800075ec:	0007a603          	lw	a2,0(a5)
    800075f0:	00878793          	addi	a5,a5,8
    800075f4:	f6f43c23          	sd	a5,-136(s0)
    800075f8:	42064a63          	bltz	a2,80007a2c <__printf+0x524>
    800075fc:	00a00713          	li	a4,10
    80007600:	02e677bb          	remuw	a5,a2,a4
    80007604:	00002d97          	auipc	s11,0x2
    80007608:	16cd8d93          	addi	s11,s11,364 # 80009770 <digits>
    8000760c:	00900593          	li	a1,9
    80007610:	0006051b          	sext.w	a0,a2
    80007614:	00000c93          	li	s9,0
    80007618:	02079793          	slli	a5,a5,0x20
    8000761c:	0207d793          	srli	a5,a5,0x20
    80007620:	00fd87b3          	add	a5,s11,a5
    80007624:	0007c783          	lbu	a5,0(a5)
    80007628:	02e656bb          	divuw	a3,a2,a4
    8000762c:	f8f40023          	sb	a5,-128(s0)
    80007630:	14c5d863          	bge	a1,a2,80007780 <__printf+0x278>
    80007634:	06300593          	li	a1,99
    80007638:	00100c93          	li	s9,1
    8000763c:	02e6f7bb          	remuw	a5,a3,a4
    80007640:	02079793          	slli	a5,a5,0x20
    80007644:	0207d793          	srli	a5,a5,0x20
    80007648:	00fd87b3          	add	a5,s11,a5
    8000764c:	0007c783          	lbu	a5,0(a5)
    80007650:	02e6d73b          	divuw	a4,a3,a4
    80007654:	f8f400a3          	sb	a5,-127(s0)
    80007658:	12a5f463          	bgeu	a1,a0,80007780 <__printf+0x278>
    8000765c:	00a00693          	li	a3,10
    80007660:	00900593          	li	a1,9
    80007664:	02d777bb          	remuw	a5,a4,a3
    80007668:	02079793          	slli	a5,a5,0x20
    8000766c:	0207d793          	srli	a5,a5,0x20
    80007670:	00fd87b3          	add	a5,s11,a5
    80007674:	0007c503          	lbu	a0,0(a5)
    80007678:	02d757bb          	divuw	a5,a4,a3
    8000767c:	f8a40123          	sb	a0,-126(s0)
    80007680:	48e5f263          	bgeu	a1,a4,80007b04 <__printf+0x5fc>
    80007684:	06300513          	li	a0,99
    80007688:	02d7f5bb          	remuw	a1,a5,a3
    8000768c:	02059593          	slli	a1,a1,0x20
    80007690:	0205d593          	srli	a1,a1,0x20
    80007694:	00bd85b3          	add	a1,s11,a1
    80007698:	0005c583          	lbu	a1,0(a1)
    8000769c:	02d7d7bb          	divuw	a5,a5,a3
    800076a0:	f8b401a3          	sb	a1,-125(s0)
    800076a4:	48e57263          	bgeu	a0,a4,80007b28 <__printf+0x620>
    800076a8:	3e700513          	li	a0,999
    800076ac:	02d7f5bb          	remuw	a1,a5,a3
    800076b0:	02059593          	slli	a1,a1,0x20
    800076b4:	0205d593          	srli	a1,a1,0x20
    800076b8:	00bd85b3          	add	a1,s11,a1
    800076bc:	0005c583          	lbu	a1,0(a1)
    800076c0:	02d7d7bb          	divuw	a5,a5,a3
    800076c4:	f8b40223          	sb	a1,-124(s0)
    800076c8:	46e57663          	bgeu	a0,a4,80007b34 <__printf+0x62c>
    800076cc:	02d7f5bb          	remuw	a1,a5,a3
    800076d0:	02059593          	slli	a1,a1,0x20
    800076d4:	0205d593          	srli	a1,a1,0x20
    800076d8:	00bd85b3          	add	a1,s11,a1
    800076dc:	0005c583          	lbu	a1,0(a1)
    800076e0:	02d7d7bb          	divuw	a5,a5,a3
    800076e4:	f8b402a3          	sb	a1,-123(s0)
    800076e8:	46ea7863          	bgeu	s4,a4,80007b58 <__printf+0x650>
    800076ec:	02d7f5bb          	remuw	a1,a5,a3
    800076f0:	02059593          	slli	a1,a1,0x20
    800076f4:	0205d593          	srli	a1,a1,0x20
    800076f8:	00bd85b3          	add	a1,s11,a1
    800076fc:	0005c583          	lbu	a1,0(a1)
    80007700:	02d7d7bb          	divuw	a5,a5,a3
    80007704:	f8b40323          	sb	a1,-122(s0)
    80007708:	3eeaf863          	bgeu	s5,a4,80007af8 <__printf+0x5f0>
    8000770c:	02d7f5bb          	remuw	a1,a5,a3
    80007710:	02059593          	slli	a1,a1,0x20
    80007714:	0205d593          	srli	a1,a1,0x20
    80007718:	00bd85b3          	add	a1,s11,a1
    8000771c:	0005c583          	lbu	a1,0(a1)
    80007720:	02d7d7bb          	divuw	a5,a5,a3
    80007724:	f8b403a3          	sb	a1,-121(s0)
    80007728:	42eb7e63          	bgeu	s6,a4,80007b64 <__printf+0x65c>
    8000772c:	02d7f5bb          	remuw	a1,a5,a3
    80007730:	02059593          	slli	a1,a1,0x20
    80007734:	0205d593          	srli	a1,a1,0x20
    80007738:	00bd85b3          	add	a1,s11,a1
    8000773c:	0005c583          	lbu	a1,0(a1)
    80007740:	02d7d7bb          	divuw	a5,a5,a3
    80007744:	f8b40423          	sb	a1,-120(s0)
    80007748:	42ebfc63          	bgeu	s7,a4,80007b80 <__printf+0x678>
    8000774c:	02079793          	slli	a5,a5,0x20
    80007750:	0207d793          	srli	a5,a5,0x20
    80007754:	00fd8db3          	add	s11,s11,a5
    80007758:	000dc703          	lbu	a4,0(s11)
    8000775c:	00a00793          	li	a5,10
    80007760:	00900c93          	li	s9,9
    80007764:	f8e404a3          	sb	a4,-119(s0)
    80007768:	00065c63          	bgez	a2,80007780 <__printf+0x278>
    8000776c:	f9040713          	addi	a4,s0,-112
    80007770:	00f70733          	add	a4,a4,a5
    80007774:	02d00693          	li	a3,45
    80007778:	fed70823          	sb	a3,-16(a4)
    8000777c:	00078c93          	mv	s9,a5
    80007780:	f8040793          	addi	a5,s0,-128
    80007784:	01978cb3          	add	s9,a5,s9
    80007788:	f7f40d13          	addi	s10,s0,-129
    8000778c:	000cc503          	lbu	a0,0(s9)
    80007790:	fffc8c93          	addi	s9,s9,-1
    80007794:	00000097          	auipc	ra,0x0
    80007798:	b90080e7          	jalr	-1136(ra) # 80007324 <consputc>
    8000779c:	ffac98e3          	bne	s9,s10,8000778c <__printf+0x284>
    800077a0:	00094503          	lbu	a0,0(s2)
    800077a4:	e00514e3          	bnez	a0,800075ac <__printf+0xa4>
    800077a8:	1a0c1663          	bnez	s8,80007954 <__printf+0x44c>
    800077ac:	08813083          	ld	ra,136(sp)
    800077b0:	08013403          	ld	s0,128(sp)
    800077b4:	07813483          	ld	s1,120(sp)
    800077b8:	07013903          	ld	s2,112(sp)
    800077bc:	06813983          	ld	s3,104(sp)
    800077c0:	06013a03          	ld	s4,96(sp)
    800077c4:	05813a83          	ld	s5,88(sp)
    800077c8:	05013b03          	ld	s6,80(sp)
    800077cc:	04813b83          	ld	s7,72(sp)
    800077d0:	04013c03          	ld	s8,64(sp)
    800077d4:	03813c83          	ld	s9,56(sp)
    800077d8:	03013d03          	ld	s10,48(sp)
    800077dc:	02813d83          	ld	s11,40(sp)
    800077e0:	0d010113          	addi	sp,sp,208
    800077e4:	00008067          	ret
    800077e8:	07300713          	li	a4,115
    800077ec:	1ce78a63          	beq	a5,a4,800079c0 <__printf+0x4b8>
    800077f0:	07800713          	li	a4,120
    800077f4:	1ee79e63          	bne	a5,a4,800079f0 <__printf+0x4e8>
    800077f8:	f7843783          	ld	a5,-136(s0)
    800077fc:	0007a703          	lw	a4,0(a5)
    80007800:	00878793          	addi	a5,a5,8
    80007804:	f6f43c23          	sd	a5,-136(s0)
    80007808:	28074263          	bltz	a4,80007a8c <__printf+0x584>
    8000780c:	00002d97          	auipc	s11,0x2
    80007810:	f64d8d93          	addi	s11,s11,-156 # 80009770 <digits>
    80007814:	00f77793          	andi	a5,a4,15
    80007818:	00fd87b3          	add	a5,s11,a5
    8000781c:	0007c683          	lbu	a3,0(a5)
    80007820:	00f00613          	li	a2,15
    80007824:	0007079b          	sext.w	a5,a4
    80007828:	f8d40023          	sb	a3,-128(s0)
    8000782c:	0047559b          	srliw	a1,a4,0x4
    80007830:	0047569b          	srliw	a3,a4,0x4
    80007834:	00000c93          	li	s9,0
    80007838:	0ee65063          	bge	a2,a4,80007918 <__printf+0x410>
    8000783c:	00f6f693          	andi	a3,a3,15
    80007840:	00dd86b3          	add	a3,s11,a3
    80007844:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007848:	0087d79b          	srliw	a5,a5,0x8
    8000784c:	00100c93          	li	s9,1
    80007850:	f8d400a3          	sb	a3,-127(s0)
    80007854:	0cb67263          	bgeu	a2,a1,80007918 <__printf+0x410>
    80007858:	00f7f693          	andi	a3,a5,15
    8000785c:	00dd86b3          	add	a3,s11,a3
    80007860:	0006c583          	lbu	a1,0(a3)
    80007864:	00f00613          	li	a2,15
    80007868:	0047d69b          	srliw	a3,a5,0x4
    8000786c:	f8b40123          	sb	a1,-126(s0)
    80007870:	0047d593          	srli	a1,a5,0x4
    80007874:	28f67e63          	bgeu	a2,a5,80007b10 <__printf+0x608>
    80007878:	00f6f693          	andi	a3,a3,15
    8000787c:	00dd86b3          	add	a3,s11,a3
    80007880:	0006c503          	lbu	a0,0(a3)
    80007884:	0087d813          	srli	a6,a5,0x8
    80007888:	0087d69b          	srliw	a3,a5,0x8
    8000788c:	f8a401a3          	sb	a0,-125(s0)
    80007890:	28b67663          	bgeu	a2,a1,80007b1c <__printf+0x614>
    80007894:	00f6f693          	andi	a3,a3,15
    80007898:	00dd86b3          	add	a3,s11,a3
    8000789c:	0006c583          	lbu	a1,0(a3)
    800078a0:	00c7d513          	srli	a0,a5,0xc
    800078a4:	00c7d69b          	srliw	a3,a5,0xc
    800078a8:	f8b40223          	sb	a1,-124(s0)
    800078ac:	29067a63          	bgeu	a2,a6,80007b40 <__printf+0x638>
    800078b0:	00f6f693          	andi	a3,a3,15
    800078b4:	00dd86b3          	add	a3,s11,a3
    800078b8:	0006c583          	lbu	a1,0(a3)
    800078bc:	0107d813          	srli	a6,a5,0x10
    800078c0:	0107d69b          	srliw	a3,a5,0x10
    800078c4:	f8b402a3          	sb	a1,-123(s0)
    800078c8:	28a67263          	bgeu	a2,a0,80007b4c <__printf+0x644>
    800078cc:	00f6f693          	andi	a3,a3,15
    800078d0:	00dd86b3          	add	a3,s11,a3
    800078d4:	0006c683          	lbu	a3,0(a3)
    800078d8:	0147d79b          	srliw	a5,a5,0x14
    800078dc:	f8d40323          	sb	a3,-122(s0)
    800078e0:	21067663          	bgeu	a2,a6,80007aec <__printf+0x5e4>
    800078e4:	02079793          	slli	a5,a5,0x20
    800078e8:	0207d793          	srli	a5,a5,0x20
    800078ec:	00fd8db3          	add	s11,s11,a5
    800078f0:	000dc683          	lbu	a3,0(s11)
    800078f4:	00800793          	li	a5,8
    800078f8:	00700c93          	li	s9,7
    800078fc:	f8d403a3          	sb	a3,-121(s0)
    80007900:	00075c63          	bgez	a4,80007918 <__printf+0x410>
    80007904:	f9040713          	addi	a4,s0,-112
    80007908:	00f70733          	add	a4,a4,a5
    8000790c:	02d00693          	li	a3,45
    80007910:	fed70823          	sb	a3,-16(a4)
    80007914:	00078c93          	mv	s9,a5
    80007918:	f8040793          	addi	a5,s0,-128
    8000791c:	01978cb3          	add	s9,a5,s9
    80007920:	f7f40d13          	addi	s10,s0,-129
    80007924:	000cc503          	lbu	a0,0(s9)
    80007928:	fffc8c93          	addi	s9,s9,-1
    8000792c:	00000097          	auipc	ra,0x0
    80007930:	9f8080e7          	jalr	-1544(ra) # 80007324 <consputc>
    80007934:	ff9d18e3          	bne	s10,s9,80007924 <__printf+0x41c>
    80007938:	0100006f          	j	80007948 <__printf+0x440>
    8000793c:	00000097          	auipc	ra,0x0
    80007940:	9e8080e7          	jalr	-1560(ra) # 80007324 <consputc>
    80007944:	000c8493          	mv	s1,s9
    80007948:	00094503          	lbu	a0,0(s2)
    8000794c:	c60510e3          	bnez	a0,800075ac <__printf+0xa4>
    80007950:	e40c0ee3          	beqz	s8,800077ac <__printf+0x2a4>
    80007954:	00005517          	auipc	a0,0x5
    80007958:	2bc50513          	addi	a0,a0,700 # 8000cc10 <pr>
    8000795c:	00001097          	auipc	ra,0x1
    80007960:	94c080e7          	jalr	-1716(ra) # 800082a8 <release>
    80007964:	e49ff06f          	j	800077ac <__printf+0x2a4>
    80007968:	f7843783          	ld	a5,-136(s0)
    8000796c:	03000513          	li	a0,48
    80007970:	01000d13          	li	s10,16
    80007974:	00878713          	addi	a4,a5,8
    80007978:	0007bc83          	ld	s9,0(a5)
    8000797c:	f6e43c23          	sd	a4,-136(s0)
    80007980:	00000097          	auipc	ra,0x0
    80007984:	9a4080e7          	jalr	-1628(ra) # 80007324 <consputc>
    80007988:	07800513          	li	a0,120
    8000798c:	00000097          	auipc	ra,0x0
    80007990:	998080e7          	jalr	-1640(ra) # 80007324 <consputc>
    80007994:	00002d97          	auipc	s11,0x2
    80007998:	ddcd8d93          	addi	s11,s11,-548 # 80009770 <digits>
    8000799c:	03ccd793          	srli	a5,s9,0x3c
    800079a0:	00fd87b3          	add	a5,s11,a5
    800079a4:	0007c503          	lbu	a0,0(a5)
    800079a8:	fffd0d1b          	addiw	s10,s10,-1
    800079ac:	004c9c93          	slli	s9,s9,0x4
    800079b0:	00000097          	auipc	ra,0x0
    800079b4:	974080e7          	jalr	-1676(ra) # 80007324 <consputc>
    800079b8:	fe0d12e3          	bnez	s10,8000799c <__printf+0x494>
    800079bc:	f8dff06f          	j	80007948 <__printf+0x440>
    800079c0:	f7843783          	ld	a5,-136(s0)
    800079c4:	0007bc83          	ld	s9,0(a5)
    800079c8:	00878793          	addi	a5,a5,8
    800079cc:	f6f43c23          	sd	a5,-136(s0)
    800079d0:	000c9a63          	bnez	s9,800079e4 <__printf+0x4dc>
    800079d4:	1080006f          	j	80007adc <__printf+0x5d4>
    800079d8:	001c8c93          	addi	s9,s9,1
    800079dc:	00000097          	auipc	ra,0x0
    800079e0:	948080e7          	jalr	-1720(ra) # 80007324 <consputc>
    800079e4:	000cc503          	lbu	a0,0(s9)
    800079e8:	fe0518e3          	bnez	a0,800079d8 <__printf+0x4d0>
    800079ec:	f5dff06f          	j	80007948 <__printf+0x440>
    800079f0:	02500513          	li	a0,37
    800079f4:	00000097          	auipc	ra,0x0
    800079f8:	930080e7          	jalr	-1744(ra) # 80007324 <consputc>
    800079fc:	000c8513          	mv	a0,s9
    80007a00:	00000097          	auipc	ra,0x0
    80007a04:	924080e7          	jalr	-1756(ra) # 80007324 <consputc>
    80007a08:	f41ff06f          	j	80007948 <__printf+0x440>
    80007a0c:	02500513          	li	a0,37
    80007a10:	00000097          	auipc	ra,0x0
    80007a14:	914080e7          	jalr	-1772(ra) # 80007324 <consputc>
    80007a18:	f31ff06f          	j	80007948 <__printf+0x440>
    80007a1c:	00030513          	mv	a0,t1
    80007a20:	00000097          	auipc	ra,0x0
    80007a24:	7bc080e7          	jalr	1980(ra) # 800081dc <acquire>
    80007a28:	b4dff06f          	j	80007574 <__printf+0x6c>
    80007a2c:	40c0053b          	negw	a0,a2
    80007a30:	00a00713          	li	a4,10
    80007a34:	02e576bb          	remuw	a3,a0,a4
    80007a38:	00002d97          	auipc	s11,0x2
    80007a3c:	d38d8d93          	addi	s11,s11,-712 # 80009770 <digits>
    80007a40:	ff700593          	li	a1,-9
    80007a44:	02069693          	slli	a3,a3,0x20
    80007a48:	0206d693          	srli	a3,a3,0x20
    80007a4c:	00dd86b3          	add	a3,s11,a3
    80007a50:	0006c683          	lbu	a3,0(a3)
    80007a54:	02e557bb          	divuw	a5,a0,a4
    80007a58:	f8d40023          	sb	a3,-128(s0)
    80007a5c:	10b65e63          	bge	a2,a1,80007b78 <__printf+0x670>
    80007a60:	06300593          	li	a1,99
    80007a64:	02e7f6bb          	remuw	a3,a5,a4
    80007a68:	02069693          	slli	a3,a3,0x20
    80007a6c:	0206d693          	srli	a3,a3,0x20
    80007a70:	00dd86b3          	add	a3,s11,a3
    80007a74:	0006c683          	lbu	a3,0(a3)
    80007a78:	02e7d73b          	divuw	a4,a5,a4
    80007a7c:	00200793          	li	a5,2
    80007a80:	f8d400a3          	sb	a3,-127(s0)
    80007a84:	bca5ece3          	bltu	a1,a0,8000765c <__printf+0x154>
    80007a88:	ce5ff06f          	j	8000776c <__printf+0x264>
    80007a8c:	40e007bb          	negw	a5,a4
    80007a90:	00002d97          	auipc	s11,0x2
    80007a94:	ce0d8d93          	addi	s11,s11,-800 # 80009770 <digits>
    80007a98:	00f7f693          	andi	a3,a5,15
    80007a9c:	00dd86b3          	add	a3,s11,a3
    80007aa0:	0006c583          	lbu	a1,0(a3)
    80007aa4:	ff100613          	li	a2,-15
    80007aa8:	0047d69b          	srliw	a3,a5,0x4
    80007aac:	f8b40023          	sb	a1,-128(s0)
    80007ab0:	0047d59b          	srliw	a1,a5,0x4
    80007ab4:	0ac75e63          	bge	a4,a2,80007b70 <__printf+0x668>
    80007ab8:	00f6f693          	andi	a3,a3,15
    80007abc:	00dd86b3          	add	a3,s11,a3
    80007ac0:	0006c603          	lbu	a2,0(a3)
    80007ac4:	00f00693          	li	a3,15
    80007ac8:	0087d79b          	srliw	a5,a5,0x8
    80007acc:	f8c400a3          	sb	a2,-127(s0)
    80007ad0:	d8b6e4e3          	bltu	a3,a1,80007858 <__printf+0x350>
    80007ad4:	00200793          	li	a5,2
    80007ad8:	e2dff06f          	j	80007904 <__printf+0x3fc>
    80007adc:	00002c97          	auipc	s9,0x2
    80007ae0:	c74c8c93          	addi	s9,s9,-908 # 80009750 <CONSOLE_STATUS+0x740>
    80007ae4:	02800513          	li	a0,40
    80007ae8:	ef1ff06f          	j	800079d8 <__printf+0x4d0>
    80007aec:	00700793          	li	a5,7
    80007af0:	00600c93          	li	s9,6
    80007af4:	e0dff06f          	j	80007900 <__printf+0x3f8>
    80007af8:	00700793          	li	a5,7
    80007afc:	00600c93          	li	s9,6
    80007b00:	c69ff06f          	j	80007768 <__printf+0x260>
    80007b04:	00300793          	li	a5,3
    80007b08:	00200c93          	li	s9,2
    80007b0c:	c5dff06f          	j	80007768 <__printf+0x260>
    80007b10:	00300793          	li	a5,3
    80007b14:	00200c93          	li	s9,2
    80007b18:	de9ff06f          	j	80007900 <__printf+0x3f8>
    80007b1c:	00400793          	li	a5,4
    80007b20:	00300c93          	li	s9,3
    80007b24:	dddff06f          	j	80007900 <__printf+0x3f8>
    80007b28:	00400793          	li	a5,4
    80007b2c:	00300c93          	li	s9,3
    80007b30:	c39ff06f          	j	80007768 <__printf+0x260>
    80007b34:	00500793          	li	a5,5
    80007b38:	00400c93          	li	s9,4
    80007b3c:	c2dff06f          	j	80007768 <__printf+0x260>
    80007b40:	00500793          	li	a5,5
    80007b44:	00400c93          	li	s9,4
    80007b48:	db9ff06f          	j	80007900 <__printf+0x3f8>
    80007b4c:	00600793          	li	a5,6
    80007b50:	00500c93          	li	s9,5
    80007b54:	dadff06f          	j	80007900 <__printf+0x3f8>
    80007b58:	00600793          	li	a5,6
    80007b5c:	00500c93          	li	s9,5
    80007b60:	c09ff06f          	j	80007768 <__printf+0x260>
    80007b64:	00800793          	li	a5,8
    80007b68:	00700c93          	li	s9,7
    80007b6c:	bfdff06f          	j	80007768 <__printf+0x260>
    80007b70:	00100793          	li	a5,1
    80007b74:	d91ff06f          	j	80007904 <__printf+0x3fc>
    80007b78:	00100793          	li	a5,1
    80007b7c:	bf1ff06f          	j	8000776c <__printf+0x264>
    80007b80:	00900793          	li	a5,9
    80007b84:	00800c93          	li	s9,8
    80007b88:	be1ff06f          	j	80007768 <__printf+0x260>
    80007b8c:	00002517          	auipc	a0,0x2
    80007b90:	bcc50513          	addi	a0,a0,-1076 # 80009758 <CONSOLE_STATUS+0x748>
    80007b94:	00000097          	auipc	ra,0x0
    80007b98:	918080e7          	jalr	-1768(ra) # 800074ac <panic>

0000000080007b9c <printfinit>:
    80007b9c:	fe010113          	addi	sp,sp,-32
    80007ba0:	00813823          	sd	s0,16(sp)
    80007ba4:	00913423          	sd	s1,8(sp)
    80007ba8:	00113c23          	sd	ra,24(sp)
    80007bac:	02010413          	addi	s0,sp,32
    80007bb0:	00005497          	auipc	s1,0x5
    80007bb4:	06048493          	addi	s1,s1,96 # 8000cc10 <pr>
    80007bb8:	00048513          	mv	a0,s1
    80007bbc:	00002597          	auipc	a1,0x2
    80007bc0:	bac58593          	addi	a1,a1,-1108 # 80009768 <CONSOLE_STATUS+0x758>
    80007bc4:	00000097          	auipc	ra,0x0
    80007bc8:	5f4080e7          	jalr	1524(ra) # 800081b8 <initlock>
    80007bcc:	01813083          	ld	ra,24(sp)
    80007bd0:	01013403          	ld	s0,16(sp)
    80007bd4:	0004ac23          	sw	zero,24(s1)
    80007bd8:	00813483          	ld	s1,8(sp)
    80007bdc:	02010113          	addi	sp,sp,32
    80007be0:	00008067          	ret

0000000080007be4 <uartinit>:
    80007be4:	ff010113          	addi	sp,sp,-16
    80007be8:	00813423          	sd	s0,8(sp)
    80007bec:	01010413          	addi	s0,sp,16
    80007bf0:	100007b7          	lui	a5,0x10000
    80007bf4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007bf8:	f8000713          	li	a4,-128
    80007bfc:	00e781a3          	sb	a4,3(a5)
    80007c00:	00300713          	li	a4,3
    80007c04:	00e78023          	sb	a4,0(a5)
    80007c08:	000780a3          	sb	zero,1(a5)
    80007c0c:	00e781a3          	sb	a4,3(a5)
    80007c10:	00700693          	li	a3,7
    80007c14:	00d78123          	sb	a3,2(a5)
    80007c18:	00e780a3          	sb	a4,1(a5)
    80007c1c:	00813403          	ld	s0,8(sp)
    80007c20:	01010113          	addi	sp,sp,16
    80007c24:	00008067          	ret

0000000080007c28 <uartputc>:
    80007c28:	00004797          	auipc	a5,0x4
    80007c2c:	cf07a783          	lw	a5,-784(a5) # 8000b918 <panicked>
    80007c30:	00078463          	beqz	a5,80007c38 <uartputc+0x10>
    80007c34:	0000006f          	j	80007c34 <uartputc+0xc>
    80007c38:	fd010113          	addi	sp,sp,-48
    80007c3c:	02813023          	sd	s0,32(sp)
    80007c40:	00913c23          	sd	s1,24(sp)
    80007c44:	01213823          	sd	s2,16(sp)
    80007c48:	01313423          	sd	s3,8(sp)
    80007c4c:	02113423          	sd	ra,40(sp)
    80007c50:	03010413          	addi	s0,sp,48
    80007c54:	00004917          	auipc	s2,0x4
    80007c58:	ccc90913          	addi	s2,s2,-820 # 8000b920 <uart_tx_r>
    80007c5c:	00093783          	ld	a5,0(s2)
    80007c60:	00004497          	auipc	s1,0x4
    80007c64:	cc848493          	addi	s1,s1,-824 # 8000b928 <uart_tx_w>
    80007c68:	0004b703          	ld	a4,0(s1)
    80007c6c:	02078693          	addi	a3,a5,32
    80007c70:	00050993          	mv	s3,a0
    80007c74:	02e69c63          	bne	a3,a4,80007cac <uartputc+0x84>
    80007c78:	00001097          	auipc	ra,0x1
    80007c7c:	834080e7          	jalr	-1996(ra) # 800084ac <push_on>
    80007c80:	00093783          	ld	a5,0(s2)
    80007c84:	0004b703          	ld	a4,0(s1)
    80007c88:	02078793          	addi	a5,a5,32
    80007c8c:	00e79463          	bne	a5,a4,80007c94 <uartputc+0x6c>
    80007c90:	0000006f          	j	80007c90 <uartputc+0x68>
    80007c94:	00001097          	auipc	ra,0x1
    80007c98:	88c080e7          	jalr	-1908(ra) # 80008520 <pop_on>
    80007c9c:	00093783          	ld	a5,0(s2)
    80007ca0:	0004b703          	ld	a4,0(s1)
    80007ca4:	02078693          	addi	a3,a5,32
    80007ca8:	fce688e3          	beq	a3,a4,80007c78 <uartputc+0x50>
    80007cac:	01f77693          	andi	a3,a4,31
    80007cb0:	00005597          	auipc	a1,0x5
    80007cb4:	f8058593          	addi	a1,a1,-128 # 8000cc30 <uart_tx_buf>
    80007cb8:	00d586b3          	add	a3,a1,a3
    80007cbc:	00170713          	addi	a4,a4,1
    80007cc0:	01368023          	sb	s3,0(a3)
    80007cc4:	00e4b023          	sd	a4,0(s1)
    80007cc8:	10000637          	lui	a2,0x10000
    80007ccc:	02f71063          	bne	a4,a5,80007cec <uartputc+0xc4>
    80007cd0:	0340006f          	j	80007d04 <uartputc+0xdc>
    80007cd4:	00074703          	lbu	a4,0(a4)
    80007cd8:	00f93023          	sd	a5,0(s2)
    80007cdc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007ce0:	00093783          	ld	a5,0(s2)
    80007ce4:	0004b703          	ld	a4,0(s1)
    80007ce8:	00f70e63          	beq	a4,a5,80007d04 <uartputc+0xdc>
    80007cec:	00564683          	lbu	a3,5(a2)
    80007cf0:	01f7f713          	andi	a4,a5,31
    80007cf4:	00e58733          	add	a4,a1,a4
    80007cf8:	0206f693          	andi	a3,a3,32
    80007cfc:	00178793          	addi	a5,a5,1
    80007d00:	fc069ae3          	bnez	a3,80007cd4 <uartputc+0xac>
    80007d04:	02813083          	ld	ra,40(sp)
    80007d08:	02013403          	ld	s0,32(sp)
    80007d0c:	01813483          	ld	s1,24(sp)
    80007d10:	01013903          	ld	s2,16(sp)
    80007d14:	00813983          	ld	s3,8(sp)
    80007d18:	03010113          	addi	sp,sp,48
    80007d1c:	00008067          	ret

0000000080007d20 <uartputc_sync>:
    80007d20:	ff010113          	addi	sp,sp,-16
    80007d24:	00813423          	sd	s0,8(sp)
    80007d28:	01010413          	addi	s0,sp,16
    80007d2c:	00004717          	auipc	a4,0x4
    80007d30:	bec72703          	lw	a4,-1044(a4) # 8000b918 <panicked>
    80007d34:	02071663          	bnez	a4,80007d60 <uartputc_sync+0x40>
    80007d38:	00050793          	mv	a5,a0
    80007d3c:	100006b7          	lui	a3,0x10000
    80007d40:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007d44:	02077713          	andi	a4,a4,32
    80007d48:	fe070ce3          	beqz	a4,80007d40 <uartputc_sync+0x20>
    80007d4c:	0ff7f793          	andi	a5,a5,255
    80007d50:	00f68023          	sb	a5,0(a3)
    80007d54:	00813403          	ld	s0,8(sp)
    80007d58:	01010113          	addi	sp,sp,16
    80007d5c:	00008067          	ret
    80007d60:	0000006f          	j	80007d60 <uartputc_sync+0x40>

0000000080007d64 <uartstart>:
    80007d64:	ff010113          	addi	sp,sp,-16
    80007d68:	00813423          	sd	s0,8(sp)
    80007d6c:	01010413          	addi	s0,sp,16
    80007d70:	00004617          	auipc	a2,0x4
    80007d74:	bb060613          	addi	a2,a2,-1104 # 8000b920 <uart_tx_r>
    80007d78:	00004517          	auipc	a0,0x4
    80007d7c:	bb050513          	addi	a0,a0,-1104 # 8000b928 <uart_tx_w>
    80007d80:	00063783          	ld	a5,0(a2)
    80007d84:	00053703          	ld	a4,0(a0)
    80007d88:	04f70263          	beq	a4,a5,80007dcc <uartstart+0x68>
    80007d8c:	100005b7          	lui	a1,0x10000
    80007d90:	00005817          	auipc	a6,0x5
    80007d94:	ea080813          	addi	a6,a6,-352 # 8000cc30 <uart_tx_buf>
    80007d98:	01c0006f          	j	80007db4 <uartstart+0x50>
    80007d9c:	0006c703          	lbu	a4,0(a3)
    80007da0:	00f63023          	sd	a5,0(a2)
    80007da4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007da8:	00063783          	ld	a5,0(a2)
    80007dac:	00053703          	ld	a4,0(a0)
    80007db0:	00f70e63          	beq	a4,a5,80007dcc <uartstart+0x68>
    80007db4:	01f7f713          	andi	a4,a5,31
    80007db8:	00e806b3          	add	a3,a6,a4
    80007dbc:	0055c703          	lbu	a4,5(a1)
    80007dc0:	00178793          	addi	a5,a5,1
    80007dc4:	02077713          	andi	a4,a4,32
    80007dc8:	fc071ae3          	bnez	a4,80007d9c <uartstart+0x38>
    80007dcc:	00813403          	ld	s0,8(sp)
    80007dd0:	01010113          	addi	sp,sp,16
    80007dd4:	00008067          	ret

0000000080007dd8 <uartgetc>:
    80007dd8:	ff010113          	addi	sp,sp,-16
    80007ddc:	00813423          	sd	s0,8(sp)
    80007de0:	01010413          	addi	s0,sp,16
    80007de4:	10000737          	lui	a4,0x10000
    80007de8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007dec:	0017f793          	andi	a5,a5,1
    80007df0:	00078c63          	beqz	a5,80007e08 <uartgetc+0x30>
    80007df4:	00074503          	lbu	a0,0(a4)
    80007df8:	0ff57513          	andi	a0,a0,255
    80007dfc:	00813403          	ld	s0,8(sp)
    80007e00:	01010113          	addi	sp,sp,16
    80007e04:	00008067          	ret
    80007e08:	fff00513          	li	a0,-1
    80007e0c:	ff1ff06f          	j	80007dfc <uartgetc+0x24>

0000000080007e10 <uartintr>:
    80007e10:	100007b7          	lui	a5,0x10000
    80007e14:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007e18:	0017f793          	andi	a5,a5,1
    80007e1c:	0a078463          	beqz	a5,80007ec4 <uartintr+0xb4>
    80007e20:	fe010113          	addi	sp,sp,-32
    80007e24:	00813823          	sd	s0,16(sp)
    80007e28:	00913423          	sd	s1,8(sp)
    80007e2c:	00113c23          	sd	ra,24(sp)
    80007e30:	02010413          	addi	s0,sp,32
    80007e34:	100004b7          	lui	s1,0x10000
    80007e38:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007e3c:	0ff57513          	andi	a0,a0,255
    80007e40:	fffff097          	auipc	ra,0xfffff
    80007e44:	534080e7          	jalr	1332(ra) # 80007374 <consoleintr>
    80007e48:	0054c783          	lbu	a5,5(s1)
    80007e4c:	0017f793          	andi	a5,a5,1
    80007e50:	fe0794e3          	bnez	a5,80007e38 <uartintr+0x28>
    80007e54:	00004617          	auipc	a2,0x4
    80007e58:	acc60613          	addi	a2,a2,-1332 # 8000b920 <uart_tx_r>
    80007e5c:	00004517          	auipc	a0,0x4
    80007e60:	acc50513          	addi	a0,a0,-1332 # 8000b928 <uart_tx_w>
    80007e64:	00063783          	ld	a5,0(a2)
    80007e68:	00053703          	ld	a4,0(a0)
    80007e6c:	04f70263          	beq	a4,a5,80007eb0 <uartintr+0xa0>
    80007e70:	100005b7          	lui	a1,0x10000
    80007e74:	00005817          	auipc	a6,0x5
    80007e78:	dbc80813          	addi	a6,a6,-580 # 8000cc30 <uart_tx_buf>
    80007e7c:	01c0006f          	j	80007e98 <uartintr+0x88>
    80007e80:	0006c703          	lbu	a4,0(a3)
    80007e84:	00f63023          	sd	a5,0(a2)
    80007e88:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007e8c:	00063783          	ld	a5,0(a2)
    80007e90:	00053703          	ld	a4,0(a0)
    80007e94:	00f70e63          	beq	a4,a5,80007eb0 <uartintr+0xa0>
    80007e98:	01f7f713          	andi	a4,a5,31
    80007e9c:	00e806b3          	add	a3,a6,a4
    80007ea0:	0055c703          	lbu	a4,5(a1)
    80007ea4:	00178793          	addi	a5,a5,1
    80007ea8:	02077713          	andi	a4,a4,32
    80007eac:	fc071ae3          	bnez	a4,80007e80 <uartintr+0x70>
    80007eb0:	01813083          	ld	ra,24(sp)
    80007eb4:	01013403          	ld	s0,16(sp)
    80007eb8:	00813483          	ld	s1,8(sp)
    80007ebc:	02010113          	addi	sp,sp,32
    80007ec0:	00008067          	ret
    80007ec4:	00004617          	auipc	a2,0x4
    80007ec8:	a5c60613          	addi	a2,a2,-1444 # 8000b920 <uart_tx_r>
    80007ecc:	00004517          	auipc	a0,0x4
    80007ed0:	a5c50513          	addi	a0,a0,-1444 # 8000b928 <uart_tx_w>
    80007ed4:	00063783          	ld	a5,0(a2)
    80007ed8:	00053703          	ld	a4,0(a0)
    80007edc:	04f70263          	beq	a4,a5,80007f20 <uartintr+0x110>
    80007ee0:	100005b7          	lui	a1,0x10000
    80007ee4:	00005817          	auipc	a6,0x5
    80007ee8:	d4c80813          	addi	a6,a6,-692 # 8000cc30 <uart_tx_buf>
    80007eec:	01c0006f          	j	80007f08 <uartintr+0xf8>
    80007ef0:	0006c703          	lbu	a4,0(a3)
    80007ef4:	00f63023          	sd	a5,0(a2)
    80007ef8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007efc:	00063783          	ld	a5,0(a2)
    80007f00:	00053703          	ld	a4,0(a0)
    80007f04:	02f70063          	beq	a4,a5,80007f24 <uartintr+0x114>
    80007f08:	01f7f713          	andi	a4,a5,31
    80007f0c:	00e806b3          	add	a3,a6,a4
    80007f10:	0055c703          	lbu	a4,5(a1)
    80007f14:	00178793          	addi	a5,a5,1
    80007f18:	02077713          	andi	a4,a4,32
    80007f1c:	fc071ae3          	bnez	a4,80007ef0 <uartintr+0xe0>
    80007f20:	00008067          	ret
    80007f24:	00008067          	ret

0000000080007f28 <kinit>:
    80007f28:	fc010113          	addi	sp,sp,-64
    80007f2c:	02913423          	sd	s1,40(sp)
    80007f30:	fffff7b7          	lui	a5,0xfffff
    80007f34:	00006497          	auipc	s1,0x6
    80007f38:	d1b48493          	addi	s1,s1,-741 # 8000dc4f <end+0xfff>
    80007f3c:	02813823          	sd	s0,48(sp)
    80007f40:	01313c23          	sd	s3,24(sp)
    80007f44:	00f4f4b3          	and	s1,s1,a5
    80007f48:	02113c23          	sd	ra,56(sp)
    80007f4c:	03213023          	sd	s2,32(sp)
    80007f50:	01413823          	sd	s4,16(sp)
    80007f54:	01513423          	sd	s5,8(sp)
    80007f58:	04010413          	addi	s0,sp,64
    80007f5c:	000017b7          	lui	a5,0x1
    80007f60:	01100993          	li	s3,17
    80007f64:	00f487b3          	add	a5,s1,a5
    80007f68:	01b99993          	slli	s3,s3,0x1b
    80007f6c:	06f9e063          	bltu	s3,a5,80007fcc <kinit+0xa4>
    80007f70:	00005a97          	auipc	s5,0x5
    80007f74:	ce0a8a93          	addi	s5,s5,-800 # 8000cc50 <end>
    80007f78:	0754ec63          	bltu	s1,s5,80007ff0 <kinit+0xc8>
    80007f7c:	0734fa63          	bgeu	s1,s3,80007ff0 <kinit+0xc8>
    80007f80:	00088a37          	lui	s4,0x88
    80007f84:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007f88:	00004917          	auipc	s2,0x4
    80007f8c:	9a890913          	addi	s2,s2,-1624 # 8000b930 <kmem>
    80007f90:	00ca1a13          	slli	s4,s4,0xc
    80007f94:	0140006f          	j	80007fa8 <kinit+0x80>
    80007f98:	000017b7          	lui	a5,0x1
    80007f9c:	00f484b3          	add	s1,s1,a5
    80007fa0:	0554e863          	bltu	s1,s5,80007ff0 <kinit+0xc8>
    80007fa4:	0534f663          	bgeu	s1,s3,80007ff0 <kinit+0xc8>
    80007fa8:	00001637          	lui	a2,0x1
    80007fac:	00100593          	li	a1,1
    80007fb0:	00048513          	mv	a0,s1
    80007fb4:	00000097          	auipc	ra,0x0
    80007fb8:	5e4080e7          	jalr	1508(ra) # 80008598 <__memset>
    80007fbc:	00093783          	ld	a5,0(s2)
    80007fc0:	00f4b023          	sd	a5,0(s1)
    80007fc4:	00993023          	sd	s1,0(s2)
    80007fc8:	fd4498e3          	bne	s1,s4,80007f98 <kinit+0x70>
    80007fcc:	03813083          	ld	ra,56(sp)
    80007fd0:	03013403          	ld	s0,48(sp)
    80007fd4:	02813483          	ld	s1,40(sp)
    80007fd8:	02013903          	ld	s2,32(sp)
    80007fdc:	01813983          	ld	s3,24(sp)
    80007fe0:	01013a03          	ld	s4,16(sp)
    80007fe4:	00813a83          	ld	s5,8(sp)
    80007fe8:	04010113          	addi	sp,sp,64
    80007fec:	00008067          	ret
    80007ff0:	00001517          	auipc	a0,0x1
    80007ff4:	79850513          	addi	a0,a0,1944 # 80009788 <digits+0x18>
    80007ff8:	fffff097          	auipc	ra,0xfffff
    80007ffc:	4b4080e7          	jalr	1204(ra) # 800074ac <panic>

0000000080008000 <freerange>:
    80008000:	fc010113          	addi	sp,sp,-64
    80008004:	000017b7          	lui	a5,0x1
    80008008:	02913423          	sd	s1,40(sp)
    8000800c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008010:	009504b3          	add	s1,a0,s1
    80008014:	fffff537          	lui	a0,0xfffff
    80008018:	02813823          	sd	s0,48(sp)
    8000801c:	02113c23          	sd	ra,56(sp)
    80008020:	03213023          	sd	s2,32(sp)
    80008024:	01313c23          	sd	s3,24(sp)
    80008028:	01413823          	sd	s4,16(sp)
    8000802c:	01513423          	sd	s5,8(sp)
    80008030:	01613023          	sd	s6,0(sp)
    80008034:	04010413          	addi	s0,sp,64
    80008038:	00a4f4b3          	and	s1,s1,a0
    8000803c:	00f487b3          	add	a5,s1,a5
    80008040:	06f5e463          	bltu	a1,a5,800080a8 <freerange+0xa8>
    80008044:	00005a97          	auipc	s5,0x5
    80008048:	c0ca8a93          	addi	s5,s5,-1012 # 8000cc50 <end>
    8000804c:	0954e263          	bltu	s1,s5,800080d0 <freerange+0xd0>
    80008050:	01100993          	li	s3,17
    80008054:	01b99993          	slli	s3,s3,0x1b
    80008058:	0734fc63          	bgeu	s1,s3,800080d0 <freerange+0xd0>
    8000805c:	00058a13          	mv	s4,a1
    80008060:	00004917          	auipc	s2,0x4
    80008064:	8d090913          	addi	s2,s2,-1840 # 8000b930 <kmem>
    80008068:	00002b37          	lui	s6,0x2
    8000806c:	0140006f          	j	80008080 <freerange+0x80>
    80008070:	000017b7          	lui	a5,0x1
    80008074:	00f484b3          	add	s1,s1,a5
    80008078:	0554ec63          	bltu	s1,s5,800080d0 <freerange+0xd0>
    8000807c:	0534fa63          	bgeu	s1,s3,800080d0 <freerange+0xd0>
    80008080:	00001637          	lui	a2,0x1
    80008084:	00100593          	li	a1,1
    80008088:	00048513          	mv	a0,s1
    8000808c:	00000097          	auipc	ra,0x0
    80008090:	50c080e7          	jalr	1292(ra) # 80008598 <__memset>
    80008094:	00093703          	ld	a4,0(s2)
    80008098:	016487b3          	add	a5,s1,s6
    8000809c:	00e4b023          	sd	a4,0(s1)
    800080a0:	00993023          	sd	s1,0(s2)
    800080a4:	fcfa76e3          	bgeu	s4,a5,80008070 <freerange+0x70>
    800080a8:	03813083          	ld	ra,56(sp)
    800080ac:	03013403          	ld	s0,48(sp)
    800080b0:	02813483          	ld	s1,40(sp)
    800080b4:	02013903          	ld	s2,32(sp)
    800080b8:	01813983          	ld	s3,24(sp)
    800080bc:	01013a03          	ld	s4,16(sp)
    800080c0:	00813a83          	ld	s5,8(sp)
    800080c4:	00013b03          	ld	s6,0(sp)
    800080c8:	04010113          	addi	sp,sp,64
    800080cc:	00008067          	ret
    800080d0:	00001517          	auipc	a0,0x1
    800080d4:	6b850513          	addi	a0,a0,1720 # 80009788 <digits+0x18>
    800080d8:	fffff097          	auipc	ra,0xfffff
    800080dc:	3d4080e7          	jalr	980(ra) # 800074ac <panic>

00000000800080e0 <kfree>:
    800080e0:	fe010113          	addi	sp,sp,-32
    800080e4:	00813823          	sd	s0,16(sp)
    800080e8:	00113c23          	sd	ra,24(sp)
    800080ec:	00913423          	sd	s1,8(sp)
    800080f0:	02010413          	addi	s0,sp,32
    800080f4:	03451793          	slli	a5,a0,0x34
    800080f8:	04079c63          	bnez	a5,80008150 <kfree+0x70>
    800080fc:	00005797          	auipc	a5,0x5
    80008100:	b5478793          	addi	a5,a5,-1196 # 8000cc50 <end>
    80008104:	00050493          	mv	s1,a0
    80008108:	04f56463          	bltu	a0,a5,80008150 <kfree+0x70>
    8000810c:	01100793          	li	a5,17
    80008110:	01b79793          	slli	a5,a5,0x1b
    80008114:	02f57e63          	bgeu	a0,a5,80008150 <kfree+0x70>
    80008118:	00001637          	lui	a2,0x1
    8000811c:	00100593          	li	a1,1
    80008120:	00000097          	auipc	ra,0x0
    80008124:	478080e7          	jalr	1144(ra) # 80008598 <__memset>
    80008128:	00004797          	auipc	a5,0x4
    8000812c:	80878793          	addi	a5,a5,-2040 # 8000b930 <kmem>
    80008130:	0007b703          	ld	a4,0(a5)
    80008134:	01813083          	ld	ra,24(sp)
    80008138:	01013403          	ld	s0,16(sp)
    8000813c:	00e4b023          	sd	a4,0(s1)
    80008140:	0097b023          	sd	s1,0(a5)
    80008144:	00813483          	ld	s1,8(sp)
    80008148:	02010113          	addi	sp,sp,32
    8000814c:	00008067          	ret
    80008150:	00001517          	auipc	a0,0x1
    80008154:	63850513          	addi	a0,a0,1592 # 80009788 <digits+0x18>
    80008158:	fffff097          	auipc	ra,0xfffff
    8000815c:	354080e7          	jalr	852(ra) # 800074ac <panic>

0000000080008160 <kalloc>:
    80008160:	fe010113          	addi	sp,sp,-32
    80008164:	00813823          	sd	s0,16(sp)
    80008168:	00913423          	sd	s1,8(sp)
    8000816c:	00113c23          	sd	ra,24(sp)
    80008170:	02010413          	addi	s0,sp,32
    80008174:	00003797          	auipc	a5,0x3
    80008178:	7bc78793          	addi	a5,a5,1980 # 8000b930 <kmem>
    8000817c:	0007b483          	ld	s1,0(a5)
    80008180:	02048063          	beqz	s1,800081a0 <kalloc+0x40>
    80008184:	0004b703          	ld	a4,0(s1)
    80008188:	00001637          	lui	a2,0x1
    8000818c:	00500593          	li	a1,5
    80008190:	00048513          	mv	a0,s1
    80008194:	00e7b023          	sd	a4,0(a5)
    80008198:	00000097          	auipc	ra,0x0
    8000819c:	400080e7          	jalr	1024(ra) # 80008598 <__memset>
    800081a0:	01813083          	ld	ra,24(sp)
    800081a4:	01013403          	ld	s0,16(sp)
    800081a8:	00048513          	mv	a0,s1
    800081ac:	00813483          	ld	s1,8(sp)
    800081b0:	02010113          	addi	sp,sp,32
    800081b4:	00008067          	ret

00000000800081b8 <initlock>:
    800081b8:	ff010113          	addi	sp,sp,-16
    800081bc:	00813423          	sd	s0,8(sp)
    800081c0:	01010413          	addi	s0,sp,16
    800081c4:	00813403          	ld	s0,8(sp)
    800081c8:	00b53423          	sd	a1,8(a0)
    800081cc:	00052023          	sw	zero,0(a0)
    800081d0:	00053823          	sd	zero,16(a0)
    800081d4:	01010113          	addi	sp,sp,16
    800081d8:	00008067          	ret

00000000800081dc <acquire>:
    800081dc:	fe010113          	addi	sp,sp,-32
    800081e0:	00813823          	sd	s0,16(sp)
    800081e4:	00913423          	sd	s1,8(sp)
    800081e8:	00113c23          	sd	ra,24(sp)
    800081ec:	01213023          	sd	s2,0(sp)
    800081f0:	02010413          	addi	s0,sp,32
    800081f4:	00050493          	mv	s1,a0
    800081f8:	10002973          	csrr	s2,sstatus
    800081fc:	100027f3          	csrr	a5,sstatus
    80008200:	ffd7f793          	andi	a5,a5,-3
    80008204:	10079073          	csrw	sstatus,a5
    80008208:	fffff097          	auipc	ra,0xfffff
    8000820c:	8e4080e7          	jalr	-1820(ra) # 80006aec <mycpu>
    80008210:	07852783          	lw	a5,120(a0)
    80008214:	06078e63          	beqz	a5,80008290 <acquire+0xb4>
    80008218:	fffff097          	auipc	ra,0xfffff
    8000821c:	8d4080e7          	jalr	-1836(ra) # 80006aec <mycpu>
    80008220:	07852783          	lw	a5,120(a0)
    80008224:	0004a703          	lw	a4,0(s1)
    80008228:	0017879b          	addiw	a5,a5,1
    8000822c:	06f52c23          	sw	a5,120(a0)
    80008230:	04071063          	bnez	a4,80008270 <acquire+0x94>
    80008234:	00100713          	li	a4,1
    80008238:	00070793          	mv	a5,a4
    8000823c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008240:	0007879b          	sext.w	a5,a5
    80008244:	fe079ae3          	bnez	a5,80008238 <acquire+0x5c>
    80008248:	0ff0000f          	fence
    8000824c:	fffff097          	auipc	ra,0xfffff
    80008250:	8a0080e7          	jalr	-1888(ra) # 80006aec <mycpu>
    80008254:	01813083          	ld	ra,24(sp)
    80008258:	01013403          	ld	s0,16(sp)
    8000825c:	00a4b823          	sd	a0,16(s1)
    80008260:	00013903          	ld	s2,0(sp)
    80008264:	00813483          	ld	s1,8(sp)
    80008268:	02010113          	addi	sp,sp,32
    8000826c:	00008067          	ret
    80008270:	0104b903          	ld	s2,16(s1)
    80008274:	fffff097          	auipc	ra,0xfffff
    80008278:	878080e7          	jalr	-1928(ra) # 80006aec <mycpu>
    8000827c:	faa91ce3          	bne	s2,a0,80008234 <acquire+0x58>
    80008280:	00001517          	auipc	a0,0x1
    80008284:	51050513          	addi	a0,a0,1296 # 80009790 <digits+0x20>
    80008288:	fffff097          	auipc	ra,0xfffff
    8000828c:	224080e7          	jalr	548(ra) # 800074ac <panic>
    80008290:	00195913          	srli	s2,s2,0x1
    80008294:	fffff097          	auipc	ra,0xfffff
    80008298:	858080e7          	jalr	-1960(ra) # 80006aec <mycpu>
    8000829c:	00197913          	andi	s2,s2,1
    800082a0:	07252e23          	sw	s2,124(a0)
    800082a4:	f75ff06f          	j	80008218 <acquire+0x3c>

00000000800082a8 <release>:
    800082a8:	fe010113          	addi	sp,sp,-32
    800082ac:	00813823          	sd	s0,16(sp)
    800082b0:	00113c23          	sd	ra,24(sp)
    800082b4:	00913423          	sd	s1,8(sp)
    800082b8:	01213023          	sd	s2,0(sp)
    800082bc:	02010413          	addi	s0,sp,32
    800082c0:	00052783          	lw	a5,0(a0)
    800082c4:	00079a63          	bnez	a5,800082d8 <release+0x30>
    800082c8:	00001517          	auipc	a0,0x1
    800082cc:	4d050513          	addi	a0,a0,1232 # 80009798 <digits+0x28>
    800082d0:	fffff097          	auipc	ra,0xfffff
    800082d4:	1dc080e7          	jalr	476(ra) # 800074ac <panic>
    800082d8:	01053903          	ld	s2,16(a0)
    800082dc:	00050493          	mv	s1,a0
    800082e0:	fffff097          	auipc	ra,0xfffff
    800082e4:	80c080e7          	jalr	-2036(ra) # 80006aec <mycpu>
    800082e8:	fea910e3          	bne	s2,a0,800082c8 <release+0x20>
    800082ec:	0004b823          	sd	zero,16(s1)
    800082f0:	0ff0000f          	fence
    800082f4:	0f50000f          	fence	iorw,ow
    800082f8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800082fc:	ffffe097          	auipc	ra,0xffffe
    80008300:	7f0080e7          	jalr	2032(ra) # 80006aec <mycpu>
    80008304:	100027f3          	csrr	a5,sstatus
    80008308:	0027f793          	andi	a5,a5,2
    8000830c:	04079a63          	bnez	a5,80008360 <release+0xb8>
    80008310:	07852783          	lw	a5,120(a0)
    80008314:	02f05e63          	blez	a5,80008350 <release+0xa8>
    80008318:	fff7871b          	addiw	a4,a5,-1
    8000831c:	06e52c23          	sw	a4,120(a0)
    80008320:	00071c63          	bnez	a4,80008338 <release+0x90>
    80008324:	07c52783          	lw	a5,124(a0)
    80008328:	00078863          	beqz	a5,80008338 <release+0x90>
    8000832c:	100027f3          	csrr	a5,sstatus
    80008330:	0027e793          	ori	a5,a5,2
    80008334:	10079073          	csrw	sstatus,a5
    80008338:	01813083          	ld	ra,24(sp)
    8000833c:	01013403          	ld	s0,16(sp)
    80008340:	00813483          	ld	s1,8(sp)
    80008344:	00013903          	ld	s2,0(sp)
    80008348:	02010113          	addi	sp,sp,32
    8000834c:	00008067          	ret
    80008350:	00001517          	auipc	a0,0x1
    80008354:	46850513          	addi	a0,a0,1128 # 800097b8 <digits+0x48>
    80008358:	fffff097          	auipc	ra,0xfffff
    8000835c:	154080e7          	jalr	340(ra) # 800074ac <panic>
    80008360:	00001517          	auipc	a0,0x1
    80008364:	44050513          	addi	a0,a0,1088 # 800097a0 <digits+0x30>
    80008368:	fffff097          	auipc	ra,0xfffff
    8000836c:	144080e7          	jalr	324(ra) # 800074ac <panic>

0000000080008370 <holding>:
    80008370:	00052783          	lw	a5,0(a0)
    80008374:	00079663          	bnez	a5,80008380 <holding+0x10>
    80008378:	00000513          	li	a0,0
    8000837c:	00008067          	ret
    80008380:	fe010113          	addi	sp,sp,-32
    80008384:	00813823          	sd	s0,16(sp)
    80008388:	00913423          	sd	s1,8(sp)
    8000838c:	00113c23          	sd	ra,24(sp)
    80008390:	02010413          	addi	s0,sp,32
    80008394:	01053483          	ld	s1,16(a0)
    80008398:	ffffe097          	auipc	ra,0xffffe
    8000839c:	754080e7          	jalr	1876(ra) # 80006aec <mycpu>
    800083a0:	01813083          	ld	ra,24(sp)
    800083a4:	01013403          	ld	s0,16(sp)
    800083a8:	40a48533          	sub	a0,s1,a0
    800083ac:	00153513          	seqz	a0,a0
    800083b0:	00813483          	ld	s1,8(sp)
    800083b4:	02010113          	addi	sp,sp,32
    800083b8:	00008067          	ret

00000000800083bc <push_off>:
    800083bc:	fe010113          	addi	sp,sp,-32
    800083c0:	00813823          	sd	s0,16(sp)
    800083c4:	00113c23          	sd	ra,24(sp)
    800083c8:	00913423          	sd	s1,8(sp)
    800083cc:	02010413          	addi	s0,sp,32
    800083d0:	100024f3          	csrr	s1,sstatus
    800083d4:	100027f3          	csrr	a5,sstatus
    800083d8:	ffd7f793          	andi	a5,a5,-3
    800083dc:	10079073          	csrw	sstatus,a5
    800083e0:	ffffe097          	auipc	ra,0xffffe
    800083e4:	70c080e7          	jalr	1804(ra) # 80006aec <mycpu>
    800083e8:	07852783          	lw	a5,120(a0)
    800083ec:	02078663          	beqz	a5,80008418 <push_off+0x5c>
    800083f0:	ffffe097          	auipc	ra,0xffffe
    800083f4:	6fc080e7          	jalr	1788(ra) # 80006aec <mycpu>
    800083f8:	07852783          	lw	a5,120(a0)
    800083fc:	01813083          	ld	ra,24(sp)
    80008400:	01013403          	ld	s0,16(sp)
    80008404:	0017879b          	addiw	a5,a5,1
    80008408:	06f52c23          	sw	a5,120(a0)
    8000840c:	00813483          	ld	s1,8(sp)
    80008410:	02010113          	addi	sp,sp,32
    80008414:	00008067          	ret
    80008418:	0014d493          	srli	s1,s1,0x1
    8000841c:	ffffe097          	auipc	ra,0xffffe
    80008420:	6d0080e7          	jalr	1744(ra) # 80006aec <mycpu>
    80008424:	0014f493          	andi	s1,s1,1
    80008428:	06952e23          	sw	s1,124(a0)
    8000842c:	fc5ff06f          	j	800083f0 <push_off+0x34>

0000000080008430 <pop_off>:
    80008430:	ff010113          	addi	sp,sp,-16
    80008434:	00813023          	sd	s0,0(sp)
    80008438:	00113423          	sd	ra,8(sp)
    8000843c:	01010413          	addi	s0,sp,16
    80008440:	ffffe097          	auipc	ra,0xffffe
    80008444:	6ac080e7          	jalr	1708(ra) # 80006aec <mycpu>
    80008448:	100027f3          	csrr	a5,sstatus
    8000844c:	0027f793          	andi	a5,a5,2
    80008450:	04079663          	bnez	a5,8000849c <pop_off+0x6c>
    80008454:	07852783          	lw	a5,120(a0)
    80008458:	02f05a63          	blez	a5,8000848c <pop_off+0x5c>
    8000845c:	fff7871b          	addiw	a4,a5,-1
    80008460:	06e52c23          	sw	a4,120(a0)
    80008464:	00071c63          	bnez	a4,8000847c <pop_off+0x4c>
    80008468:	07c52783          	lw	a5,124(a0)
    8000846c:	00078863          	beqz	a5,8000847c <pop_off+0x4c>
    80008470:	100027f3          	csrr	a5,sstatus
    80008474:	0027e793          	ori	a5,a5,2
    80008478:	10079073          	csrw	sstatus,a5
    8000847c:	00813083          	ld	ra,8(sp)
    80008480:	00013403          	ld	s0,0(sp)
    80008484:	01010113          	addi	sp,sp,16
    80008488:	00008067          	ret
    8000848c:	00001517          	auipc	a0,0x1
    80008490:	32c50513          	addi	a0,a0,812 # 800097b8 <digits+0x48>
    80008494:	fffff097          	auipc	ra,0xfffff
    80008498:	018080e7          	jalr	24(ra) # 800074ac <panic>
    8000849c:	00001517          	auipc	a0,0x1
    800084a0:	30450513          	addi	a0,a0,772 # 800097a0 <digits+0x30>
    800084a4:	fffff097          	auipc	ra,0xfffff
    800084a8:	008080e7          	jalr	8(ra) # 800074ac <panic>

00000000800084ac <push_on>:
    800084ac:	fe010113          	addi	sp,sp,-32
    800084b0:	00813823          	sd	s0,16(sp)
    800084b4:	00113c23          	sd	ra,24(sp)
    800084b8:	00913423          	sd	s1,8(sp)
    800084bc:	02010413          	addi	s0,sp,32
    800084c0:	100024f3          	csrr	s1,sstatus
    800084c4:	100027f3          	csrr	a5,sstatus
    800084c8:	0027e793          	ori	a5,a5,2
    800084cc:	10079073          	csrw	sstatus,a5
    800084d0:	ffffe097          	auipc	ra,0xffffe
    800084d4:	61c080e7          	jalr	1564(ra) # 80006aec <mycpu>
    800084d8:	07852783          	lw	a5,120(a0)
    800084dc:	02078663          	beqz	a5,80008508 <push_on+0x5c>
    800084e0:	ffffe097          	auipc	ra,0xffffe
    800084e4:	60c080e7          	jalr	1548(ra) # 80006aec <mycpu>
    800084e8:	07852783          	lw	a5,120(a0)
    800084ec:	01813083          	ld	ra,24(sp)
    800084f0:	01013403          	ld	s0,16(sp)
    800084f4:	0017879b          	addiw	a5,a5,1
    800084f8:	06f52c23          	sw	a5,120(a0)
    800084fc:	00813483          	ld	s1,8(sp)
    80008500:	02010113          	addi	sp,sp,32
    80008504:	00008067          	ret
    80008508:	0014d493          	srli	s1,s1,0x1
    8000850c:	ffffe097          	auipc	ra,0xffffe
    80008510:	5e0080e7          	jalr	1504(ra) # 80006aec <mycpu>
    80008514:	0014f493          	andi	s1,s1,1
    80008518:	06952e23          	sw	s1,124(a0)
    8000851c:	fc5ff06f          	j	800084e0 <push_on+0x34>

0000000080008520 <pop_on>:
    80008520:	ff010113          	addi	sp,sp,-16
    80008524:	00813023          	sd	s0,0(sp)
    80008528:	00113423          	sd	ra,8(sp)
    8000852c:	01010413          	addi	s0,sp,16
    80008530:	ffffe097          	auipc	ra,0xffffe
    80008534:	5bc080e7          	jalr	1468(ra) # 80006aec <mycpu>
    80008538:	100027f3          	csrr	a5,sstatus
    8000853c:	0027f793          	andi	a5,a5,2
    80008540:	04078463          	beqz	a5,80008588 <pop_on+0x68>
    80008544:	07852783          	lw	a5,120(a0)
    80008548:	02f05863          	blez	a5,80008578 <pop_on+0x58>
    8000854c:	fff7879b          	addiw	a5,a5,-1
    80008550:	06f52c23          	sw	a5,120(a0)
    80008554:	07853783          	ld	a5,120(a0)
    80008558:	00079863          	bnez	a5,80008568 <pop_on+0x48>
    8000855c:	100027f3          	csrr	a5,sstatus
    80008560:	ffd7f793          	andi	a5,a5,-3
    80008564:	10079073          	csrw	sstatus,a5
    80008568:	00813083          	ld	ra,8(sp)
    8000856c:	00013403          	ld	s0,0(sp)
    80008570:	01010113          	addi	sp,sp,16
    80008574:	00008067          	ret
    80008578:	00001517          	auipc	a0,0x1
    8000857c:	26850513          	addi	a0,a0,616 # 800097e0 <digits+0x70>
    80008580:	fffff097          	auipc	ra,0xfffff
    80008584:	f2c080e7          	jalr	-212(ra) # 800074ac <panic>
    80008588:	00001517          	auipc	a0,0x1
    8000858c:	23850513          	addi	a0,a0,568 # 800097c0 <digits+0x50>
    80008590:	fffff097          	auipc	ra,0xfffff
    80008594:	f1c080e7          	jalr	-228(ra) # 800074ac <panic>

0000000080008598 <__memset>:
    80008598:	ff010113          	addi	sp,sp,-16
    8000859c:	00813423          	sd	s0,8(sp)
    800085a0:	01010413          	addi	s0,sp,16
    800085a4:	1a060e63          	beqz	a2,80008760 <__memset+0x1c8>
    800085a8:	40a007b3          	neg	a5,a0
    800085ac:	0077f793          	andi	a5,a5,7
    800085b0:	00778693          	addi	a3,a5,7
    800085b4:	00b00813          	li	a6,11
    800085b8:	0ff5f593          	andi	a1,a1,255
    800085bc:	fff6071b          	addiw	a4,a2,-1
    800085c0:	1b06e663          	bltu	a3,a6,8000876c <__memset+0x1d4>
    800085c4:	1cd76463          	bltu	a4,a3,8000878c <__memset+0x1f4>
    800085c8:	1a078e63          	beqz	a5,80008784 <__memset+0x1ec>
    800085cc:	00b50023          	sb	a1,0(a0)
    800085d0:	00100713          	li	a4,1
    800085d4:	1ae78463          	beq	a5,a4,8000877c <__memset+0x1e4>
    800085d8:	00b500a3          	sb	a1,1(a0)
    800085dc:	00200713          	li	a4,2
    800085e0:	1ae78a63          	beq	a5,a4,80008794 <__memset+0x1fc>
    800085e4:	00b50123          	sb	a1,2(a0)
    800085e8:	00300713          	li	a4,3
    800085ec:	18e78463          	beq	a5,a4,80008774 <__memset+0x1dc>
    800085f0:	00b501a3          	sb	a1,3(a0)
    800085f4:	00400713          	li	a4,4
    800085f8:	1ae78263          	beq	a5,a4,8000879c <__memset+0x204>
    800085fc:	00b50223          	sb	a1,4(a0)
    80008600:	00500713          	li	a4,5
    80008604:	1ae78063          	beq	a5,a4,800087a4 <__memset+0x20c>
    80008608:	00b502a3          	sb	a1,5(a0)
    8000860c:	00700713          	li	a4,7
    80008610:	18e79e63          	bne	a5,a4,800087ac <__memset+0x214>
    80008614:	00b50323          	sb	a1,6(a0)
    80008618:	00700e93          	li	t4,7
    8000861c:	00859713          	slli	a4,a1,0x8
    80008620:	00e5e733          	or	a4,a1,a4
    80008624:	01059e13          	slli	t3,a1,0x10
    80008628:	01c76e33          	or	t3,a4,t3
    8000862c:	01859313          	slli	t1,a1,0x18
    80008630:	006e6333          	or	t1,t3,t1
    80008634:	02059893          	slli	a7,a1,0x20
    80008638:	40f60e3b          	subw	t3,a2,a5
    8000863c:	011368b3          	or	a7,t1,a7
    80008640:	02859813          	slli	a6,a1,0x28
    80008644:	0108e833          	or	a6,a7,a6
    80008648:	03059693          	slli	a3,a1,0x30
    8000864c:	003e589b          	srliw	a7,t3,0x3
    80008650:	00d866b3          	or	a3,a6,a3
    80008654:	03859713          	slli	a4,a1,0x38
    80008658:	00389813          	slli	a6,a7,0x3
    8000865c:	00f507b3          	add	a5,a0,a5
    80008660:	00e6e733          	or	a4,a3,a4
    80008664:	000e089b          	sext.w	a7,t3
    80008668:	00f806b3          	add	a3,a6,a5
    8000866c:	00e7b023          	sd	a4,0(a5)
    80008670:	00878793          	addi	a5,a5,8
    80008674:	fed79ce3          	bne	a5,a3,8000866c <__memset+0xd4>
    80008678:	ff8e7793          	andi	a5,t3,-8
    8000867c:	0007871b          	sext.w	a4,a5
    80008680:	01d787bb          	addw	a5,a5,t4
    80008684:	0ce88e63          	beq	a7,a4,80008760 <__memset+0x1c8>
    80008688:	00f50733          	add	a4,a0,a5
    8000868c:	00b70023          	sb	a1,0(a4)
    80008690:	0017871b          	addiw	a4,a5,1
    80008694:	0cc77663          	bgeu	a4,a2,80008760 <__memset+0x1c8>
    80008698:	00e50733          	add	a4,a0,a4
    8000869c:	00b70023          	sb	a1,0(a4)
    800086a0:	0027871b          	addiw	a4,a5,2
    800086a4:	0ac77e63          	bgeu	a4,a2,80008760 <__memset+0x1c8>
    800086a8:	00e50733          	add	a4,a0,a4
    800086ac:	00b70023          	sb	a1,0(a4)
    800086b0:	0037871b          	addiw	a4,a5,3
    800086b4:	0ac77663          	bgeu	a4,a2,80008760 <__memset+0x1c8>
    800086b8:	00e50733          	add	a4,a0,a4
    800086bc:	00b70023          	sb	a1,0(a4)
    800086c0:	0047871b          	addiw	a4,a5,4
    800086c4:	08c77e63          	bgeu	a4,a2,80008760 <__memset+0x1c8>
    800086c8:	00e50733          	add	a4,a0,a4
    800086cc:	00b70023          	sb	a1,0(a4)
    800086d0:	0057871b          	addiw	a4,a5,5
    800086d4:	08c77663          	bgeu	a4,a2,80008760 <__memset+0x1c8>
    800086d8:	00e50733          	add	a4,a0,a4
    800086dc:	00b70023          	sb	a1,0(a4)
    800086e0:	0067871b          	addiw	a4,a5,6
    800086e4:	06c77e63          	bgeu	a4,a2,80008760 <__memset+0x1c8>
    800086e8:	00e50733          	add	a4,a0,a4
    800086ec:	00b70023          	sb	a1,0(a4)
    800086f0:	0077871b          	addiw	a4,a5,7
    800086f4:	06c77663          	bgeu	a4,a2,80008760 <__memset+0x1c8>
    800086f8:	00e50733          	add	a4,a0,a4
    800086fc:	00b70023          	sb	a1,0(a4)
    80008700:	0087871b          	addiw	a4,a5,8
    80008704:	04c77e63          	bgeu	a4,a2,80008760 <__memset+0x1c8>
    80008708:	00e50733          	add	a4,a0,a4
    8000870c:	00b70023          	sb	a1,0(a4)
    80008710:	0097871b          	addiw	a4,a5,9
    80008714:	04c77663          	bgeu	a4,a2,80008760 <__memset+0x1c8>
    80008718:	00e50733          	add	a4,a0,a4
    8000871c:	00b70023          	sb	a1,0(a4)
    80008720:	00a7871b          	addiw	a4,a5,10
    80008724:	02c77e63          	bgeu	a4,a2,80008760 <__memset+0x1c8>
    80008728:	00e50733          	add	a4,a0,a4
    8000872c:	00b70023          	sb	a1,0(a4)
    80008730:	00b7871b          	addiw	a4,a5,11
    80008734:	02c77663          	bgeu	a4,a2,80008760 <__memset+0x1c8>
    80008738:	00e50733          	add	a4,a0,a4
    8000873c:	00b70023          	sb	a1,0(a4)
    80008740:	00c7871b          	addiw	a4,a5,12
    80008744:	00c77e63          	bgeu	a4,a2,80008760 <__memset+0x1c8>
    80008748:	00e50733          	add	a4,a0,a4
    8000874c:	00b70023          	sb	a1,0(a4)
    80008750:	00d7879b          	addiw	a5,a5,13
    80008754:	00c7f663          	bgeu	a5,a2,80008760 <__memset+0x1c8>
    80008758:	00f507b3          	add	a5,a0,a5
    8000875c:	00b78023          	sb	a1,0(a5)
    80008760:	00813403          	ld	s0,8(sp)
    80008764:	01010113          	addi	sp,sp,16
    80008768:	00008067          	ret
    8000876c:	00b00693          	li	a3,11
    80008770:	e55ff06f          	j	800085c4 <__memset+0x2c>
    80008774:	00300e93          	li	t4,3
    80008778:	ea5ff06f          	j	8000861c <__memset+0x84>
    8000877c:	00100e93          	li	t4,1
    80008780:	e9dff06f          	j	8000861c <__memset+0x84>
    80008784:	00000e93          	li	t4,0
    80008788:	e95ff06f          	j	8000861c <__memset+0x84>
    8000878c:	00000793          	li	a5,0
    80008790:	ef9ff06f          	j	80008688 <__memset+0xf0>
    80008794:	00200e93          	li	t4,2
    80008798:	e85ff06f          	j	8000861c <__memset+0x84>
    8000879c:	00400e93          	li	t4,4
    800087a0:	e7dff06f          	j	8000861c <__memset+0x84>
    800087a4:	00500e93          	li	t4,5
    800087a8:	e75ff06f          	j	8000861c <__memset+0x84>
    800087ac:	00600e93          	li	t4,6
    800087b0:	e6dff06f          	j	8000861c <__memset+0x84>

00000000800087b4 <__memmove>:
    800087b4:	ff010113          	addi	sp,sp,-16
    800087b8:	00813423          	sd	s0,8(sp)
    800087bc:	01010413          	addi	s0,sp,16
    800087c0:	0e060863          	beqz	a2,800088b0 <__memmove+0xfc>
    800087c4:	fff6069b          	addiw	a3,a2,-1
    800087c8:	0006881b          	sext.w	a6,a3
    800087cc:	0ea5e863          	bltu	a1,a0,800088bc <__memmove+0x108>
    800087d0:	00758713          	addi	a4,a1,7
    800087d4:	00a5e7b3          	or	a5,a1,a0
    800087d8:	40a70733          	sub	a4,a4,a0
    800087dc:	0077f793          	andi	a5,a5,7
    800087e0:	00f73713          	sltiu	a4,a4,15
    800087e4:	00174713          	xori	a4,a4,1
    800087e8:	0017b793          	seqz	a5,a5
    800087ec:	00e7f7b3          	and	a5,a5,a4
    800087f0:	10078863          	beqz	a5,80008900 <__memmove+0x14c>
    800087f4:	00900793          	li	a5,9
    800087f8:	1107f463          	bgeu	a5,a6,80008900 <__memmove+0x14c>
    800087fc:	0036581b          	srliw	a6,a2,0x3
    80008800:	fff8081b          	addiw	a6,a6,-1
    80008804:	02081813          	slli	a6,a6,0x20
    80008808:	01d85893          	srli	a7,a6,0x1d
    8000880c:	00858813          	addi	a6,a1,8
    80008810:	00058793          	mv	a5,a1
    80008814:	00050713          	mv	a4,a0
    80008818:	01088833          	add	a6,a7,a6
    8000881c:	0007b883          	ld	a7,0(a5)
    80008820:	00878793          	addi	a5,a5,8
    80008824:	00870713          	addi	a4,a4,8
    80008828:	ff173c23          	sd	a7,-8(a4)
    8000882c:	ff0798e3          	bne	a5,a6,8000881c <__memmove+0x68>
    80008830:	ff867713          	andi	a4,a2,-8
    80008834:	02071793          	slli	a5,a4,0x20
    80008838:	0207d793          	srli	a5,a5,0x20
    8000883c:	00f585b3          	add	a1,a1,a5
    80008840:	40e686bb          	subw	a3,a3,a4
    80008844:	00f507b3          	add	a5,a0,a5
    80008848:	06e60463          	beq	a2,a4,800088b0 <__memmove+0xfc>
    8000884c:	0005c703          	lbu	a4,0(a1)
    80008850:	00e78023          	sb	a4,0(a5)
    80008854:	04068e63          	beqz	a3,800088b0 <__memmove+0xfc>
    80008858:	0015c603          	lbu	a2,1(a1)
    8000885c:	00100713          	li	a4,1
    80008860:	00c780a3          	sb	a2,1(a5)
    80008864:	04e68663          	beq	a3,a4,800088b0 <__memmove+0xfc>
    80008868:	0025c603          	lbu	a2,2(a1)
    8000886c:	00200713          	li	a4,2
    80008870:	00c78123          	sb	a2,2(a5)
    80008874:	02e68e63          	beq	a3,a4,800088b0 <__memmove+0xfc>
    80008878:	0035c603          	lbu	a2,3(a1)
    8000887c:	00300713          	li	a4,3
    80008880:	00c781a3          	sb	a2,3(a5)
    80008884:	02e68663          	beq	a3,a4,800088b0 <__memmove+0xfc>
    80008888:	0045c603          	lbu	a2,4(a1)
    8000888c:	00400713          	li	a4,4
    80008890:	00c78223          	sb	a2,4(a5)
    80008894:	00e68e63          	beq	a3,a4,800088b0 <__memmove+0xfc>
    80008898:	0055c603          	lbu	a2,5(a1)
    8000889c:	00500713          	li	a4,5
    800088a0:	00c782a3          	sb	a2,5(a5)
    800088a4:	00e68663          	beq	a3,a4,800088b0 <__memmove+0xfc>
    800088a8:	0065c703          	lbu	a4,6(a1)
    800088ac:	00e78323          	sb	a4,6(a5)
    800088b0:	00813403          	ld	s0,8(sp)
    800088b4:	01010113          	addi	sp,sp,16
    800088b8:	00008067          	ret
    800088bc:	02061713          	slli	a4,a2,0x20
    800088c0:	02075713          	srli	a4,a4,0x20
    800088c4:	00e587b3          	add	a5,a1,a4
    800088c8:	f0f574e3          	bgeu	a0,a5,800087d0 <__memmove+0x1c>
    800088cc:	02069613          	slli	a2,a3,0x20
    800088d0:	02065613          	srli	a2,a2,0x20
    800088d4:	fff64613          	not	a2,a2
    800088d8:	00e50733          	add	a4,a0,a4
    800088dc:	00c78633          	add	a2,a5,a2
    800088e0:	fff7c683          	lbu	a3,-1(a5)
    800088e4:	fff78793          	addi	a5,a5,-1
    800088e8:	fff70713          	addi	a4,a4,-1
    800088ec:	00d70023          	sb	a3,0(a4)
    800088f0:	fec798e3          	bne	a5,a2,800088e0 <__memmove+0x12c>
    800088f4:	00813403          	ld	s0,8(sp)
    800088f8:	01010113          	addi	sp,sp,16
    800088fc:	00008067          	ret
    80008900:	02069713          	slli	a4,a3,0x20
    80008904:	02075713          	srli	a4,a4,0x20
    80008908:	00170713          	addi	a4,a4,1
    8000890c:	00e50733          	add	a4,a0,a4
    80008910:	00050793          	mv	a5,a0
    80008914:	0005c683          	lbu	a3,0(a1)
    80008918:	00178793          	addi	a5,a5,1
    8000891c:	00158593          	addi	a1,a1,1
    80008920:	fed78fa3          	sb	a3,-1(a5)
    80008924:	fee798e3          	bne	a5,a4,80008914 <__memmove+0x160>
    80008928:	f89ff06f          	j	800088b0 <__memmove+0xfc>
	...
