dotnet build AuthorizeNET\AuthorizeNet.Core.sln -c Release
dotnet pack AuthorizeNET\AuthorizeNET\AuthorizeNETStandard.csproj -c Release
dotnet nuget push "AuthorizeNET\AuthorizeNET\bin\Release\AuthorizeNet.Standard.*.nupkg" --source "github"
