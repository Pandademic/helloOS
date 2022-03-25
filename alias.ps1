function devfunc{
  docker build -t helloos .
  docker run -it helloos
}
function runfunc{
  qemu-system-i386 kernel
}
Set-Alias -Name dev -Value devfunc
Set-Alias -Name run -Value runfunc

