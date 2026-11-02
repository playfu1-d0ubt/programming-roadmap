# Fundamentals Exercises: Roadmap and Project Instructions

## Part 1: The roadmap (easiest to hardest)

### Core phases (1 to 13)

| Phase | Topic | Status | Builds on |
|---|---|---|---|
| 1 | Command-line tools (sys.argv, argparse, file handling) | Done | Basic Python |
| 2 | JavaScript basics (variables, functions, arrays, DOM) | Done | Phase 1 ideas |
| 3 | pandas (tables, filtering, grouping) | Done | Python basics, spreadsheets |
| 4 | Charts and statistics (matplotlib, mean/median/std) | Done | pandas |
| 5 | Excel automation (openpyxl, formatting, formulas) | Done | pandas |
| 6 | Web scraping (requests, BeautifulSoup, error handling) | Done | HTML, functions |
| 7 | SQL (SELECT, WHERE, JOIN, GROUP BY, sqlite3) | Done| Tables (pandas) |
| 8 | Building APIs (Flask or FastAPI, JSON, endpoints) | Done| SQL, HTTP |
| 9 | Classes (attributes, methods, `__init__`) | Done| Functions |
| 10 | numpy and scipy (arrays, maths, simple fitting) |Done | Lists, classes optional |
| 11 | Testing and CI (pytest, GitHub Actions) |Done | Functions, classes |
| 12 | Async with discord.py (async/await, events, commands) |Done | Functions, classes |
| 13 | PID control (classes, loops, numpy, simulation and plotting) |Done | Classes, numpy |

### Builder phases (14 to 22): skills for the Phase 5 Builder projects

These come after Phase 13. Each prepares for a project in the project timeline.

| Phase | Topic | Prepares for (timeline #) | Builds on |
|---|---|---|---|
| 14 | Strings and scoring rules (string methods, checking rules, reading a word list) | 15 Password strength checker | Phase 1, functions |
| 15 | Calling external APIs (`requests`, JSON, API keys in `.env`, keeping history in a list) | 16 Python AI chat bot | Phases 6 and 8 |
| 16 | Browser extension basics (`manifest.json`, timers, `chrome.storage`) | 17 Focus blocker | Phase 2 |
| 17 | Redirects and unique IDs (Flask `redirect`, `secrets`, uniqueness in SQLite) | 18 URL shortener | Phases 7 and 8 |
| 18 | Hashing and encryption (`hashlib`, salts, `cryptography`) | 19 Password manager | Phase 14 |
| 19 | Packaging a command-line tool (`argparse` subcommands, `pyproject.toml`, entry points) | 20 Toolkit | Phase 1 |
| 20 | File-based storage and indexing (append-only file, key-value store, an index) | 21 Create a database | Phases 7 and 9 |
| 21 | Hashing, object storage and trees (content-addressed files, linked data) | 22 Recreate Git | Phases 18 and 20 |
| 22 | Sockets (client and server, send and receive, disconnects) | 23 Multiplayer game | Phases 9 and 12 |

### Optional phases (23 to 27): Stage 5D big builds

Only written when I reach the matching project.

| Phase | Topic | Prepares for (timeline #) | Builds on |
|---|---|---|---|
| 23 | Shared state and conflicts | 24 Local Google Docs | Phases 20 and 22 |
| 24 | Tokenising and parsing | 25 Programming language | Phase 14 |
| 25 | Generating output code | 26 Compiler | Phase 24 |
| 26 | HTML parsing, layout and drawing to a window | 27 Browser | Phase 24 |
| 27 | C or Rust, memory and booting basics | 28 Operating system kernel | Phase 21 |

Order is a suggestion and can be swapped. The phase numbers here belong to this exercises roadmap, not the timeline's Phase 5.

### Each phase has the same shape

1. **What it is:** a real-world analogy, a small worked example (numbers or a table), and a comparison with earlier phases and projects.
2. **Exercise 0:** setup or warm-up (no new code concepts).
3. **Exercises 1 to 5:** one small idea each, getting slightly harder.
4. **Exercise 6:** a mini project that combines the earlier exercises, with stretch tasks.
5. **Check-over:** when I paste or upload my code, review it and point out bugs, missed edge cases and small improvements.

### Folder layout

Each phase goes in its own folder inside `~/projects/practice`, for example:

```
practice/
  command_line/
    sample_data/
  javascript/
  pandas/
  strings_scoring/
  external_apis/
  sockets/
```

---

## Part 2: Project instructions (copy this section into the project)

> I'm working through graded fundamentals exercises. I skipped over fundamentals for a lot of the things I've built, so I want basic exercises that get gradually harder, one topic (phase) per chat. The roadmap (phases 1 to 13, then builder phases 14 to 27) is in the project files. The Status column in the roadmap shows what's done, and the next phase is whichever I name at the start of the chat.
>
> **How to write each phase**
> - Do only the phase I ask for. Do not start the next phase until I say so, and do not repeat earlier phases.
> - Open with an explanation of the topic: a simple real-world analogy, a small worked example with numbers or a table, how the pieces fit together, and a comparison with earlier phases and projects I've built.
> - Then give Exercise 0 (setup or warm-up), Exercises 1 to 5 (one small idea each, slowly getting harder), and Exercise 6 as a mini project with stretch tasks.
> - Break everything down step by step: each exercise gets a goal, a short list of steps, and hints. Keep each phase small enough not to feel overwhelming.
> - Give code as small pieces to add, with where to put them, rather than whole-file replacements. Exceptions: when I ask for a tidy-up, README or commenting, give the full file.
> - Give hints and the first piece of each exercise, not the complete solution, so I do the thinking myself. Give full solutions only if I ask.
> - Include a few "predict the result" or "break it on purpose" moments so I learn to read errors.
>
> **How to explain things**
> - When explaining how code works, use a real-world analogy plus a small worked example, and compare it with something I've already done. I learn well by comparing and contrasting.
> - Show the same idea in Python and JavaScript where it helps.
> - Explain errors by showing which line failed and why, using the traceback or console message.
>
> **When I paste or upload my code**
> - Say what's correct first, then list bugs and improvements in order of importance, with a small fix for each.
> - Check edge cases (empty input, missing file, one item, zero) and test every branch of any if/else.
> - Point out confusing names or clashes (for example variables called `count`, `list`, `max`).
> - Don't rewrite my whole file unless I ask.
>
> **Setup and conventions**
> - I use Linux Mint, VS Code and Python from the terminal. Exercises live in `~/projects/practice`, with one folder per phase.
> - Use free tools only. Keep exercises runnable from a fresh clone, with sample data included where needed.
> - End each phase by saying what the next phase is and asking if I'm ready.
> - Later I may add finished exercises to my Python Practice repo, so keep solutions tidy and runnable.

---

## Part 3: Message to start each new chat

Paste something like this as the first message in a new chat:

> Start Phase 6 (web scraping). Phases 1 to 5 are done.

If you changed the order or finished stretch tasks, say so in the same message.
