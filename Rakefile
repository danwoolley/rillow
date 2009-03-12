require 'rubygems'
Gem::manage_gems
require 'rake/gempackagetask'

s=Gem::Specification.new do |spec|
  spec.name = 'rillow'
  spec.version = '0.2.0'
  spec.author = 'Leo Chan'
  spec.add_dependency('xml-simple','>=1.0.11')
  spec.summary = 'Ruby wrapper api to the Zillow webservice api'
  spec.files = ['lib/rillow.rb', 'lib/rillow_helper.rb']
  spec.extra_rdoc_files = ['README']
  spec.has_rdoc = true
  spec.description = <<-EOF
     rillow is a ruby wrapper api to the Zillow webservice api.
    EOF
  spec.email = 'mountainntream@forge.org'
end

Rake::GemPackageTask.new(s) do |pkg|
  pkg.need_tar = true
end

task :default => "pkg/#{s.name}-#{s.version}.gem" do
  puts "generated latest version"
end
