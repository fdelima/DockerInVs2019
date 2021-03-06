DockerInVs2019
==============

Demonstração de um projeto aspnet core, angular com Docker no vs2019

![](media/593b8f19a9170de80f3271b54e2c8af9.png)

Baixar, Instalar, Docker desktop na máquina e reiniciá-la.

![](media/7b8270568bd5afb37c598c9cb8db8248.png)

![](media/ff1256a57fb7908fa3615e7e99c8543b.png)

![](media/b5c974cec88bdf278dc48bf1a46c04ac.png)

![](media/b3144bb19c119e00d65c56c50e0f1fff.png)

Aumentando o tempo de timeout para o front ficar pronto.

![](media/986d4780f5364eb39f6178e38a08fc3c.png)

![](media/e3687f476a91b385ce09552b177da90f.png)

![](media/34552cec686be9b504bbdd2c562dc087.png)

Docker file criado.

![](media/5de658b51e4da9becd3149fe2df5285d.png)

Docker file criado pela vs. Problema não possui nodejs na imagem base e nem na
publish. Na base é necessário para debug e na publish para build da imagem.

![](media/d959ca6d2b68641203afa6636274d9f7.png)

Solução Microsoft. Problema irá dar erro no build da imagem por faltar nodejs na
publish.

![](media/66603796d27e440c75b41c7eaaf4bf81.png)

Solução 1: Colocar instalação do nodejs tanto na base para debug quanto na
publish. Problema gera uma imagem final do seu app 100mb maior que o necessário.

![](media/f398935b73ac239e30a66601a5dc0aec.png)

Solução adotada: Criei uma imagem base com nodejs chamai do
aspnet-core-base:3.0-buster-slim para ser utilizado pelo vs. Criei uma imagem
build com nodejs chamei de dotnet-core-build:sdk3.0. Indiquei a vsruntime para o
vs debugar.

WebApplication1.csproj

\<PropertyGroup\>

\<DockerfileFastModeStage\>vsruntime\</DockerfileFastModeStage\>

\</PropertyGroup\>

![](media/76ed8fe0d25da370b5b504f50d76ddbd.png)

![](media/d4ba0a997eaee5ca2289a9ec1e18be4d.png)

![](media/50add716e3a62ac78604309f591b36d4.png)

![](media/37c5860eee08aab84d5890b06e239f1f.png)

![](media/4d8932e088c51b77af032803d0695483.png)

Criando registro de contêiner no azure.

![](media/911095afb1aae513ff1a933fcacd86ba.png)

![](media/def20720f35d78ac5a1d9435f4bf875b.png)

Enviando imagem para o azure

![](media/b695a5389b8067041a6f2f2b791a9b40.png)

![](media/b1996520dcf8f80cd13fdbcedc7f01da.png)

Criando aplicativo web no azure.

![](media/80ece05e996f4b1606ae868dc87ffbe2.png)

![](media/e02de686436ff1d89f57be63c4510911.png)

Configurando aplicativo web para receber imagem Docker ao invés de código.

![](media/1cdea92a539bb544eac7bb0b982e61e8.png)

Configurando versão como dev. para não ter custo.

![](media/ad4d887360d2ad9d5556e2e5ec342d2e.png)

![](media/144b79bb461b6c5f357af29746064a83.png)

![](media/389302c3ea983b0ac521895ff6187ea6.png)

![](media/d38b0962f3396d807c8211ef5e120b18.png)

![](media/959dde3f5d1da68627caa9eb42e27a10.png)

![](media/d2ccb0e45e5d2afd68e5de35b4d135f1.png)

![](media/6ca30b81517effe7cd8f0a7deee7b320.png)

Outra alternativa é:

Publicar imagem Docker no azure através do publish.

![](media/884980e6c3a88a4fb92d788d0bce80c8.png)

![](media/a334a0192af94e2c0209c29e9abdf6da.png)

![](media/704047078d7c5494f46b82b3d6086ca0.png)

![](media/e36e1f811478426eddbc91f6f5dc5f8a.png)

![](media/113615ae469f67e9818e7de59f63cbd0.png)
