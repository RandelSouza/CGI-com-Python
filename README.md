# CGI-com-Python 

## O que é CGI?

**CGI** é um acrónimo para a expressão inglesa **Common Gateway Interface**. Esta tecnologia 
permite a geração de páginas dinâmicas, com isso através de um navegador web, é possivel
a passagem de parâmetros (caso a página criada necessite de parâmetros) para um programa 
armazenado no servidor web, que será responsavél pela interpretação, processamento e geração da página web.

## Python

**Python** é uma linguagem de programação criada no ano de 1991 por Guido van Rossum.
É uma linguagem de alto nível, fracamente tipificada, voltada para a produtividade, é uma linguagem orientada 
a objetos e também é caracterizada como de script. Caso ainda não tenha instalado o Python entre na página
de download no site oficial: <https://www.python.org/downloads/source/>.


## Script de instalação

O script presente na pasta CGI denominado cgi.sh é responsavél pela instalação do servidor web apache, 
assim como instalação da ferramenta curl caso o usuário queira ver o resultado da página web criada através do terminal.
O script cria os diretórios necessários para que o CGI funcione e cria duas páginas para
testar o serviço de CGI, as páginas são nomeadas de first.py e index.py.

### Execução do Script
* Baixe o arquivo. </br>
`git clone https://github.com/RandelSouza/CGI-com-Python.git`
* Acesse a pasta do script cgi.sh. </br>
`cd CGI-com-Python/CGI/`
* Conceder permissão de execução ao arquivo cgi.sh. </br>
`sudo chmod +x cgi.sh`
* Em seguida execute o script cgi.sh. </br>
`sudo ./cgi.sh`

### Acessando as páginas criadas para teste
* Acessar a página first.py. </br>
`curl http://localhost/cgi-bin/first.py`
* Acessar a página index.py. </br>
`curl http://localhost/cgi-enabled/index.py`

Para uma visualização mais clara acesse as urls. </br>
http://localhost/cgi-bin/first.py </br>
http://localhost/cgi-enabled/index.py
