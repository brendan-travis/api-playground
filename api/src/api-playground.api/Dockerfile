FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /src
COPY ["src/api-playground.api/api-playground.api.csproj", "api-playground.api/"]
RUN dotnet restore "src/api-playground.api/api-playground.api.csproj"
COPY . .
WORKDIR "/src/api-playground.api"
RUN dotnet build "api-playground.api.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "api-playground.api.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "api-playground.api.dll"]
