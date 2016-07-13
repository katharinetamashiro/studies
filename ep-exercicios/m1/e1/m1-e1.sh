#!/usr/bin/env bash

# Este arquivo é um shell script vazio.
#
# A primeira linha deste arquivo (começando com "#!") é conhecida como 'shebang',
# e indica que o conteúdo deste arquivo deve ser interpretado pelo executável
# 'bash'. Se o arquivo contivesse comandos em Python, por exemplo, o shebang
# correto seria '#!/usr/bin/env python', e assim por diante para outras
# linguagens.
#
# Linhas que começam com '#' são apenas comentários.
# No restante deste arquivo, você pode escrever linhas de comando que serão
# executadas como se você as executasse diretamente no seu terminal.

mkdir ~/workspace/ep-exercicios/m1/e1/dir_1
mkdir ~/workspace/ep-exercicios/m1/e1/dir_1/treinamento_estagio_programacao
mkdir ~/workspace/ep-exercicios/m1/e1/dir_1/treinamento_estagio_programacao/aluno_fernando
touch ~/workspace/ep-exercicios/m1/e1/dir_1/treinamento_estagio_programacao/aluno_fernando/notas.txt

ln -s treinamento_estagio_programacao ~/workspace/ep-exercicios/m1/e1/dir_1/TEP

ln -s aluno_fernando ~/workspace/ep-exercicios/m1/e1/dir_1/treinamento_estagio_programacao/fer