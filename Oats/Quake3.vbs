Set shell=CreateObject("wscript.shell")

number2 = InputBox("Enter float value", "Quake3")

if number2 = vbOk then Q_rsqrt(number2)

Function Q_rsqrt(number)
  y = MsgBox(number, "Quake3")
End Function
