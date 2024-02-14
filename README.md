# esp-wifi bench server on Android

This is https://github.com/esp-rs/esp-wifi/tree/main/extras/bench-server for Android.

## Needed

- android-ndk
- cargo-ndk
- toolchain installed (`rustup target add armv7-linux-androideabi`)

## How to compile

set ANDROID_NDK_HOME \tools\android-ndk-r26c\
cargo ndk --target=armv7-linux-androideabi build --release
\tools\adb\adb.exe push target\armv7-linux-androideabi\release\bench /data/local/tmp
\tools\adb\adb.exe shell

In the shell
```
cd /data/local/tmp
chmod +x bench
./bench
```

or just use `run.bat`

## How to use with the benchmark

Start a hotspot on your Android phone. Figure out the HOST_IP (e.g. connect with `dhcp` example and use the gateway address).
Then use `bench` or `embassy_bench`.

## Why

My idea was to put the phone and the ESP32 into a shielded box but I haven't found anything that shields signals good enough.
Still I can put the two devices aside and get less varying results.
