local ifauto = io.popen('defaults read -g AppleInterfaceStyleSwitchesAutomatically')
local ifauto_str = ifauto:read("*all")
local ifdark = io.popen('defaults read -g AppleInterfaceStyle')
local ifdark_str = ifdark:read("*all")

if ifauto_str == '1\n'
then
  print(ifauto_str)
  print('fine');
  if ifdark_str == 'Dark\n'
  then
    print(ifdark_str)
    print('nice')
  else
    print(ifdark_str)
    print('ok')
  end
else
  print(ifauto_str)
  print('bad');
end
