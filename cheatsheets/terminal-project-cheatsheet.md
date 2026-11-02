# Terminal Project Cheat Sheet (Linux Mint, Python + Git)

Replace `my-project` and `YOUR-USERNAME` each time.

---

## 1. Start a new project

```bash
mkdir ~/projects/my-project && cd ~/projects/my-project       # 1. folder
python3 -m venv venv                        # 2. virtual environment
source venv/bin/activate                    #    activate (prompt shows (venv))
pip install pandas                          # 3. install what you need
touch main.py README.md                     # 4. starter files
mkdir sample_data

cat > .gitignore << 'EOF'                   # 5. before the first commit
venv/
__pycache__/
*.pyc
*_out.csv
.env
EOF

pip freeze > requirements.txt               # 6. save dependencies

git init                                    # 7. start Git
git status                                  #    check nothing private is included
git add .
git commit -m "Initial commit: project setup"
```

On GitHub: **+ > New repository**, choose Public, leave README / .gitignore / licence **unticked**. Then:

```bash
git remote add origin git@github.com:playfu1-d0ubt/my-project.git   # 9.
git push -u origin main
```

---

## 2. Every session

```bash
cd ~/projects/my-project
source venv/bin/activate     # start of session

git status                   # what changed?
git add .                    # stage changes
git commit -m "Add date cleaning"
git push                     # upload

deactivate                   # when finished
```

Commit after each small working step. Start messages with a verb: *Add*, *Fix*, *Handle*, *Tidy*.

---

## 3. Handy commands

| Task | Command |
|---|---|
| Folder tree | `tree -I 'venv\|__pycache__\|.git'` |
| Move/rename tracked file | `git mv old.csv sample_data/old.csv` |
| Remove tracked file | `git rm file.py` |
| Commit history | `git log --oneline` |
| See changes before committing | `git diff` |
| Stop tracking something committed by mistake | `git rm -r --cached venv` |
| Run a script | `python main.py` |
| Run with arguments | `python clean_csv.py input.csv output.csv` |
| Script help | `python clean_csv.py --help` |
| Open folder in VS Code | `code .` |
| Where am I? | `pwd` |
| List files | `ls -la` |

---

## 4. Common problems

| Problem | Fix |
|---|---|
| `ModuleNotFoundError` | venv not active: `source venv/bin/activate` |
| `python: command not found` | Use `python3` outside a venv |
| `externally managed environment` | Never `sudo pip`. Use a venv |
| `Permission denied (publickey)` | `ssh-add ~/.ssh/id_ed25519` and check the key is on GitHub |
| `src refspec main does not match any` | No commit yet: `git add .` then `git commit` |
| `remote origin already exists` | `git remote set-url origin git@github.com:YOU/repo.git` |
| Branch is `master` | `git branch -M main` |
| `No such file or directory` | Check `pwd`; be in the project folder |
| Committed `venv/` by mistake | Add to `.gitignore`, then `git rm -r --cached venv` and commit |
| Committed a password/key by mistake | Treat it as leaked. Change it first, then clean the history |
| `KeyError: 'column'` | Column name missing in that file. Read the bottom line of the traceback |

**Reading an error:** the last line says what went wrong; the lines above show which function and line number it happened in.

---

## 5. Project done checklist

- [ ] Runs from a fresh clone (follow your own README)
- [ ] `requirements.txt` up to date
- [ ] `.gitignore` covers `venv/`, output files, secrets
- [ ] No real customer data or credentials in the repo
- [ ] Sample data is fake, in `sample_data/`
- [ ] README: what it does, the problem, before/after, how to run, limitations, what I learned
- [ ] Docstring at top of script, comments explain the *why*
- [ ] Clear commit messages
- [ ] Read it on GitHub as a stranger would

---

## 6. Optional: one-command project starter

Add to the end of `~/.bashrc`, then run `source ~/.bashrc`:

```bash
newproject() {
  mkdir -p ~/projects/"$1" && cd ~/projects/"$1" || return
  python3 -m venv venv
  printf 'venv/\n__pycache__/\n*.pyc\n*_out.csv\n.env\n' > .gitignore
  touch README.md main.py
  mkdir sample_data
  git init
  echo "Created ~/projects/$1. Run: source venv/bin/activate"
}
```

---

## 7. Quick Python reminders

```python
# f-strings
print(f"Rows in: {rows_in}")
print(f"Total: £{total:,.2f}")

# filter a list
cols = [c for c in ["name", "city"] if c in df.columns]

# early return
if "amount" not in df.columns:
    return df

# friendly error
import sys
try:
    df = pd.read_csv(path)
except FileNotFoundError:
    sys.exit(f"Error: can't find '{path}'.")
```
