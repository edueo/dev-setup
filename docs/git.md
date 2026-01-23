# GIT

Trabalho com configs diferentes para trabalho e uso pessoal, para isso faço o setup de uma chave ssh para cada propósito, assim é preciso especificar qual chave que será usada e portanto é necessário especificar a variável `GIT_SSH_COMMAND` para isso. Para deixar o processo mais simples, faço isso com o uso do direnv, criando o arquivo `.envrc` no respectivo diretório setando o valor correspondente
GIT_SSH_COMMAND="ssh -i /home/userntt/.ssh/id_rsa"

