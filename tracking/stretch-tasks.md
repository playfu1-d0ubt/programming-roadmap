# Stretch Tasks Main Phases: Progress

Tick a box when done, and note the date. `[x]` = done. Tasks tagged **(Round 4)** are the next small quick wins.

**Size key:** S = under an hour, M = a session, L = several sessions

## Progress by round

- Round 1: safety checks (Discord Bot token check, Song Quiz passwords) - done
- Round 2: repo polish (`LICENSE`, README sections, topics and About, fresh clone test) - done
- Round 3: profile and portfolio (profile README, pinned repos, links, phone-size test, favicon and 404) - done
- Round 4: small quick wins inside each project - next

---

## Across every project

- [x] S: Add a `LICENSE` file (MIT) to each repo
- [x] S: Make sure each README has the same sections: what it does, how to run, limitations, what I learned
- [ ] S: Add a screenshot or short GIF to each README that lacks one
- [x] S: Add GitHub topics and an About description to every repo
- [ ] M: Run a linter (ruff or flake8) on each repo and fix what it finds
- [ ] S: Add a `ruff check` step to the `tests.yml` workflow in Price Tracker and Song Quiz, so CI catches style problems as well as failing tests
- [ ] S: Update the action versions in each `tests.yml` to clear the Node.js warning (check each action's releases page for the current version first)
- [ ] M: Add docstrings and type hints to the main functions
- [x] S: Check every README's "how to run" from a fresh clone

## CSV Cleaner

- [ ] M: Add `pytest` tests using small fake CSV files
- [ ] S: Add a `--dry-run` option that reports what would change without writing anything **(Round 4)**
- [ ] M: Print a summary of what was fixed (already shows rows in/out and duplicates; add rows changed)
- [ ] M: Handle different encodings and delimiters (semicolons, tabs)
- [ ] M: Accept `.xlsx` files as input as well as CSV

## Song Quiz

- [ ] M: Add `pytest` tests for the scoring and input-checking functions (partly done 02/11/26: `hint`, passwords, `read_lines`, `get_choice` and `leaderboard` are covered; the scoring in `quiz` and the checks in `new_login` are not)
- [ ] M: Pull the name, age and password checks out of `new_login` into small functions, then test them with the normal/boundary/erroneous table using `pytest.mark.parametrize`
- [ ] M: Pull the scoring out of `quiz` into its own function and test it
- [x] S: Check how passwords are stored. If they're plain text, hash them with `hashlib`
- [ ] M: Move the leaderboard and logins from plain text files to JSON
- [ ] M: Add difficulty levels or song categories
- [ ] M: Split the code into modules (game logic, file handling, menus)

## Price Tracker

- [x] M: Add `pytest` tests and a GitHub Actions workflow (done 02/11/26)
- [ ] M: Test `fetch_page` by replacing `requests.get` with a stand-in (`monkeypatch`), to cover the 404, timeout and connection error messages
- [ ] M: Chart the price history for a product with `matplotlib`
- [ ] M: Move the list of products and settings into a config file
- [ ] S: Replace `print` with the `logging` module **(Round 4)**
- [ ] M: Send a notification when a price drops (email or Discord webhook)
- [ ] M: Handle a page layout changing without crashing, and say what went wrong (already shows a clear message; check it covers every case)
- [x] S: Document the cron setup in the README

## Ball Drop

- [ ] S: Save the high score to a file **(Round 4)**
- [ ] M: Add sound effects and a mute key
- [ ] S: Add a pause key **(Round 4)**
- [ ] M: Add power-ups (slow-down, extra life)
- [ ] M: Refactor the player and ball into classes
- [ ] S: Add a GIF of gameplay to the README **(Round 4)**

## Python Practice (message bot, loops, dice game)

- [x] S: Add a short README section explaining each exercise
- [ ] M: Add tests for the small functions (encoder, dice rolls)
- [ ] M: Add roll statistics to the dice game (how often each number came up)
- [ ] S: Add a few new exercises that use things learned since (files, pandas, argparse)

## Discord Bot

- [ ] M: Add slash commands (`/help`) alongside the `!` commands
- [ ] M: Split commands into cogs
- [ ] S: Add `logging` for errors and command usage **(Round 4)**
- [ ] M: Write up how to keep it running (service or hosting)
- [x] S: Check that no token or ID is anywhere in the git history

## GitHub profile README

- [x] S: Update the project table and skills each time a project finishes (done for now; repeat for each new project)
- [x] S: Pin the six most relevant repos
- [x] S: Check all links work and none point to deleted or renamed repos

## Portfolio website

- [ ] M: Add a preview image to each project card (screenshots were tried and removed, so find a design that suits)
- [ ] M: Run Lighthouse in Chrome and fix the accessibility and performance warnings
- [x] S: Test on a phone-sized window and fix anything that overflows
- [x] S: Add a favicon and a custom 404 page
- [ ] M: Add an About or Contact section
- [ ] L: Add tag filters to the project list with JavaScript

## Robot Arm IMU Analysis

- [ ] M: Compare IMU motion with the robot's own data (`robot-triangle-150.csv`): line up the clocks, then compare movement
- [ ] M: Find out why the spikes appear one after another along the arm (digitus, carpus, radius, humerus)
- [ ] S: Confirm the gyroscope units in the dataset documentation and state them in the README **(Round 4)**
- [ ] M: Test whether the offsets stay the same on another recording
- [ ] M: Work out each segment's tilt from the accelerometer and gyroscope (a complementary filter)
- [ ] M: Add `pytest` tests for `magnitude` and `remove_offset`
- [ ] S: Add a Jupyter notebook version that walks through the findings

## Excel Report Generator

- [ ] S: Add a totals row and conditional formatting (highlight the best month) **(Round 4)**
- [ ] M: Add month-over-month change to the "By month" sheet
- [ ] S: Flag a partial final month in the report itself **(Round 4)**
- [ ] M: Add `--from` and `--to` date options
- [ ] M: Let the column names be set in a config file or options
- [ ] S: Test the output in Microsoft Excel and note the result in the README
- [ ] S: Check whether the chart text is readable in dark mode
- [ ] M: Add `pytest` tests for `summarise` using a tiny hand-made DataFrame

## Task Tracker API

- [ ] M: Add `pytest` tests using Flask's test client, with a temporary database so tests don't touch `tasks.db`
- [ ] M: Add a GitHub Actions workflow that runs the tests on every push
- [ ] S: Add a filter to the list, like `GET /tasks?done=true` **(Round 4)**
- [ ] M: Add due dates to tasks, with validation for the date format
- [ ] M: Add pagination (`?limit=` and `?page=`) to `GET /tasks`
- [ ] S: Let the database path be set with an environment variable instead of being fixed in `db.py` **(Round 4)**
- [ ] M: Add a simple API key check, so not everyone who can reach the server can change tasks
- [ ] S: Run it with a production server (`gunicorn` or `waitress`) and note how in the README **(Round 4)**
- [ ] M: Split `app.py` into a Flask blueprint once it grows
- [ ] M: Build a small web page (HTML and JavaScript `fetch`) that uses the API as its back end
- [ ] S: Add a `DELETE /tasks?done=true` endpoint that clears all finished tasks
- [ ] L: Add users, so each person has their own task list

## Heart-Rate Signal Analyser

- [ ] M: Run it on a real public heart recording (ECG or pulse) and note what breaks
- [ ] M: Add heart-rate variability (how much the gaps between beats vary)
- [ ] S: Add a `--no-show` option so it saves the graph without opening a window
- [ ] S: Add `--low` and `--high` options for the filter band
- [ ] M: Add a GitHub Actions workflow that runs `pytest` on every push
- [ ] M: Add a warning when a gap is much longer than the others (a missed beat)

## Line-Following Robot Simulator

- [ ] M: Add a PID controller (Phase 13) so the robot settles on the middle of the line, and plot it next to the simple rule
- [ ] M: Add tests for `Sensor.position` and for `plot_path` (check the file is written)
- [ ] M: Add a curved line, like a circle (`Line.contains` already takes x)
- [ ] S: Add random noise to the sensors and see if the robot still follows
- [ ] M: Animate the run with matplotlib and save a GIF for the README
- [ ] S: Add a GitHub Actions workflow that runs `pytest` on every push

## Prosthetic Hand Simulator

- [ ] M: Average the classifier comparison over several seeds, to check whether the 3 point gap at noise 1.0 is real
- [ ] M: Try other values of `k` for KNN and add a small table to the README
- [ ] M: Smooth the hand's twitch by taking the most common guess of the last 3 windows
- [ ] S: Add a `--noise` option to `demo.py` so the twitch can be seen at higher noise
- [ ] S: Make `demo.py` save the GIF only when asked (a `--save` option), so running it doesn't overwrite the committed one
- [ ] M: Add a fourth gesture, such as a pinch, with its own size and smoothness
- [ ] M: Add a GitHub Actions workflow that runs `pytest` (links to Project #13)
- [ ] S: Add type hints to the main functions