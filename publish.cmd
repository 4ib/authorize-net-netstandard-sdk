dotnet build AuthorizeNET\AuthorizeNet.Core.sln -c Release
dotnet pack AuthorizeNET\AuthorizeNET\AuthorizeNET.csproj -c Release
dotnet nuget push "AuthorizeNET\AuthorizeNET\bin\Release\AuthorizeNet.DotNetCore.*.nupkg" --source "github"
