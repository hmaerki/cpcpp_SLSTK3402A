This is the original [Readme](README_ori.md).

QP for SLSTK3402A
=====

2018-11-10, Hans Märki

The QP examples support the efm3232pg1a (SLSTK3401A)

![SLSTK3401A](https://siliconlabs-h.assetsadobe.com/is/image//content/dam/siliconlabs/images/products/microcontrollers/32-bit_mcus/pearl_gecko/pearl-gecko-stk.jpg)

I did a very dirty port for the efm3232pg12b (SLSTK3402A)

![SLSTK3402A](https://siliconlabs-h.assetsadobe.com/is/image//content/dam/siliconlabs/images/products/microcontrollers/32-bit_mcus/pearl_gecko/slstk3402a-pearl-gecko-pg12-stk.png?)

This repository is [qpcpp](https://github.com/QuantumLeaps/qpcpp) from Quantum Leaps with all the changes I made to run on the SLSTK3402A.

You only need to have this repository and the [QP-Tools](https://github.com/QuantumLeaps/qtools/releases) installed (for make and the arm-gcc) on C:\qp\qtools.

There is a [windows batch](SLSTK3402A/windows_gnu_build_all.cmd) file which compiles all SLSTK3402A projects.
Two projects still have compile errors.

Again: The port is a hack - but the applications run ok.

How I set up this repository
-----
~~~~~~
git clone https://github.com/QuantumLeaps/qpcpp.git
cd qpcpp
git checkout tags/v6.3.6 -b SLSTK3402A
git remote -v
  origin  https://github.com/QuantumLeaps/qpcpp.git (fetch)
  origin  https://github.com/QuantumLeaps/qpcpp.git (push)
git remote set-url origin https://github.com/hmaerki/cpcpp_SLSTK3402A.git
git push -u origin SLSTK3402A
~~~~~~

How to run the examples with QSpy
---------
~~~~~~
cmd.exe
cd C:\qp\qtools\bin
qspy.exe -h
qspy.exe -c COM42
~~~~~~

How to flash using [Simplicity Studio](https://www.silabs.com/products/development-tools/software/simplicity-studio)
~~~~~~
  Launcher Perspektive
  Compatible Tools
  Flash Programmer
~~~~~~
Start the Flash-Programmer, check 'bin'-file and flash <qpcpp>\examples\arm-cm\dpp_efm32-slstk3401a\qv\gnu\spy\dpp-qv.bin