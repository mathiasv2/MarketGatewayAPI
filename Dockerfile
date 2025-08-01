FROM mcr.microsoft.com/dotnet/sdk:8.0-alpine AS base
WORKDIR /app
EXPOSE 80

COPY . .

RUN dotnet restore "MarketGatewayAPI/MarketGatewayAPI.csproj"

WORKDIR /app/MarketGatewayAPI

ENTRYPOINT ["dotnet", "run", "--urls", "http://0.0.0.0:80"]
