#![no_std] // 標準ライブラリ(std)使わないよ
#![no_main] // main関数自分で書くよ

// アセンブリを埋め込むためのマクロをインポート
//  * coreライブラリはstdライブラリのサブセットで、OSがない環境でも使える
use core::arch::{asm, global_asm};

// パニック時の処理
use core::panic::PanicInfo;
#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {
        unsafe {
            asm!("wfi");
        }
    }
}
