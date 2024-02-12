FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /app

COPY . ./


FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS runtime
WORKDIR /app


ENTRYPOINT ["dotnet", "yourblogs.dll"]
