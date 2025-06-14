# 🚫 Handling Assertion Errors (AltSchool SQL Project)

Sometimes when you run your SQL notebook, especially during the final assertions, you might encounter strange errors like:

```
ValueError: The truth value of an array with more than one element is ambiguous. Use a.any() or a.all()
```

Or something that looks completely confusing.

Don’t panic. This guide breaks down exactly how to handle those annoying assertion errors so you can pass your checks and submit without issues.

---

## 🧹 Step 1: Restart Kernel When Things Look Weird

If you're suddenly getting errors even when your answers *look* right, do this first:

👉 Click **Kernel > Restart Kernel**.

👉 Then re-run all the cells in order from top to bottom.

✅ This solves most weird behavior caused by stale variables or memory bugs.

---

## 🕵️ Step 2: Use the "Do They Match?" Debugging Trick

Sometimes the final check will fail but you’re not sure why. Add this below your comparison code:

```python
print("Do they match?")
print(q5_result.equals(q5))
```

If you see `True`, then you're good, something else is probably messing up. If you see `False`, check the structure or order of your result.

---

## ✅ Step 3: Align Your Results (Sorting + Reset Index)

Even if the data is correct, different row order or index numbers can make `.equals()` return `False`. Fix it like this:

```python
q5_result = q5_result.sort_values(by=["review_id"]).reset_index(drop=True)
q5 = q5.sort_values(by=["review_id"]).reset_index(drop=True)
```

👉 Add that right before the `assert` line.

This ensures both DataFrames match in order **and** index, which is required for `.equals()` to pass.

---

## 🔁 Step 4: Rerun with Clean Kernel

If after fixing all that, you *still* get errors:

* Restart the kernel again
* Re-run all cells from the top
* Make sure no old variables are interfering

---

## 🧠 Why This Happens

The assertions are checking **exact match** in both values and order. If your query returns correct data but in a different order or with mismatched indexes, `.equals()` will fail, even though the data is fine.

That’s why cleaning up with `sort_values` and `reset_index` is your secret weapon here.

---

With this guide, you should never get stuck on the final steps again. Let’s move on to PrettyTable tips next!
