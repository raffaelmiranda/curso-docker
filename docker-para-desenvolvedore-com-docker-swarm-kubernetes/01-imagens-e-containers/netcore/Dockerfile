
FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
WORKDIR /app
EXPOSE 5000

FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /src
COPY ["web-api-simple.csproj", "."]
RUN dotnet restore "./web-api-simple.csproj"
COPY . .
WORKDIR "/src/."
RUN dotnet build "web-api-simple.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "web-api-simple.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "web-api-simple.dll"]