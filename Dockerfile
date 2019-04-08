FROM microsoft/aspnetcore:2.1
WORKDIR /app
COPY authServer/bin/Release/netcoreapp2.1/publish /app
ENV APSNETCORE_URLS http://*:5000
EXPOSE 5000
ENTRYPOINT /bin/bash -c "dotnet AuthServer.dll"
