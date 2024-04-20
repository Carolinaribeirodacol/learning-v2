# Controle e manutenção de estoque de um marketplace

## Ambiente

Se a sua linguagem de estudo atual for voltada para back-end, execute o exercício proposto na forma de API rest utilizando as melhores práticas e aplicando corretamente cada verbo HTTP.

Para linguagens front-end é possível utilizar de fake APIs para simular o back-end enquanto sua aplicação fica responsável por desenhar o front e receber entradas de usuário.

E para linguagens desktop ambas as tarefas deverão ser executadas, deve existir a persistencia de dados e o visual de interação com o usuário.

## Proposta

Desenvolva um controle de estoque para uma determinada loja.

Neste controle deve haver as ações:
- CRUD de cadastro de produtos com SKU, descrição e quantidade atual em estoque;
- movimentação de estoque sendo:
    - entrada: informa quais produtos estão entrando para o estoque e suas quantidades, cada produto informado terá a informação de estoque atual acrescida pela quantidade da entrada;
    - saída: informa quais produtos estão saindo do estoque e suas quantidades, cada produto informado terá a informação de estoque atual reduzida pela quantidade da saída;
    - independente de ser entrada ou saída, a movimentação deve registrar a data/hora que ocorreu;
- relatório de posição atual do estoque contendo uma lista completa de todos os produtos com seu respectivo estoque atual, esta lista pode ser exportada para outros formatos como CSV ou PDF.
