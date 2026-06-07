# 🏏 AI-Based Cricket Team Recommendation System (Full Stack + ML Project)

## 📌 Overview
This project is a full-stack machine learning-based cricket team recommendation system designed to assist coaches in selecting the best possible playing XI using data-driven insights.

The system analyzes historical player performance data and applies machine learning models to generate optimized team combinations.

---

## 🚀 Features
- AI-based cricket team recommendation system
- Player performance analysis and ranking
- Role classification (Batsman, Bowler, All-rounder, Wicketkeeper)
- Prediction of player impact scores
- Full-stack web application with authentication
- Real-time team selection suggestions

---

## 🧠 Machine Learning Approach
- Data preprocessing and cleaning
- Feature engineering from player statistics
- Ensemble models (Random Forest, XGBoost)
- Regression-based performance prediction
- Player impact scoring system
- Optimal team selection algorithm

---

## 🏗️ Tech Stack

### 🔹 Frontend
- React.js
- Vite
- Tailwind CSS

### 🔹 Backend
- Python
- FastAPI / Flask
- REST API integration

### 🔹 Machine Learning
- Pandas
- NumPy
- XGBoost
- Random Forest

### 🔹 Database
- SQLite

---

## 📁 Project Structure
Cric_TR-main/
│
├── backend/
│ ├── main.py
│ ├── database.py
│ ├── predict_engine.py
│ ├── auth_utils.py
│ └── routers/
│
├── frontend/
│ ├── src/
│ ├── package.json
│ └── vite.config.js
│
├── Data/
├── start.bat
├── start.sh
└── README.md


---

## ⚙️ How to Run

### Backend
```bash
cd backend
pip install -r requirements.txt
python main.py

Frontend
cd frontend
npm install
npm run dev

Project Objective

To build an intelligent system that helps cricket coaches make better team selection decisions using machine learning instead of manual judgment

Future Improvements
Live match data integration
Deep learning-based player evaluation
Mobile application version
Cloud deployment (AWS / Azure)