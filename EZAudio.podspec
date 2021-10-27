Pod::Spec.new do |s|
    s.name         = "EZAudio"
    s.version      = "1.1.6"
    s.summary      = "A simple, intuitive audio framework for iOS and OSX useful for anyone doing audio processing and/or audio-based visualizations."
    s.homepage     = "https://github.com/iDevelopper/EZAudio"
    s.screenshots  = "https://s3-us-west-1.amazonaws.com/ezaudio-media/EZAudioSummary.png"
    s.license      = { :type => 'MIT', :file => 'LICENSE' }
    s.author       = { "Syed Haris Ali" => "syedhali07@gmail.com" }
    s.ios.deployment_target = '11.0'
    s.osx.deployment_target = '10.15'
    s.source       = { :git => "https://github.com/iDevelopper/EZAudio.git", :tag => s.version }
    s.exclude_files = [ 'EZAudio/TPCircularBuffer.{h,c}', 'EZAudio/EZAudioiOS.h', 'EZAudio/EZAudioOSX.h' ]
    s.ios.frameworks = 'AudioToolbox','AVFoundation', 'Accelerate'
    s.osx.frameworks = 'AudioToolbox','AudioUnit','CoreAudio','QuartzCore','OpenGL', 'Accelerate'
    s.requires_arc = true;
    s.default_subspec = 'Full'
    s.subspec 'Core' do |core|
        core.source_files  = 'EZAudio/*.{h,m,c}'
        core.exclude_files = [ 'EZAudio/EzAudioPlotGL.{h,m}' ]
    end

    s.subspec 'Full' do |full|
        full.dependency 'TPCircularBuffer', '1.1'
        full.dependency 'EZAudio/Core'
    end
end
