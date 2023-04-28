for /d /r . %%d in (bin obj) do @if exist "%%d" rd /s/q "%%d"
dotnet build AuthorizeNET\AuthorizeNet.Core.sln -c Release
dotnet pack AuthorizeNET\AuthorizeNET\AuthorizeNETStandard.csproj -c Release
dotnet nuget push "AuthorizeNET\AuthorizeNET\bin\Release\AuthorizeNet.Standard.*.nupkg" --source "github"
