
FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
LABEL version="1.0.2" description="Aplica��o ASP.NET CORE MVC com Docker"
COPY dist /app
WORKDIR /app
EXPOSE 80/tcp
ENTRYPOINT ["dotnet", "mvc.dll"]




