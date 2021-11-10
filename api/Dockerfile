FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
COPY . .
RUN dotnet restore src/ApiPlayground.Api/ApiPlayground.Api.csproj
RUN dotnet publish src/ApiPlayground.Api/ApiPlayground.Api.csproj -c Release -o out

FROM base AS final
COPY --from=build /out .
ENTRYPOINT ["dotnet", "ApiPlayground.Api.dll"]
