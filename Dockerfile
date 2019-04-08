FROM mcr.microsoft.com/dotnet/core/aspnet:2.1
WORKDIR /app
COPY authServer/bin/Release/netcoreapp2.1/publish /app
ENV APSNETCORE_URLS http://*:80
EXPOSE 80
ENTRYPOINT /bin/bash -c "dotnet AuthServer.dll"
