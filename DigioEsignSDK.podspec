Pod::Spec.new do |spec|
  spec.name         = "DigioEsignSDK"
  spec.version      = "1.0.5"
  spec.summary      = "Digio eSign, Mandate SDK"
  spec.description  = <<-DESC
                        DigioEsignSDK is a swift client framework, which is design for digital signature, create mandate, Aadhaar base mandate etc
                   DESC
  spec.homepage     = "https://github.com/digio-tech/digio-ios-sdk"
  spec.license      = { :type => "BSD", :file => "LICENSE" }
  spec.author             = { "Digio" => "akash@digio.in" }
  spec.social_media_url   = "https://twitter.com/digio_in"
  spec.platform     = :ios
  spec.ios.deployment_target = "12.0"
  spec.swift_version = "5.9"
  spec.source       = { :git => "https://github.com/digio-tech/digio-ios-sdk.git", :tag => "#{spec.version}" }
  spec.vendored_frameworks = "DigioEsignSDK.xcframework"
end
