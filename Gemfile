source 'https://rubygems.org'

ruby '2.0.0'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use postgresql as the database for Active Record
gem 'pg'

# 2- framework front end para melhorar o layout da aplicação
# excutar comando de instalacao após rails layout
# comando: rails g layout:install foundation5 --force
#gem 'foundation-rails'

#gem para inluir icones ao fondation
#gem 'foundation-icons-sass-rails'

#1 - instalar: Bootstrap Rails with SASS
gem 'bootstrap-sass', '~> 3.2.0'

#is optional, but recommended. It automatically adds the proper vendor prefixes to your CSS code when it is compiled
gem 'autoprefixer-rails'

# Use SCSS for stylesheets
gem 'sass-rails', '~>5.0.0'


# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

group :development do
  #exibe os erros de forma mais amigavel, com mais detalhes.
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
  # 1 - gem para gerar arquivos para o layout da aplicaçao - e fazer a msm passe a utilzar
  # HTML5, navigation links and flash messages, instalar primeiro
  # comando para aplicar: rails g layout:install simple --force
  gem 'rails_layout'
end

# 3- gem para facilitar a criação de formulários html.
# insatalar depois do rails_layout e framework front-end
#comando para aplicar: rails g simple_form:install --foundation
# --fondation deve ser trocado pelo framwork que utilizar ex: fondation, --bootstrap
gem 'simple_form'


# 4- criar paginas estáticas/dinamicas que nao tenham um modelo e podem ou não ter controladores.
# cria uma rota pages... para incluir páginas basta criar a pasta views/pages e inserir as paginas.
# chamada: localhost:3000/pagina
# caso a página execute alguma funcionalidade pode ser criado o controller para tal.
gem 'high_voltage'

# 5- autenticaçao e controle de usuário
# depois de instalado a gem executar o comando: rails generate devise:install ( para instalar o devise na app)
#rails generate devise MODEL
gem 'devise'

group :production do
  gem 'rails_12factor' #
end
