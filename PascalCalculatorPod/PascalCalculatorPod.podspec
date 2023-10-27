Pod::Spec.new do |spec|
  spec.name         = "PascalCalculatorPod"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of PascalCalculatorPod."
  spec.description  = "The pascal calculator takes two double and perform
for main operations on them."
  spec.homepage     = "https://github.com/ariobarxan/Medium/tree/main/PascalCalculatorPod"
  spec.license      = "MIT"
  spec.author             = { "Ariobraxan" => "ariobarxan.dev@gmail.com" }
  spec.social_media_url   = "https://twitter.com/Ariobarxann"
  spec.platform     = :ios, "12.0"
  spec.source       = { :git => "https://github.com/ariobarxan/Medium/tree/main/PascalCalculatorPod"}
  spec.source_files  = "Sources", "Source/**/*.{swift}"
end

