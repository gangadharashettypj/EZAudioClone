Pod::Spec.new do |s|
    s.name         = "EZAudioClone"
    s.version      = "0.1.6"
    s.summary      = "A simple, intuitive audio framework for iOS and OSX useful for anyone doing audio processing and/or audio-based visualizations."
    s.homepage     = "https://github.com/gangadharashettypj/EZAudioClone"
    s.license      = { :type => 'MIT', :file => 'LICENSE' }
    s.author       = { "Syed Haris Ali" => "syedhali07@gmail.com" }
    s.ios.deployment_target = '8.0'
    s.osx.deployment_target = '10.8'
    s.source       = { :git => "https://github.com/gangadharashettypj/EZAudioClone.git", :tag => s.version }
    s.exclude_files = [ 'EZAudioClone/TPCircularBuffer.{h,c}', 'EZAudioClone/EZAudioiOS.h', 'EZAudioClone/EZAudioOSX.h' ]
    s.ios.frameworks = 'AudioToolbox','AVFoundation','GLKit', 'Accelerate'
    s.osx.frameworks = 'AudioToolbox','AudioUnit','CoreAudio','QuartzCore','OpenGL','GLKit', 'Accelerate'
    s.requires_arc = true;
    s.default_subspec = 'Full'
    s.subspec 'Core' do |core|
        core.source_files  = 'EZAudioClone/*.{h,m,c}'
    end

    s.subspec 'Full' do |full|
        full.dependency 'TPCircularBuffer', '1.1'
        full.dependency 'EZAudioClone/Core'
    end
end
