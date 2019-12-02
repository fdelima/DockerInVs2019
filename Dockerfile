# docker build -f "d:\projetos\local\webapplication1\dockerfile" --force-rm -t webapplication1  --label "com.microsoft.created-by=visual-studio" --label "com.microsoft.visual-studio.project-name=WebApplication1" "d:\projetos\local\webapplication1"

FROM mcr.microsoft.com/dotnet/core/aspnet:3.0-buster-slim AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM fdelima/aspnet-core-base:3.0-buster-slim AS vsruntime
WORKDIR /app

FROM fdelima/dotnet-core-build:sdk3.0 AS build
WORKDIR /src
COPY ["WebApplication1.csproj", ""]
RUN dotnet restore "./WebApplication1.csproj"
COPY . .
WORKDIR "/src/."
RUN dotnet build "WebApplication1.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "WebApplication1.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "WebApplication1.dll"]