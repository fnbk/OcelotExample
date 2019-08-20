FROM microsoft/dotnet:2.2-sdk

COPY src /app

RUN dotnet publish /app/ --output /app/release

WORKDIR /app/release
CMD [ "dotnet", "/app/release/AdministrationApi.dll" ]