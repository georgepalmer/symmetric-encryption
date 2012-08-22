config_file = Rails.root.join("config", "symmetric-encryption.yml")
if config_file.file?
  ::SymmetricEncryption.load!(config_file, Rails.env)
else
  puts "\nSymmetric Encryption config not found. Create a config file at: config/symmetric-encryption.yml"
  #           puts "to generate one run: rails generate symmetric-encryption:config\n\n"
end