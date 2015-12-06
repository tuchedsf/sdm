== SDM-Control

Systema criado como forma de estudo de Ruby on Rails. E aqui a tentativa foi construir um sistema que tenha algum tipo de aplicação na vida real que me faça utilizar o sistema.

Entao construi este sistema como forma de controlar os tickets/chamados abertos para a minha equipe.Ficando mais fácil categorizar e tirar relatórios.

Things you may want to cover:

* Ruby version: 2.0
* Rails version: 4.2.0
* Database: Postgresql

* System dependencies
- bootstrap-sass -> layout
- bootstrap_form -> montagem dos formulários ( similar ao simple_form)
- jquery-rails  
- high_voltage -> criaçao de páginas estáticas/dinamicas que nao tem modelo e podem ou não possuirem controller
- devise -> autenticação de usuários
- jquery-datatables-rails ->  gem para integrar datatables no rails
- ajax-datatables-rails -> gem para integrar datatables no rails
- tinymce-rails -> gem para inclusao de comandos de formataçao de campos textarea
- tinymce-rails-langs -> gem contendo as linguagens para traducao dos comandos.


* Configuration

* Database creation
rake db:create

* Database initialization
Inserir manualmente o registro para na tabela de sistema(systems) um sistema de nome: "SDM-Admin".
Criar um usuário pelo página de cadastro.
Incluir manualmente registro para permissao do administrador do sistema, tabela(permissions), nela devará constar system_id (do sistema SDM-Admin), user_id (do usuário cadastrado), role = 4 (admin_sdm). Feito isto estará apto a entrar no sistema como administrador e assim criar outros sistemas/usuarios etc...


* How to run the test suite
- Pendente item a ser construido. Testes automatizados.

* Services (job queues, cache servers, search engines, etc.)
N/A

* Deployment instructions
N/A -> nenhuma informacao relevante ate o momento.

* Melhorias a se fazer:
- Estatisticas (números e gráficos )
- Automatizar a criacao dos parametros iniciais do banco de dados.
- Implementar autorização nas funcionalidades de acordo com o perfil.
- Implementar testes automatizados
- Exportar dados
- Emitir relatórios
