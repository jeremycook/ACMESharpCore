param(
    [Parameter(Mandatory, Position = 0)]
    [string]$TestClass,

    [Parameter(Position = 1, ValueFromRemainingArguments=$true)]
    $RestArgs

)
dotnet test --filter FullyQualifiedName~ACMESharp.IntegrationTests.$($TestClass) @RestArgs
