# perplexity clone
A Flutter project.

## Preview

<video src="https://github.com/user-attachments/assets/3c4a27de-177a-44cf-b034-1ccbe5cd920b" controls loop></video>

## 🧰 Prerequisites

* Flutter SDK (≥3.0)
* Python (≥3.8)
* `git` and `venv`

---

## ✨ Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/horizon_perplex.git
cd horizon_perplex
```

---

### 2. Set Up Python Backend

```bash
cd server
python -m venv venv         # create virtual environment
venv\Scripts\activate       # on Windows
# source venv/bin/activate  # on Mac/Linux

pip install -r requirements.txt

# Start FastAPI server
uvicorn main:app --reload
```

---

### 3. Set Up Flutter Frontend

In a **new terminal window**:

```bash
cd flutter_client        # or the Flutter project root
flutter pub get
flutter run
```

---

## 🌐 Project Structure

```
horizon_perplex/
├── flutter_client/      # Flutter UI
├── server/              # FastAPI backend
│   ├── venv/            # Python virtual environment
│   ├── main.py          # FastAPI entrypoint
│   └── ...
└── README.md
```

---

## 🧪 Testing

* Visit `http://127.0.0.1:8000/docs` to test the backend API (FastAPI Swagger UI).
* Use the Flutter app to interact with the backend.

---

## 📦 Deployment

To deploy the backend:

```bash
uvicorn main:app --host 0.0.0.0 --port 8000
```

You can containerize with Docker or deploy to platforms like:

* **Render**
* **Railway**
* **Vercel (Flutter Web)** + **Backend on Cloud Function**

---

## 🙌 Credits

Created by [Your Name](https://github.com/yourusername)

