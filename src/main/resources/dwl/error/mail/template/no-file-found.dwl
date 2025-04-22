%dw 2.0
output text/plain
var appName = '${application.name}' default 'InventorySyncProcess'
var environment = '${mule.env}'
var flowName = "inventory-bacth-processFlow" default 'Inventory Batch Flow'
var inputFilename = vars.fileName default 'N/A'
var errorStage = "Reading Inventory File" default 'Unknown'
var severity = "CRITICAL"
var errorType = (error.errorType.namespace ++ ":" ++ error.errorType.identifier) default 'System Exception'
var summary = (error.description default 'An error occurred.')
var details = (error.detailedDescription default 'No detailed description available.')
var impact = ("No records are available to process - " ++ now()>> "UTC" )
var includeStackTrace = true
var failingComponent = error.failingCOmponent default "flow"
var suggestedActions =  
        "
        1. Verify the source SFTP folder path: #[vars.sourceSftpPath default 'N/A']
        2. Check if the file matching pattern '#[vars.expectedFilePattern default 'N/A']' exists.
        3. Investigate the upstream file generation process (Oracle WMS).
        4. Check application logs for related messages.
        "
//    else // Default for System Errors
//        "
//        1. Review error details and stack trace below.
//        2. Check application logs for correlation ID or related messages around the timestamp.
//        3. Verify the status of dependent systems (e.g., SFTP server).
//        4. If applicable, input file '#[inputFilename]' may be in the error directory. Investigate before reprocessing.
//        "
---
"
--------------------------------------------------
Mule Application Alert
--------------------------------------------------

Application:       $(appName)
Environment:       $(environment)
Timestamp:         $(now() >> "IST") // Format timestamp for IST
Flow/Process:      $(flowName)
Severity:          $(severity)
Alert Type:        $(errorType)

Input File Context: $(inputFilename)
Processing Stage:   $(errorStage)

--------------------------------------------------
Error Summary:
--------------------------------------------------
$(summary)

--------------------------------------------------
Error Details:
--------------------------------------------------
$(details)

" ++ 
if (includeStackTrace) 
    "
    --------------------------------------------------
    Stack Trace:
    --------------------------------------------------
     $(failingComponent)
    "
else ""
++ 
"

--------------------------------------------------
Impact:
--------------------------------------------------
$(impact)

--------------------------------------------------
Suggested Actions:
--------------------------------------------------
$(suggestedActions)
--------------------------------------------------
"