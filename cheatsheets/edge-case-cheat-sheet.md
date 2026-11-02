# Edge Case Protection Cheat Sheet

Python first, JavaScript where it differs. Use it before you say "done" on any script.

## 1. The idea in one line

An edge case is an input at the boundary of what your code expects: nothing, one, zero, too many, wrong type, missing. Think of a vending machine: it must cope with no coins, a wrong coin, an empty shelf and two people pressing buttons at once, not just the happy path.

## 2. The checklist: ask these about every input

| Case | Question to ask | Example |
| --- | --- | --- |
| Empty | What if there is nothing? | `[]`, `""`, empty file, empty DataFrame |
| One item | Does it work with a single item? | `[5]` (average, min/max, loops) |
| Zero | Does zero break a divide, a loop or a truthiness check? | `total / 0`, `if count:` when count is 0 |
| Negative | Is a negative value allowed? | price of -3, age of -1 |
| Missing | Is the file, key, column or argument absent? | `KeyError`, `FileNotFoundError` |
| Wrong type | Did text arrive instead of a number? | `"abc"` into `int()` |
| Whitespace / case | Do `" Yes"` and `"yes"` match? | `.strip().lower()` |
| Duplicates | What if the same item appears twice? | repeated rows, repeated names |
| Too big / too long | What if it is huge? | 1 million rows, 500-character name |
| Boundaries | Off-by-one at the edges? | first, last, exactly the limit |

## 3. Guard patterns (Python)

**Early return for empty input** (put at the top of the function):

```python
if not items:
    return 0
```

**Beware zero being "falsy":** `if not value:` also catches `0`. Be explicit when 0 is valid:

```python
if value is None:
    ...
```

**Safe divide:**

```python
if total_count == 0:
    return 0.0
average = total / total_count
```

**Safe dictionary lookup:**

```python
name = data.get("name", "unknown")   # no KeyError
```

**Check input is a number:**

```python
try:
    age = int(text)
except ValueError:
    print("Please enter a whole number.")
```

**Range check:**

```python
if not 0 <= age <= 120:
    raise ValueError(f"age out of range: {age}")
```

**Missing file:**

```python
import sys
try:
    with open(path) as f:
        text = f.read()
except FileNotFoundError:
    sys.exit(f"Error: can't find '{path}'.")
```

## 4. Guard patterns (pandas)

```python
if df.empty:
    sys.exit("No data to process.")

if "amount" not in df.columns:
    sys.exit("Missing column: amount")

df["amount"] = pd.to_numeric(df["amount"], errors="coerce")  # bad text becomes NaN
df = df.dropna(subset=["amount"])                            # then drop those rows

df["name"] = df["name"].str.strip()                           # stray spaces
df = df.drop_duplicates()
```

Also check: one-row DataFrames, all-NaN columns, and a group that ends up with zero rows after filtering.

## 5. Guard patterns (command line, SQL, APIs)

| Area | Protect against |
| --- | --- |
| `argparse` | Missing required argument, wrong type (`type=int`), out-of-range (`choices=` or `parser.error(...)`) |
| `sqlite3` | No rows returned (`fetchone()` gives `None`), duplicate key, use `?` placeholders, never f-strings in SQL |
| Flask | Missing JSON body, missing field, wrong type, ID that does not exist (return 404), bad input (return 400) |
| Web scraping | Page layout changed (element is `None`), timeout, non-200 status, empty results |

```python
row = cur.execute("SELECT * FROM tasks WHERE id = ?", (task_id,)).fetchone()
if row is None:
    return {"error": "not found"}, 404
```

## 6. Same idea in JavaScript

```javascript
if (items.length === 0) return 0;               // empty array

const n = Number(text);
if (Number.isNaN(n)) { /* not a number */ }     // wrong type

const el = document.querySelector("#box");
if (el === null) { /* element missing */ }      // missing DOM element

const name = data?.user?.name ?? "unknown";    // safe lookup
```

Watch out: `0`, `""` and `NaN` are all falsy in JavaScript too, so `if (!value)` can wrongly reject a valid 0.

## 7. Test every branch

For every `if / elif / else`, run the code once so each branch executes. For this function:

```python
def grade(score):
    if score >= 70:
        return "A"
    elif score >= 50:
        return "B"
    return "C"
```

test `70`, `69`, `50`, `49`, `0` and `100`. **Always test the exact boundary values** (70 and 69), because that is where `>` versus `>=` mistakes hide.

A quick `pytest` version:

```python
import pytest

@pytest.mark.parametrize("score, expected", [(70, "A"), (69, "B"), (50, "B"), (49, "C"), (0, "C")])
def test_grade(score, expected):
    assert grade(score) == expected
```

## 8. Break it on purpose

Before finishing a script, run it with:

- an empty file
- a file with only the header row
- a file with one row
- a file that does not exist
- no arguments at all
- a value of `0`, a negative number and a huge number

If it crashes, read the **last line** of the traceback for what went wrong and the lines above for where.

## 9. Naming traps

Avoid variables called `list`, `max`, `min`, `sum`, `count`, `type`, `id`, `input` or `file`. They hide Python's built-ins, which causes confusing errors later. Use `items`, `highest`, `total`, `row_count` and similar instead.

## 10. Final check before committing

- [ ] Handles empty input
- [ ] Handles one item
- [ ] Handles zero and negatives
- [ ] Handles missing file, column and key
- [ ] Every `if / else` branch tested
- [ ] Error messages say what went wrong and what to do
- [ ] Tests added for the awkward cases (not just the happy path)
