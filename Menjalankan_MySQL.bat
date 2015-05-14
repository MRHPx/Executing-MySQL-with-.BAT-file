@echo off
::Silakan rubah lokasi executable BIN sesuai instalasi MySQL pada sistem komputer Anda
set lokasi_mysql=C:\xampp\mysql\bin

::Silakan rubah lokasi file *.INI sesuai instalasi MySQL pada sistem komputer Anda
set lokasi_ini=C:\xampp\mysql\bin\my.ini

::Silakan rubah menjadi nama Anda atau nama komputer Anda (opsional)
set pembuat_script=MRHPx aka Rizal / mrhpx at yahoo dot com

echo #################################################################
echo #                                                               #
echo # %pembuat_script%                      #
echo # Mulai menjalankan MySQL, silakan tunggu                       #
echo # Lokasi file *.INI MySQL terletak di %lokasi_ini% #
echo # Mohon jangan tutup jendela ini                                #
echo #                                                               #
echo #################################################################

%lokasi_mysql%\mysqld.exe --defaults-file=%lokasi_ini% --standalone --console

if errorlevel 1 goto error
goto keluar

:error
echo #################################################################
echo #                                                               #
echo # Terjadi kesalahan! MySQL tidak dapat dijalankan               #
echo #                                                               #
echo #################################################################
pause

:keluar
