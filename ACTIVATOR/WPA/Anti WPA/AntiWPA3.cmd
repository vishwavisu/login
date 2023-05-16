@echo off
cls
echo AntiWPA-Patch 3.3          GURUFUEL.COM 
echo =======================================
echo.
If exist %systemroot%\system32\antiwpa.dll goto uninstall
	echo This will really disable the Windows Product Activation.
	echo And not only make the activation dialog say it's activated
	echo as most not working patches does...
	echo ... and after 30 days surprise, surprise :)
	echo.
	echo This one will patch the evil at its root.
	echo Also with this version there's no more hassle with the 
	echo windows system file protection or servicepacks that 
	echo overwrote the patch...
	echo Press CTRL+C to cancel now or ENTER to continue
	pause >nul
	echo -------------------------------------------------------------
	echo.
	echo Installing %PROCESSOR_ARCHITECTURE%\antiwpa.dll...
	
	regsvr32 /s %PROCESSOR_ARCHITECTURE%\antiwpa.dll
	
	echo Patch successfully installed !
goto end


:uninstall
	echo The AntiWPA-Patch 3.3 is already installed.
	echo.	
	echo Press CTRL+C to cancel now or ENTER for uninstall...
	pause >nul

	echo.
	echo Uninstalling %PROCESSOR_ARCHITECTURE%\antiwpa.dll...
	
	regsvr32 /s /u %PROCESSOR_ARCHITECTURE%\antiwpa.dll
	
	del %systemroot%\system32\AntiWPA.dll*	
	
	echo Patch successfully uninstalled !

:end
	echo.
	echo Thank goes to HLT for his hookdll implementation.
	echo without him this patch would not have been possible.
	echo.
	echo http:\\antiwpa3.tk               CW2K  May'05

pause >nul