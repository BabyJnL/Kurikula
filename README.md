![Kurikula Logo](./priv/static/images/kurikula_logo_removed_bg.png)

# Kurikula 📚

**Kurikula** is a **web-based platform built with Elixir Phoenix**  
designed to help with the design, documentation, and presentation of curriculum in a structured way,  
aligned with the **OBE (Outcome-Based Education)** approach.

---

## 🚀 Getting Started

This project already comes with **Docker 🐋** so you can run it easily without complex environment setup.

### 1. Clone Repository
```bash
git clone https://github.com/BabyJnL/Kurikula.git
cd Kurikula
```

### 2 Build dan Run the Container
```bash
docker compose up --build -d
```

### 3. Setup Database

#### Enter the kurikula_web container
```bash
docker compose exec kurikula_web sh
```

#### Run the following commands
```bash
mix ecto.create
mix ecto.migrate
```

## 📦 Services
| Service       | Deskripsi     | Host Port/Container Port     |
|---------------|---------------|------------------------------|
| kurikula_web  | Aplikasi Phoenix (Elixir)   | 4000/4000  |
| kurikula_db   | Database MySQL | 3307/3306 |

## License

This project is licensed under the [MIT License](./LICENSE) © 2025 Ariya Panna, Astria Febrian Anggraini, Bryan Adiputra Onggo