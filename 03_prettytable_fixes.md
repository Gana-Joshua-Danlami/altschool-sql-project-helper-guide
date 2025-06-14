# 🎨 Fixing Output Formatting with PrettyTable (AltSchool SQL Project)

Sometimes your query results look correct in terms of data, but the format doesn’t match what the project expects. This can make your assertions fail even though the content is fine.

That’s where `PrettyTable` comes in.

---

## 📌 What is PrettyTable?

PrettyTable is a Python library that helps you print tables in a clean, readable format. It makes your SQL function outputs look like proper tables instead of raw, messy rows.

In this project, some SQL functions require you to return results in **PrettyTable format** so that the output looks exactly like the expected result.

---

## ❗ Why PrettyTable is Important for This Project

If you don’t use PrettyTable, your function might return results like this:

```
[("Harry Potter",)]
```

But the expected output is a clean, structured table like this:

```
+----------------+
|     title      |
+----------------+
| Harry Potter   |
+----------------+
```

Even if the data is right, your assertion will fail because the format doesn’t match.

---

## ✅ How to Use PrettyTable

Here’s the basic process:

1. Import the library:

```python
from prettytable import PrettyTable
```

2. Create a table and define the column headers:

```python
table = PrettyTable()
table.field_names = ["title"]
```

3. Add your result rows:

```python
for row in result:
    table.add_row(row)
```

4. Return the table:

```python
return table
```

---

## 🧪 Example Function Fix

Let’s say your function was originally like this:

```python
def get_titles():
    result = %sql SELECT title FROM books
    return result
```

Fix it with PrettyTable:

```python
def get_titles():
    result = %sql SELECT title FROM books
    table = PrettyTable()
    table.field_names = ["title"]
    for row in result:
        table.add_row(row)
    return table
```

Now it will print in the clean format needed by the autograder.

---

## 🧠 Why This Matters

The autograder doesn’t just check if the content is right, it also checks the **structure** and **appearance**. PrettyTable helps you match both.

So if your function is returning correct data but failing the assertion, this formatting fix is usually the answer.

Next up: Let’s walk through wrapping everything into a clean final submission!
