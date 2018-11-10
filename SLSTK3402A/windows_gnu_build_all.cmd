set QPCPP=%~p0..
set QTOOLS=C:\qp\qtools

set PATH=%QTOOLS%\bin:%PATH%

cd %QPCPP%\examples\arm-cm\game_efm32-slstk3401a\qv\gnu
pause
make CONF=dbg

cd %QPCPP%\examples\arm-cm\blinky_efm32-slstk3401a\qk\gnu
pause
make CONF=dbg

cd %QPCPP%\examples\arm-cm\blinky_efm32-slstk3401a\qv\gnu
pause
make CONF=dbg

cd %QPCPP%\examples\arm-cm\dpp_efm32-slstk3401a\qk\gnu
pause
make CONF=dbg

cd %QPCPP%\examples\arm-cm\dpp_efm32-slstk3401a\qv\gnu
pause
make CONF=dbg

cd %QPCPP%\examples\arm-cm\dpp_efm32-slstk3401a\qxk\gnu
pause
make CONF=dbg

cd %QPCPP%\examples\arm-cm\dpp_efm32-slstk3401a\qxk\gnu_with-rtti
pause
make CONF=dbg

cd %QPCPP%\examples\arm-cm\game_efm32-slstk3401a\qk\gnu
pause
make CONF=dbg

pause
echo DONE
pause