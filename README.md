# Acens
![Acens logo](app/assets/images/acens_logo.png "#goacens")

Novo site da [acens](http://acens.uece.br), Empresa Junior do curso de ciência
da computação, Universidade Estadual do Ceará.


As gems foram instaladas:
* devise

* paperclip

* ckeditor

* haml

* friendly_id


## Execução


Baixe o código fonte:

```bash
git clone https://github.com/gleidsonf/acens.git
```

Entre na pasta:
```bash
cd acens
```

Baixe as dependências:
```ruby
bundle install
```

Crie o banco de dados:
```ruby
rake db:migrate
```

Execute o servidor:
```ruby
rails s
```
