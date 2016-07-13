#!/usr/bin/env bash


case $1 in
    "cd")
        echo "cd: (Change Directory) Comando utilizado para acessar e mudar de diretórios.";
        echo "Exemplos:";
        echo -e "\t- $ cd nome-diretório: entra no diretório nome-diretório\n";
        echo -e "\t- $ cd .. : volta ao diretório anterior";;
    
    "ls")
        echo "ls: (LiSt) Comando utilizado para listar conteúdo de um diretório.";
        echo "Exemplos:";
        echo -e "\t- $ ls ep-exercicios: lista de forma básica o conteúdo do diretório ep-exercicios\n";
        echo -e "\t- $ ls -l: lista o conteúdo de forma detalhada exibindo informações de permissões, data/hora, etc\n";
        echo -e "\t- $ ls -a: lista também conteúdos ocultos";;
    
    "pwd")
        echo "pwd: (Print Working Directory) Comando que exibe o diretório atual em que o usuário se encontra\n";
        echo "Exemplo:";
        echo -e "\t- $ pwd: Considerando que o usuário está no diretório workspace, aparecerá '/home/ubuntu/workspace'";;
    
    "cat")
        echo "cat: (conCATenate) Comando para exibir o conteúdo de um arquivo, normalmente utilizado para ler ou exibir conteúdo de arquivos txt";
        echo "Exemplos:";
        echo -e "\t- $ cat exemplo.txt: exibe o conteúdo do arquivo exemplo.txt\n";
        echo -e "\t -$ cat explicacao.txt exemplos.txt > aula.txt: concatena os arquivos explicacao.txt e exemplos.txt e escreve em um arquivo chamado aula.txt";;
    
    "rm")
        echo "rm: (ReMove) Comando para remover arquivo";
        echo "Exemplos:";
        echo -e "\t- $ rm ep-exercicios/teste/teste.txt: remove arquivo teste.txt do diretório teste";;
    
    "mv")
        echo "mv: (MoVe) Comando para mover ou renomear objetos";
        echo "Exemplos:"
        echo -e "\t - $ mv ep-exercicios/m1/e5 ep-exercicios/m1/e4: renomeia o diretório e5 para e4\n";
        echo -e "\t- $ mv ep-exercicios/m1/e5/teste.txt ep-exercicios/m1/e4/teste.txt: move o arquivo teste.txt do diretório e5 para e4";;
    
    "chmod")
        echo "chmod: (CHange MODe) Comando para modificar as permissões de objetos";
        echo "Exemplos:";
        echo -e "\t- $ chmod +x exemplo.txt: dá a permissão de execução do arquivo exemplo.txt para o usuário atual\n";
        echo -e "\t- $ chmod a+r exemplo.txt: dá a permissão de leitura a todos os usuários";;
    
    "man")
        echo "man: (MANual) Comando que exibe as funções de um comando";
        echo "Exemplos:"
        echo -e "\t- $ man ls: exibe infomações sobre o comando ls e opções de utilização\n";
        echo -e "\t- $ man man: exibe informações sobre o manual e suas opções de utilização";;
    
    "touch")
        echo "touch: Comando utilizado para atualizar ou modificar a data de acesso de um objeto, ou criar um arquivo novo";
        echo "Exemplos:";
        echo -e "\t- $ touch exemplo.txt: se não existe, cria um arquivo exemplo.txt, caso contrário apenas atualiza a data e hora do último acesso\n";
        echo -e "\t- $ touch -d '2000-01-31 08:00:00' exemplo.txt: modifica data e hora do exemplo.txt para 31/01/2000 as 08:00:00";;
    
    "grep")
        echo "grep: (Globally search a Regular Expression and Print) Comando que faz busca de uma expressão em um arquivo ou input.";
        echo "Exemplos:"
        echo -e "\t- $ grep 'echo' m1-e4.txt: exibe as linhas que possuem a palavra echo no arquivo m1-e4.txt\n";
        echo -e "\t- $ grep -i 'echo' m1-e4.txt: exibe as linhas que possuem a palavra echo com case insensitive, ou seja, independente de estarem maíusculas, minúsculas ou ambas misturadas.";;
esac
