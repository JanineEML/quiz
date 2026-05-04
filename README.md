# Quiz App

A web-based quiz application built as a module for an e-learning platform.
Developed as part of a vocational retraining programme (Fachinformatik Anwendungsentwicklung) at SRH BFW Heidelberg.

---

## Features

- **User authentication** - registration and login with session management, passwords stored as bcrypt hashes
- **Quiz flow** - configurable by category and number of questions (10-20); difficulty level determines XP reward
- **XP & achievement system** - experience points awarded per correct answer; 25 achievements unlock automatically at defined milestones
- **Leaderboard** - four views: by XP, completed quizzes, correct answers, and achievements
- **Admin panel** - create, edit and delete questions and categories; paginated question overview with category filter
- **Persistent sidebar** - shows current XP and accuracy after login

## Tech Stack

| Layer | Technology |
|---|---|
| Backend | PHP 8.4 (FPM) |
| Database | MySQL 8.0 |
| Frontend | HTML, CSS, JavaScript, Bootstrap 5 |
| Web server | Nginx (alpine) |
| Infrastructure | Docker Compose |

## Architecture

Classic MVC without external frameworks - custom Front Controller, router, and dependency injection via constructor.

```
public/
└── index.php          # Entry point / Front Controller
src/
├── Controllers/       # AuthController, QuizController, AdminController, ...
├── Models/            # User, Question, Achievement, Leaderboard, Stats
├── Views/             # PHP templates (quiz/, admin/, shared/)
├── Router.php
├── routes.php
└── Connection.php     # PDO singleton
db/
└── *.sql              # Init scripts (schema + seed data)
```

## Getting Started

**Requirements:** Docker + Docker Compose

```bash
# Clone the repository
git clone https://github.com/janineeml/quiz.git
cd quiz

# Start all services
docker compose up -d
```

The app will be available at **http://localhost:9310**

To stop:
```bash
docker compose down
# To also remove the database volume:
docker compose down -v
```

## Database

The schema is initialised automatically on first start from the SQL scripts in `db/`.
Nine tables across three groups: user management, question management, and quiz sessions.

## Security

- Passwords hashed with `password_hash()` (bcrypt)
- All queries use PDO prepared statements (SQL injection prevention)
- All output escaped with `htmlspecialchars()` (XSS prevention)
- Protected routes check for active session on every request

## License

This project was created for educational purposes.