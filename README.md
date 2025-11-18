## INFORMAÇÕES INPORTANTES

- PARA TESTAR O VerdiCode é necessário ter o Lua instalado.
- NADA ALÉM DISSO

## Tutotial de instalação:

1- Abra o PowerShell como Administrador

2- Instale o Chocolatey (gerenciador de pacotes)

3- COLE O LINK ABAIXO NO POWERSHELL E DER ENTER

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

4- APÓS CONCLUÍDO, FECHE E ABRA O POWERSHELL NOVAMENTE COMO ADM E COLE O SEGUINTE COMANDO NOVAMENTE:

choco install lua -y

5- APÓS CONCLUIR, ABRA O CMD E COLE O LINK ABAIXO PARA VER SE BAIXOU:

lua -v

6- APÓS BAIXAR É SÓ FECHAR O CMD


## COMO TESTAR O VERDICODE:

1- Baixe o arquivo inteiro do Repositório

2- ABRA O CMD como ADMINISTRADOR

3- ESCREVA:

cd [local da pasta do repositório]

4- Aperte enter e cole novamente:

lua verdicode.lua exemplo.vdc

5- A partir desse momento irá criar um novo arquivo em .lua traduzido do arquivo .vdc


- UTILIZAÇÃO APENAS PARA FINS ACADÊMICOS







