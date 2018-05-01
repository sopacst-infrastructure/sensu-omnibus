name "sensu-translator-gem"
default_version "0.1.0"

dependency "sensu-gem"

build do
  env = with_standard_compiler_flags(with_embedded_path)
  bin_dir = File.join(install_dir, "bin")
  embedded_bin_dir = File.join(install_dir, "embedded", "bin")

  gem "install sensu" \
      " --version '#{version}'" \
      " --bindir '#{embedded_bin_dir}'" \
      " --no-ri --no-rdoc", env: env

  link("#{embedded_bin_dir}/sensu-translator", "#{bin_dir}/sensu-translator")
end
