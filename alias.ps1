function devfunc{
  docker build -t helloos .
  docker run -it helloos
}
function runfunc{
  qemu-system-i386 kernel
}
Set-Alias -Name Run-Dev -Value devfunc
Set-Alias -Name Run-Os -Value runfunc

