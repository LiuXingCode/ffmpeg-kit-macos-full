Pod::Spec.new do |s|  
    s.name              = "ffmpeg-kit-macos-full"
    s.version           = "6.0.0"
    s.summary           = "FFmpeg Kit macOS Full Shared Framework"
    s.description       = <<-DESC
    DESCRIPTION
    DESC

    s.homepage          = "https://github.com/tanersener/ffmpeg-kit"

    s.author            = { "Taner Sener" => "tanersener@gmail.com" }
    s.license           = 'MIT'

    s.platform          = :osx
    s.requires_arc      = true
    s.static_framework    = true
    s.libraries         = 'z', 'bz2', 'c++', 'iconv'

    s.source            = { :git => "https://github.com/LiuXingCode/ffmpeg-kit-macos-full.git", :tag => "#{s.version}" }

    s.osx.deployment_target = '10.12'
    s.osx.frameworks    = 'AudioToolbox','AVFoundation','CoreAudio','CoreImage','CoreMedia','OpenCL','OpenGL', 'Security', 'VideoToolbox'
    s.osx.vendored_frameworks = 'Frameworks/ffmpegkit.xcframework', 'Frameworks/libavcodec.xcframework', 'Frameworks/libavdevice.xcframework', 'Frameworks/libavfilter.xcframework', 'Frameworks/libavformat.xcframework', 'Frameworks/libavutil.xcframework', 'Frameworks/libswresample.xcframework', 'Frameworks/libswscale.xcframework'

end  