# 🛠️ Troubleshooting Tips (AltSchool SQL Project)

Even when you follow instructions step-by-step, weird issues can still show up. Don’t worry, i’ve compiled the most common fixes and how to handle them.

Use this page as your go-to cheat sheet when something goes wrong.

---

## 🔧 Common Issues & Fixes

### ✅ 1. Pip install won’t work or notebook says `%load_ext sql` is invalid

* Try this command:

  ```python
  !pip install ipython-sql --force-reinstall
  ```
* Then click **Kernel > Restart Kernel**, and re-run all cells from the top.

### ❗️2. Assertion errors even when output looks right?

Sometimes the `.equals()` test fails even when your output *looks* correct.

Fix:

```python
print(q5_result.equals(q5))
```

This helps you confirm if the mismatch is real or just a minor difference.

Also use this trick:

```python
q5_result = q5_result.sort_values(by=["review_id"]).reset_index(drop=True)
q5 = q5.sort_values(by=["review_id"]).reset_index(drop=True)
```

This aligns order and index so `.equals()` doesn’t whine you.

### ⚠️ 3. Nothing happens when I run the cell

* Make sure you're selecting the **correct code cell**
* Check if the cell has a `%%sql` line, this is important for SQL queries to run properly

### 💥 4. Notebook seems broken or stuck

* Save your work
* Click **Kernel > Restart Kernel**
* Then click **Run > Run All Cells one by one from top again**

### 🧼 5. Leftover variables or memory bugs

Notebooks can store old variables in memory.

* Restarting the kernel clears all memory and makes sure you’re starting clean.

---

## 🧠 Pro Tip: Restart is your superpower

If anything weird happens and you don’t know what to do, restart the kernel first. It fixes **80%** of errors.

## 🧘 Final Reminder

Follow each cell in order.
Don’t skip around or modify what’s already provided unless instructed.
Stay calm, read errors carefully, and use this guide to debug like a pro.
