function dev {
  docker build -t helloos .
  docker run -it helloos
}
function run {
  qemu-system-i386 kernel
}

	Set-Alias -Name dev -Value dev

	Set-Alias -Name run -Value run

