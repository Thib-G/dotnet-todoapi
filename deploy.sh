dotnet publish -c Release
scp -P 2222 -r ./bin/Release/netcoreapp2.2/publish thib@dev.kediss.eu:~/dotnet/TodoApi
