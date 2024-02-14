set ANDROID_NDK_HOME=\tools\android-ndk-r26c\
cargo ndk --target=armv7-linux-androideabi build --release
\tools\adb\adb.exe push target\armv7-linux-androideabi\release\bench /data/local/tmp
\tools\adb\adb.exe shell chmod +x /data/local/tmp/bench
\tools\adb\adb.exe shell /data/local/tmp/bench
