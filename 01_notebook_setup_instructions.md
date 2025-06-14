# 📝 Notebook Instructions (AltSchool SQL Project)

Welcome! This guide will walk you through the exact steps to complete your AltSchool SQL project successfully using **Anaconda Jupyter Notebook**.

---

## ✅ Step 1: Launch Jupyter Notebook via Anaconda

- Open your **Anaconda Navigator**.
- Launch **Jupyter Notebook**.
- Create a new **Python 3 notebook** inside your project folder.

---

## 📂 Step 2: Upload Required Files

Upload the following project files into the **same directory** as your notebook:

- `bookstore.sqlite`  
- `project_notebook.ipynb`

---

## 🧪 Step 3: Install Required Package

Before running any code, install the `ipython-sql` package.

📌 In a **new cell above the first SQL cell**, paste and run the code below:

```python
!pip install ipython-sql --force-reinstall
````

✅ This command allows your notebook to understand and run SQL queries.

---

## 🔁 Step 4: Restart the Kernel (Very Important)

After installing the package, you **must restart the kernel**:

* Go to the top menu and click: `Kernel > Restart Kernel`
* Then **run all cells again from the top**, in order.

🚫 **Do NOT touch or copy** the following — they’re already present in the starter notebook:

```python
%load_ext sql
%sql sqlite:///bookstore.sqlite
```

🟢 Just follow the notebook flow and start executing the cells in order.

---

