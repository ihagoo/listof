# 🎬🎮📺 Listof

Bem-vindo ao **Listof**, uma aplicação Ruby on Rails para gerenciar suas mídias favoritas!  
Com esta aplicação você pode cadastrar, visualizar, editar e excluir **filmes**, **séries** e **jogos** com facilidade.

---

## 🚀 Tecnologias

- [Ruby on Rails](https://rubyonrails.org/)
- [PostgreSQL](https://www.postgresql.org/)
- [Hotwire](https://hotwired.dev/)

---

## 🧰 Funcionalidades

- 📽️ CRUD completo para **Filmes**
- 📺 CRUD completo para **Séries**
- 🎮 CRUD completo para **Jogos**
- 📊 Avaliação e status (ex: assistido, jogado, em andamento)

---

## ⚙️ Como rodar o projeto

### Pré-requisitos

- Ruby (versão recomendada: 3.4.2)
- Rails (versão recomendada: 8.0.2)
- PostgreSQL

### Passos

```bash
# Clone o repositório
git clone https://github.com/ihagoo/listof.git
cd listof

# Instale as dependências
bundle install

# Configure o banco de dados
rails db:create
rails db:migrate

# Rode o servidor
rails server
```
Acesse em: http://localhost:3000