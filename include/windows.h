/*
%EXCLUDE RtlCaptureStackBackTrace RtlCaptureContext RtlUnwind RtlAddFunctionTable RtlDeleteFunctionTable RtlInstallFunctionTableCallback RtlAddGrowableFunctionTable RtlGrowFunctionTable RtlDeleteGrowableFunctionTable RtlLookupFunctionEntry RtlRestoreContext RtlUnwindEx RtlVirtualUnwind RtlPcToFileHeader RtlCompareMemory RtlInitializeSListHead RtlFirstEntrySList RtlInterlockedPopEntrySList RtlInterlockedPushEntrySList RtlInterlockedPushListSListEx RtlInterlockedFlushSList RtlQueryDepthSList RtlGetProductInfo RtlCrc32 RtlCrc64 RtlOsDeploymentState RtlGetNonVolatileToken RtlFreeNonVolatileToken RtlFlushNonVolatileMemory RtlDrainNonVolatileFlush RtlWriteNonVolatileMemory RtlFlushNonVolatileMemoryRanges RtlInitializeCorrelationVector RtlIncrementCorrelationVector RtlExtendCorrelationVector RtlValidateCorrelationVector RtlRaiseCustomSystemEventTrigger RtlGetDeviceFamilyInfoEnum RtlConvertDeviceFamilyInfoToString RtlSwitchedVVI 
%EXCLUDE WinMain wWinMain
*/
#ifdef _WIN32
    #include <Windows.h>
    #include <DbgHelp.h>
#endif