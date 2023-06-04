/*
%EXCLUDE WinMain wWinMain

Inline functions
%EXCLUDE GetProcessDefaultCpuSetMasks SymGetSourceFileTokenByTokenName SymGetSourceFileFromTokenByTokenName 
%EXCLUDE GetNumaNodeProcessorMask2 SetThreadSelectedCpuSetMasks RegisterForTooltipDismissNotification QueueUserAPC2 
%EXCLUDE EnableProcessOptionalXStateFeatures GetThreadSelectedCpuSetMasks GetMachineTypeAttributes SymGetSourceFileTokenByTokenNameW 
%EXCLUDE SetProcessDefaultCpuSetMasks SetAdditionalForegroundBoostProcesses AreShortNamesEnabled GetTempPath2A GetTempPath2W 
%EXCLUDE GetThreadEnabledXStateFeatures SymGetSourceFileFromTokenByTokenNameW StackWalk2
*/
#ifdef _WIN32
    #include <Windows.h>
    #include <DbgHelp.h>
#endif