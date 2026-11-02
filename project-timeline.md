# Project Timeline

My goal is a strong portfolio of small, finished projects, with biomedical robotics software as my long-term direction. This file tracks every project in the order I'm building them.

**Status key:** Done, In progress, Next, Planned

## At a glance

| Phase | Theme | Status |
| --- | --- | --- |
| Before the roadmap | Early projects | Done (3 projects) |
| 1 | Publish what exists | Done (5 projects) |
| 2 | Fill the gaps (assorted skills) | Done (4 projects) |
| 3 | Robotics specialism | Done (3 projects) |
| 4 | Professional polish | In progress (1 of 2 done) |
| 5 | Builder projects (after Phase 4) | Planned (19 projects, in 4 stages) |

---

## Built before the roadmap

| Project | Status | Skills | Finished |
| --- | --- | --- | --- |
| CSV Cleaner | Done | pandas, command-line scripts, data cleaning | 05/10/26 |
| Song Quiz | Done | Functions, file handling, input checking, game logic | 06/10/26 |
| Price Tracker | Done | Web scraping (requests, BeautifulSoup), argparse, CSV history, error handling, scheduling with cron | 09/10/26 |

## Phase 1: Publish what exists

| # | Project | Status | Skills | Finished |
| --- | --- | --- | --- | --- |
| 1 | Ball Drop | Done | Pygame, game loop, collisions, game states | 09/10/26 |
| 2 | Python Practice (message bot, loop exercises) | Done | Fundamentals, input checking | 09/10/26 |
| 3 | GitHub profile README | Done | Presenting my work | 10/10/26 |
| 4 | Dice game (added to Python Practice) | Done | tkinter GUI, event handling, lists | 10/10/26 |
| 5 | Discord Bot | Done | async/await, discord.py, embeds, keeping secrets in `.env`, error handling | 10/10/26 |

## Phase 2: Fill the gaps (assorted skills)

The order below is the order I plan to build them in. The numbers are from the original roadmap.

| # | Project | Status | Skills | Finished |
| --- | --- | --- | --- | --- |
| 6 | Portfolio website | Done | HTML and CSS layout, responsive design, JavaScript basics, GitHub Pages | 11/10/26 |
| 9 | Data analysis report | Done | pandas grouping, `matplotlib` charts, basic statistics, writing up findings | 11/10/26 |
| 7 | Excel report generator | Done | pandas, `openpyxl`, formatted reports and charts | 11/10/26 |
| 8 | Task tracker API | Done | HTTP, Flask, SQL basics (`sqlite3`), validation | 12/10/26 |

## Phase 3: Robotics specialism

| # | Project | Status | Skills | Finished |
| --- | --- | --- | --- | --- |
| 11 | Heart-rate signal analyser | Done | `numpy`, `scipy`, filtering, peak detection, plotting | 25/10/26 |
| 10 | Line-following robot simulator | Done | Classes, geometry (`sin`/`cos`), sensors, simple steering rule, `pytest` | 25/10/26 |
| 12 | **Flagship:** prosthetic hand control simulator | Done | Everything above, plus splitting code into modules and a simple classifier | 28/10/26|

The flagship uses synthetic data and is a learning simulation, not a medical device.

## Phase 4: Professional polish

| # | Project | Status | Skills | Finished |
| --- | --- | --- | --- | --- |
| 13 | Tests and CI on Price Tracker and Song Quiz | Done | `pytest`, GitHub Actions | 02/11/26 |
| 14 | Beginner Python lessons repo | Next | Explaining ideas step by step, exercises with solutions | |

## Phase 5: Builder projects

Starts after Phase 4. Only look at one stage at a time. Stage 5D is optional, and fewer finished projects beat many half-done ones.

### Stage 5A: Quick wins (about one session each)

| # | Project | Status | Skills | Finished |
| --- | --- | --- | --- | --- |
| 15 | Password strength checker | Planned | Input checking, string handling, file handling (common-password list), scoring rules | |
| 16 | Python AI chat bot | Planned | Calling an external API, keeping conversation history, secrets in `.env`, error handling | |
| 17 | Focus blocker extension | Planned | JavaScript, browser extension basics, timers, storing settings | |

### Stage 5B: Web and storage

| # | Project | Status | Skills | Finished |
| --- | --- | --- | --- | --- |
| 18 | URL shortener | Planned | Flask, `sqlite3`, redirects, validation, unique ID generation | |
| 19 | Password manager | Planned | `hashlib`, encryption (`cryptography`), master password, secure file storage | |
| 20 | Building my own toolkit | Planned | Command-line design with `argparse` subcommands, packaging, reusing earlier projects | |
| 29 | Template engine | Planned | String parsing, placeholders, loops and conditions in templates, escaping, using it with the URL shortener | |

### Stage 5C: How things work underneath

| # | Project | Status | Skills | Finished |
| --- | --- | --- | --- | --- |
| 21 | Create a database | Planned | File storage, indexing, a simple key-value store, then basic queries | |
| 22 | Recreate Git | Planned | Hashing, file storage, `init` / `add` / `commit` / `log`, data structures | |
| 23 | Multiplayer game | Planned | Sockets, client and server, turn-based game logic, handling disconnects | |
| 30 | Neural network from scratch | Planned | `numpy`, matrices, forward pass, backpropagation, gradient descent, training on a small dataset | |

### Stage 5D: Big builds (optional, in this order)

| # | Project | Status | Skills | Finished |
| --- | --- | --- | --- | --- |
| 24 | Local Google Docs | Planned | Sockets (from #23), storage (from #21), shared editing, handling conflicts | |
| 25 | Programming language | Planned | Tokenising, parsing, an interpreter, variables and maths | |
| 26 | Create a compiler | Planned | Everything from #25, plus generating output code | |
| 27 | Create a browser | Planned | HTML parsing, layout, drawing to a window | |
| 28 | Operating system kernel | Planned | Long-term challenge: C or Rust, assembly basics, memory, booting | |
| 31 | Continuous Integration system | Planned | Webhooks, running jobs in isolation, logs and status reporting, config files (builds on #13) | |
| 32 | Rebuild Docker | Planned | Linux processes, namespaces, `chroot`, resource limits, filesystem layers | |
| 33 | My own network stack | Planned | Network layers, packets and headers, parsing and building them (Ethernet, IP, UDP, TCP basics) | |

**Order notes:** password strength checker comes before the password manager, programming language before compiler, and multiplayer game (sockets) before Local Google Docs. The new projects (#29 to #33) are numbered by when I added them, not the order to build them. Build the template engine after the URL shortener, the neural network after the Phase 3 `numpy` work, the CI system after Phase 4 (#13), and the network stack after the multiplayer game. Rebuild Docker needs Linux, which I already run.

---

## Skills so far

Python fundamentals, file handling, command-line tools, web scraping, pandas, Pygame, tkinter, async code with discord.py, Git and GitHub, virtual environments, READMEs, linting, HTML, CSS and a little JavaScript, Charts and statistics, Excel automation, SQL and building APIs, Numerical work with `numpy` and `scipy`, classes and control (PID), testing and CI, geometry with `sin` and `cos`.

## Skills still to learn



### Extra skills needed for Phase 5

**Stage 5A: Quick wins**
- Scoring rules and string checks (password strength)
- Calling an external API and keeping conversation history (AI chat bot)
- Browser extension basics: manifest file, JavaScript, timers, storing settings (focus blocker)

**Stage 5B: Web and storage**
- Redirects and unique ID generation (URL shortener)
- Parsing placeholders, loops and conditions in text, and escaping output (template engine)
- Hashing and encryption with `hashlib` and `cryptography` (password manager)
- `argparse` subcommands and packaging a command-line tool (toolkit)

**Stage 5C: How things work underneath**
- File-based storage, indexing, and simple query handling (database)
- Hashing, file storage and data structures such as trees (recreate Git)
- Sockets, client and server, and handling disconnects (multiplayer game)
- Matrix maths, backpropagation and gradient descent with `numpy` (neural network)

**Stage 5D: Big builds (optional)**
- Sharing changes between users and handling conflicts (local Google Docs)
- Tokenising, parsing and interpreting code (programming language)
- Generating output code from a parsed program (compiler)
- HTML parsing, layout and drawing to a window (browser)
- C or Rust, assembly basics, memory and booting (operating system kernel)
- Webhooks, running jobs in isolation, and reporting build status (CI system)
- Linux namespaces, `chroot`, resource limits and filesystem layers (rebuild Docker)
- Network layers, and building and parsing packet headers (network stack)

## How to keep this file up to date

When a project is finished, change its status to Done and fill in the Finished column with the date. When I start the next one, mark it In progress.
