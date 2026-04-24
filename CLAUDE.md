# Project Context
## Tech Stack

- **PHP 8.4** with custom MVC framework (no Laravel/Symfony)
- **MySQL 8.0** via PDO
- **Nginx + PHP-FPM** in Docker
- Native PHP templates (no Twig/Blade)
- Composer with PSR-4 autoloading
- **Frontend**: HTML/CSS/JavaScript — kept barebones for now. Frontend polish is not a priority; focus is on backend logic and structure first.

## Project Outline

A standard **Quiz App** with gamified features.

### Core Features
- User registration & login
- Quiz gameplay (questions, answers, scoring)
- **Categories & Difficulty** — user chooses quiz category and difficulty level
- **Basic Statistics** — per-user stats like accuracy, quizzes completed
- **XP System** — earn experience points for completing quizzes
- **Achievement System** — unlock achievements based on milestones and actions

### Milestones (if time permits)

**Top Priority:**
- **Admin Panel** — manage questions, users, and settings
- **Leaderboard** — global ranking by XP/score

**Medium Priority:**
- **Game Modes** — e.g. Endless, Speedrun, Duel (1v1)
- **User Profiles** — stats overview, achievement showcase, quiz history
- **Daily Challenges** — a daily quiz with bonus XP to drive retention

**Nice-to-Have:**
- **Better UI/UX** — animations, responsive design, dark mode
  - Live form validation (e.g. password match, character limits) — no backend required
  - Interval-based leaderboard updates via `fetch` + `setInterval`
  - Per-question timer, achievement pop-ups, answer feedback animations
  - Progress bar through quiz questions, XP counter animation on result screen
  - Live search in Admin Panel (filter questions/users without page reload)
  - Confirmation dialogs for destructive Admin Panel actions (delete question/user)
  - Category preview on quiz start (description/icon on selection)
- **Streak System** — reward consecutive daily logins/completions
- **Question Submission** — users can submit questions (admin approves)
- **Advanced Statistics & Analytics** — per-question accuracy, personal trends

# Project Guidelines

## Collaboration Style

- **Step-by-step guidance**: When implementing new code, break the work into small, concrete steps. Explain each step before writing it so I can follow along and learn.
- **Feature suggestions**: After completing a task, suggest the next logical feature or improvement based on the current state of the project. Briefly explain why it makes sense as a next step.
- **Debugging & testing pointers**: When something goes wrong, guide me through how to diagnose the issue. Suggest what to log, what to inspect, and how to write tests that cover the fix.
- **Assess my ideas**: When I propose a feature or approach, evaluate it honestly. Flag overengineering, unnecessary complexity, or scope creep. Keep things simple and proportional to the project's current size.
- **Roadmaps over code**: For new implementations, provide a step-by-step roadmap describing what to write and why — do not write the code directly. The user implements it themselves.

## Architecture

- Follow the **MVC pattern** already established in the codebase. Keep controllers, models, and views in their respective roles.
- Do not introduce new architectural layers (e.g. services, repositories, middleware) unless there is a clear, concrete benefit — not just theoretical cleanliness. If you believe a change is warranted, explain the reason before making it.
- Match the patterns, naming conventions, and structure already present in the codebase. Read existing files before writing new code.
- Do not introduce new libraries or frameworks without discussing it first.

## Language

- All code identifiers (variables, functions, classes, etc.) must be in English.
- All user-facing display text (labels, messages, UI strings) must be in German.

## Code Quality

### PHPDoc Blocks
- When writing or reviewing docblocks, verify **logical correctness**: the description must match what the method actually does in the context of the project (e.g. don't describe a route registration method as a "database connection").
- Check for **phrasing and spelling errors** in docblock text.
- Keep docblocks proportional — one-liner methods (like view renderers) only need a one-line docblock.

#### Docblock structure — Controller methods

/**
 * POST /route
 * From $_POST uses 'field1', 'field2'.
 *
 * Outcome on failure.
 * Outcome on success.
 */

- Line 1: matched route (e.g. `POST /login`, `GET /quiz/start`)
- Line 2: superglobals used (e.g. `From $_POST uses 'playername'.` / `From $_SESSION uses 'player'.`) — omit if none
- Blank line after superglobals
- One outcome per line (failure first, success last)
- View methods get a single-line docblock: `GET /route — renders the X.`
- Private helpers: description first, then `From $_...` if applicable, then `@param`/`@return` tags

#### Docblock structure — Model methods

/**
 * One-sentence description of what the method does.
 *
 * Called by ClassName::method() [and optionally why / context note].
 *
 * @param type  $name  Description.
 * @return type        Description.
 */


- Line 1: plain description of what the method does
- Blank line, then a context line: who calls it, or a note if not yet called
- Blank line before `@param`/`@return` tags (omit block entirely for `void` methods with no params)
- Align `@param` and `@return` tags columnwise

### PSR-12 Coding Style
- **Blank line** after `namespace` declaration.
- **Class opening brace** on its own line: `class Foo` + newline + `{`.
- **Method opening brace** on its own line.
- **`catch`** on the same line as the closing brace: `} catch (Exception $e) {`.
- **No one-liner `if` blocks** — always use braces and put the body on its own line.
- **Closing brace indentation** must match the indentation of the opening keyword, not the body.
- Omit closing `?>` tag in PHP-only files.