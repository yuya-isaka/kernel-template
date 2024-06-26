SECTIONS {
    . = 0x80200000;

    .text : ALIGN(8) {
        KEEP(*(.text.boot.mykernel));
        *(.text .text.*);
    }

    .rodata : ALIGN(8) {
        *(.rodata .rodata.*);
    }

    .data : ALIGN(8) {
        *(.data .data.*);
    }

    .bss : ALIGN(8) {
        *(.bss .bss.*);
    }

    . = ALIGN(8);
    . += 64 * 1024;
    PROVIDE(__stack = .);
}