FROM mcr.microsoft.com/azure-powershell:alpine-3.10 AS build

RUN apk add curl
RUN curl -Lo bicep https://github.com/Azure/bicep/releases/download/v0.4.63/bicep-linux-musl-x64
RUN chmod +x ./bicep

RUN mv ./bicep /usr/local/bin/bicep

## Verify you can now access the 'bicep' command
RUN bicep --help
