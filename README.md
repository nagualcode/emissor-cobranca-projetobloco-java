# emissor-cobranca-projetobloco-java

# Projeto de Bloco - Java
# Aluno: Frederico Flores da Silva
# Professor: Elberth Moraes

# Gerador de Cobranças:
O objetivo desta ferramenta é emitir cobranças de serviços prestados, para clientes pessoa jurídica ou física, consumindo a api do banco de dados: https://github.com/nagualcode/api-mysql-projetobloco-javanuvem.


O usuário deve primeiramente cadasrar o cliente, então cadastrar o serviço prestado e o seu valor, e então gerar a cobrança. O valor da cobrança é definido pelo valor do serviço.

######################

Implementações futuras:
Funcionalidades:>

- Integrar com api de boletos real (StarkBank , Pjbank, etc...)

- Adicionar outras formas de cobrança como cartão de crédito, pix, etc...

- Gerar a nota fiscal de uma cobrança

Frontend:

-Fazer o fronted com as requisições para a api do banco 100% em javascript.

Backend:

- Na api do banco de dados, fazer a relação persistente ManyToMany entrar clientes X Serviços X Cobranças, para agilizar a pesquisa relacionada.
