// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

var sources: [String] = []
var exclude: [String] = []

// common
sources += [
    "src/atomic",
    "src/camera",
    "src/core/SDL_core_unsupported.c",
    "src/cpuinfo",
    "src/dialog/SDL_dialog_utils.c",
    "src/dynapi/SDL_dynapi.c",
    "src/events",
    "src/process",
    "src/SDL_assert.c",
    "src/SDL_error.c",
    "src/SDL_guid.c",
    "src/SDL_hashtable.c",
    "src/SDL_hints.c",
    "src/SDL_list.c",
    "src/SDL_log.c",
    "src/SDL_properties.c",
    "src/SDL_utils.c",
    "src/SDL.c",
    "src/storage",
    "src/time",
]

// filesystem
sources += [
    "src/filesystem/SDL_filesystem.c",
    "src/filesystem/SDL_filesystem_c.h",
    "src/filesystem/SDL_sysfilesystem.h",
]
exclude += [
    "src/filesystem/gdk"
]

// main
sources += [
    "src/main/SDL_main_callbacks.c",
    "src/main/SDL_runapp.c",
    "src/main/generic/",
]

// stdlib
sources += [
    "src/stdlib/SDL_crc16.c",
    "src/stdlib/SDL_crc32.c",
    "src/stdlib/SDL_getenv.c",
    "src/stdlib/SDL_iconv.c",
    "src/stdlib/SDL_malloc.c",
    "src/stdlib/SDL_memcpy.c",
    "src/stdlib/SDL_memmove.c",
    "src/stdlib/SDL_memset.c",
    "src/stdlib/SDL_mslibc.c",
    "src/stdlib/SDL_murmur3.c",
    "src/stdlib/SDL_qsort.c",
    "src/stdlib/SDL_random.c",
    "src/stdlib/SDL_stdlib.c",
    "src/stdlib/SDL_string.c",
    "src/stdlib/SDL_strtokr.c",
    // "src/stdlib/SDL_mslibc_x64.masm",
]

// video
sources += [
    "src/video/dummy/",
    "src/video/offscreen/",
    "src/video/SDL_blit_0.c",
    "src/video/SDL_blit_1.c",
    "src/video/SDL_blit_A.c",
    "src/video/SDL_blit_auto.c",
    "src/video/SDL_blit_copy.c",
    "src/video/SDL_blit_N.c",
    "src/video/SDL_blit_slow.c",
    "src/video/SDL_blit.c",
    "src/video/SDL_bmp.c",
    "src/video/SDL_clipboard.c",
    "src/video/SDL_egl.c",
    "src/video/SDL_fillrect.c",
    "src/video/SDL_pixels.c",
    "src/video/SDL_rect.c",
    "src/video/SDL_RLEaccel.c",
    "src/video/SDL_stretch.c",
    "src/video/SDL_surface.c",
    "src/video/SDL_video_unsupported.c",
    "src/video/SDL_video.c",
    "src/video/SDL_vulkan_utils.c",
    "src/video/SDL_yuv.c",
]

// yuv2rgb
sources += [
    "src/video/yuv2rgb/yuv_rgb_lsx.c",
    "src/video/yuv2rgb/yuv_rgb_sse.c",
    "src/video/yuv2rgb/yuv_rgb_std.c",
]

// timer
sources += [
    "src/timer/SDL_timer.c"
]

// thread
sources += [
    "src/thread/SDL_thread.c"
]

// render
sources += [

    "src/render/gpu/SDL_pipeline_gpu.c",
    "src/render/gpu/SDL_render_gpu.c",
    "src/render/gpu/SDL_shaders_gpu.c",
    "src/render/SDL_render.c",
    "src/render/SDL_yuv_sw.c",
    "src/render/software/",
]

// sensor
sources += [
    "src/sensor/SDL_sensor.c",
    "src/sensor/dummy/",
]

// haptic
sources += [
    "src/haptic/SDL_haptic.c"
]

// joystick
sources += [
    "src/joystick/controller_type.c",
    "src/joystick/hidapi/",
    "src/joystick/SDL_gamepad.c",
    "src/joystick/SDL_joystick.c",
    "src/joystick/SDL_steam_virtual_gamepad.c",
    "src/joystick/virtual/",
]
exclude += [
    "src/joystick/check_8bitdo.sh",
    "src/joystick/sort_controllers.py",
]

// audio
sources += [
    "src/audio/disk/",
    "src/audio/dummy/",
    "src/audio/SDL_audio.c",
    "src/audio/SDL_audiocvt.c",
    "src/audio/SDL_audiodev.c",
    "src/audio/SDL_audioqueue.c",
    "src/audio/SDL_audioresample.c",
    "src/audio/SDL_audiotypecvt.c",
    "src/audio/SDL_mixer.c",
    "src/audio/SDL_wave.c",
]

// hidapi
sources += [
    "src/hidapi/SDL_hidapi.c"
]
exclude += [
    "src/hidapi/testgui"
]

// power
sources += [
    "src/power/SDL_power.c"
]

// locale
sources += [
    "src/locale/SDL_locale.c"
]

// gpu
sources += [
    "src/gpu/SDL_gpu.c",
    "src/gpu/metal/",
    "src/gpu/vulkan/",
]
exclude += [
    "src/gpu/metal/compile_shaders.sh",
    "src/gpu/metal/Metal_Blit.metal",
]

// misc
sources += [
    "src/misc/SDL_url.c"
]

// io (replaces old file section)
sources += [
    "src/io/SDL_asyncio.c",
    "src/io/SDL_asyncio_c.h",
    "src/io/SDL_iostream.c",
    "src/io/SDL_iostream_c.h",
    "src/io/SDL_sysasyncio.h",
    "src/io/generic/SDL_asyncio_generic.c",
]

// dialog
sources += [
    "src/dialog/SDL_dialog.c",
    "src/dialog/SDL_dialog.h",
]

// tray
sources += [
    "src/tray/SDL_tray_utils.c",
    "src/tray/SDL_tray_utils.h",
]

// video stb
sources += [
    "src/video/SDL_stb.c",
    "src/video/SDL_stb_c.h",
]

// haptic hidapi
sources += [
    "src/haptic/hidapi/SDL_hidapihaptic.c",
    "src/haptic/hidapi/SDL_hidapihaptic.h",
    "src/haptic/hidapi/SDL_hidapihaptic_c.h",
    "src/haptic/hidapi/SDL_hidapihaptic_lg4ff.c",
]

#if os(macOS)
    // macOS specific
    sources += [
        "src/filesystem/cocoa",
        "src/filesystem/posix",
        "src/audio/coreaudio",
        "src/dialog/cocoa",
        "src/haptic/darwin",
        "src/io/n3ds",
        "src/joystick/apple",
        "src/joystick/darwin",
        "src/loadso/dlopen",
        "src/locale/macos",
        "src/misc/macos",
        "src/power/macos",
        "src/render/metal",
        "src/render/opengl",
        "src/render/opengles2",
        "src/thread/pthread",
        "src/timer/unix",
        "src/tray/cocoa",
        "src/video/cocoa",
    ]
    exclude += [
        "src/render/metal/build-metal-shaders.sh",
        "src/render/metal/SDL_shaders_metal.metal",
    ]
#endif

#if os(Windows)
    // Windows specific
    sources += [
        "src/audio/directsound",
        "src/audio/wasapi",
        "src/core/windows",
        "src/dialog/windows",
        "src/filesystem/windows",
        "src/filesystem/posix",
        "src/gpu/d3d11/",
        "src/gpu/d3d12/",
        "src/haptic/windows",
        "src/io/windows",
        "src/joystick/gdk/",
        "src/joystick/windows/",
        "src/libm",
        "src/loadso/windows",
        "src/locale/windows",
        "src/main/windows/",
        "src/misc/windows",
        "src/power/windows",
        "src/render/SDL_d3dmath.c",
        "src/render/opengl",
        "src/render/direct3d/",
        "src/render/direct3d11/",
        "src/render/direct3d12/",
        "src/render/opengles2/",
        "src/render/vulkan/",
        "src/sensor/windows/",
        "src/thread/generic/SDL_syscond.c",
        "src/thread/generic/SDL_sysrwlock.c",
        "src/thread/windows",
        "src/timer/windows",
        "src/tray/windows",
        "src/video/windows",
        // "src/render/direct3d",
    ]
    exclude += [
        "src/core/windows/version.rc",
        "src/gpu/d3d11/compile_shaders.bat",
        "src/gpu/d3d12/compile_shaders.bat",
        "src/gpu/d3d12/compile_shaders_xbox.bat",
        "src/render/direct3d/compile_shaders.bat",
        "src/render/direct3d/D3D9_PixelShader_YUV.hlsl",
        "src/render/direct3d11/compile_shaders.bat",
        "src/render/direct3d11/D3D11_PixelShader_Advanced.hlsl",
        "src/render/direct3d11/D3D11_PixelShader_Colors.hlsl",
        "src/render/direct3d11/D3D11_PixelShader_Common.hlsli",
        "src/render/direct3d11/D3D11_PixelShader_Textures.hlsl",
        "src/render/direct3d11/D3D11_VertexShader.hlsl",
        "src/render/direct3d12/compile_shaders.bat",
        "src/render/direct3d12/compile_shaders_xbox.bat",
        "src/render/direct3d12/D3D12_PixelShader_Advanced.hlsl",
        "src/render/direct3d12/D3D12_PixelShader_Colors.hlsl",
        "src/render/direct3d12/D3D12_PixelShader_Common.hlsli",
        "src/render/direct3d12/D3D12_PixelShader_Textures.hlsl",
        "src/render/direct3d12/D3D12_Shader_Common.hlsli",
        "src/render/direct3d12/D3D12_VertexShader.hlsl",
        "src/render/vulkan/compile_shaders.bat",
        "src/render/vulkan/VULKAN_VertexShader.hlsl",
        "src/render/vulkan/VULKAN_PixelShader_Textures.hlsl",
        "src/render/vulkan/VULKAN_PixelShader_Advanced.hlsl",
        "src/render/vulkan/VULKAN_PixelShader_Colors.hlsl",
        "src/render/vulkan/VULKAN_PixelShader_Common.hlsli",
    ]
#endif

#if os(Linux)
    // macOS specific
    sources += [
        "wayland-generated-protocols",
        "src/audio/alsa",
        "src/audio/pulseaudio",
        "src/audio/sndio",
        "src/core/linux",
        "src/core/unix",
        "src/dialog/unix",
        "src/filesystem/unix",
        "src/filesystem/posix",
        "src/haptic/linux",
        "src/io/io_uring",
        "src/joystick/linux",
        "src/joystick/steam",
        "src/loadso/dlopen",
        "src/locale/unix",
        "src/misc/unix",
        "src/power/linux",
        "src/render/vulkan",
        "src/render/opengl",
        "src/render/opengles2",
        "src/render/SDL_d3dmath.c",
        "src/thread/pthread",
        "src/timer/unix",
        "src/tray/unix",
        "src/video/kmsdrm",
        "src/video/wayland",
        "src/video/x11",
    ]
    exclude += [
        "src/render/vulkan/compile_shaders.bat",
        "src/render/vulkan/VULKAN_VertexShader.hlsl",
        "src/render/vulkan/VULKAN_PixelShader_Textures.hlsl",
        "src/render/vulkan/VULKAN_PixelShader_Advanced.hlsl",
        "src/render/vulkan/VULKAN_PixelShader_Colors.hlsl",
        "src/render/vulkan/VULKAN_PixelShader_Common.hlsli",
    ]
#endif

let package = Package(
    name: "SwiftSDL3",
    platforms: [
        .macOS(.v10_14)
        // .iOS(.v12),
        // .tvOS(.v12),
        // .watchOS(.v5),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftSDL3",
            targets: ["SwiftSDL3"]
        )
    ],
    targets: [
        .target(
            name: "SwiftSDL3",
            dependencies: [
                .target(name: "libdecor", condition: .when(platforms: [.linux])),
                .target(name: "dbus", condition: .when(platforms: [.linux])),
                .target(name: "ibus", condition: .when(platforms: [.linux])),
                .target(name: "libdrm", condition: .when(platforms: [.linux])),
            ],
            exclude: exclude,
            sources: sources,
            resources: [],
            cSettings: [
                .headerSearchPath("include/build_config", .when(platforms: [.macOS, .windows])),
                .headerSearchPath("include/build_config_ubuntu", .when(platforms: [.linux])),
                .headerSearchPath("wayland-generated-protocols", .when(platforms: [.linux])),
                .headerSearchPath("src"),
                .define("SDL_USE_BUILTIN_OPENGL_DEFINITIONS"),
            ],
            linkerSettings: [
                .linkedLibrary(
                    "iconv",
                    .when(platforms: [.macOS, .iOS, .tvOS, .watchOS])
                ),
                .linkedFramework(
                    "AudioToolbox",
                    .when(platforms: [.macOS, .iOS, .tvOS, .watchOS])
                ),
                .linkedFramework(
                    "AVFoundation",
                    .when(platforms: [.macOS, .iOS, .tvOS, .watchOS])
                ),
                .linkedFramework("CoreAudio", .when(platforms: [.macOS, .iOS, .tvOS, .watchOS])),
                .linkedFramework(
                    "CoreGraphics",
                    .when(platforms: [.macOS, .iOS, .tvOS, .watchOS])
                ),
                .linkedFramework("CoreHaptics", .when(platforms: [.macOS, .iOS, .tvOS, .watchOS])),
                .linkedFramework("CoreMotion", .when(platforms: [.macOS, .iOS, .tvOS, .watchOS])),
                .linkedFramework("Foundation", .when(platforms: [.macOS, .iOS, .tvOS, .watchOS])),
                .linkedFramework(
                    "GameController",
                    .when(platforms: [.macOS, .iOS, .tvOS, .watchOS])
                ),
                .linkedFramework("IOKit", .when(platforms: [.macOS, .iOS, .tvOS, .watchOS])),
                .linkedFramework("Metal", .when(platforms: [.macOS, .iOS, .tvOS, .watchOS])),
                .linkedFramework("QuartzCore", .when(platforms: [.macOS, .iOS, .tvOS, .watchOS])),
                .linkedFramework("Carbon", .when(platforms: [.macOS, .iOS, .tvOS, .watchOS])),
                .linkedFramework("Cocoa", .when(platforms: [.macOS, .iOS, .tvOS, .watchOS])),
                .linkedFramework(
                    "ForceFeedback",
                    .when(platforms: [.macOS, .iOS, .tvOS, .watchOS])
                ),

                .linkedLibrary("User32", .when(platforms: [.windows])),
                .linkedLibrary("Shell32", .when(platforms: [.windows])),
                .linkedLibrary("Cfgmgr32", .when(platforms: [.windows])),
                .linkedLibrary("Advapi32", .when(platforms: [.windows])),
                .linkedLibrary("Winmm", .when(platforms: [.windows])),
                .linkedLibrary("SetupAPI", .when(platforms: [.windows])),
                .linkedLibrary("Gdi32", .when(platforms: [.windows])),
                .linkedLibrary("Ole32", .when(platforms: [.windows])),
                .linkedLibrary("Imm32", .when(platforms: [.windows])),
                .linkedLibrary("Version", .when(platforms: [.windows])),
                .linkedLibrary("OleAut32", .when(platforms: [.windows])),

                .linkedLibrary("m", .when(platforms: [.linux])),

            ]
        ),
        .systemLibrary(
            name: "libdecor",
            pkgConfig: "libdecor-0"
        ),
        .systemLibrary(
            name: "dbus",
            pkgConfig: "dbus-1"
        ),
        .systemLibrary(
            name: "ibus",
            pkgConfig: "ibus-1.0"
        ),
        .systemLibrary(
            name: "libdrm",
            pkgConfig: "libdrm"
        ),
        .executableTarget(
            name: "SwiftSDL3Example",
            dependencies: [
                "SwiftSDL3"
            ]
        ),
        .testTarget(
            name: "SwiftSDL3Tests",
            dependencies: ["SwiftSDL3"]
        ),
    ]
)
