Pod::Spec.new do |s|
s.name              = 'StateMVP'
s.version           = '1.2.0'
s.summary           = 'MVP Architecture with States and Events'
s.homepage          = 'https://github.com/wearemadstudio/StateMVP'
s.description = <<-DESC
Simple MVP Architecture with States and Events
DESC
s.ios.deployment_target = '12.0'
s.swift_version = '5.0'
s.license           = { :type => 'MIT', :file => 'LICENSE' }
s.author            = { 'Nick Sadchikov' => 'kolya.s@wearemad.ru' }
s.source            = {
	:git => 'https://github.com/wearemadru/StateMVP.git',
	:tag => "#{s.version}" }
s.framework = 'UIKit', 'Foundation'
s.source_files = 'StateMVP/StateMVP/Classes/Architecture/*'
end