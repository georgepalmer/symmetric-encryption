lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'rake/clean'
require 'rake/testtask'
require 'rake/gempackagetask'
require 'date'
require 'symmetric_encryption/version'

desc "Build gem"
gemspec = Gem::Specification.new do |s|
  s.name        = 'symmetric-encryption'
  s.version     = SymmetricEncryption::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Reid Morrison']
  s.email       = ['reidmo@gmail.com']
  s.homepage    = 'https://github.com/ClarityServices/symmetric-encryption'
  s.date        = Date.today.to_s
  s.summary     = "Symmetric Encryption for Ruby, and Ruby on Rails"
  s.description = "SymmetricEncryption supports encrypting ActiveRecord data, Mongoid data, passwords in configuration files, encrypting and decrypting of large files through streaming"
  s.files       = FileList["./**/*"].exclude('*.gem', 'nbproject').map{|f| f.sub(/^\.\//, '')}
  s.has_rdoc    = true
end
# Gem::Builder.new(gemspec).build

Rake::GemPackageTask.new(gemspec) do |pkg|
  pkg.need_tar = true
end