## Team TriNetics 🦾 Presents
# 🎮 Tic Tac Toe with AI Commentary

An intelligent Tic Tac Toe game built using **Jac Language** and powered by **Google's Gemini LLM** for dynamic, real-time commentary and strategic insights.

---

## ✨ Features

### 🤖 AI-Enhanced Gameplay

* **Smart AI Opponent**: Play against an intelligent agent that selects optimal moves.
* **Live Commentary**: Real-time sports-style move commentary.
* **Tactical Analysis**: Get strategic insights after each turn.
* **Reasoned Moves**: Understand why the AI made its choice.

### 🎯 Classic Game Mechanics

* **Human vs AI**: Player X (You) vs Player O (AI).
* **Interactive Board**: 3x3 game grid with position indicators.
* **Win/Tie Detection**: Automatically declares winner or tie.
* **Input Validation**: Robust handling for invalid inputs.

### 🧠 AI Highlights

* **Move Commentary**: `"🔥 Brilliant opening by X on the corner!"`
* **Strategic Advice**: `"💡 O should defend the diagonal next."`
* **Game Summary**: Full analysis at the end of the match.

---

## 🛠️ Tech Stack

* **Language**: [Jac 0.8.4](https://www.jac-lang.org/)
* **LLM**: Google Gemini 2.0 Flash via `mtllm`
* **Paradigm**: Object Spatial Programming (OSP)
* **AI Interface**: `by llm()` function calls within Jac

---

## 🚀 Getting Started

### 🔧 Prerequisites

```bash
pip install jaclang
pip install mtllm
```

### 🔑 Setup API Key

1. Get your Gemini API key from [Google AI Studio](https://aistudio.google.com/app/apikey)
2. Add to your terminal:

```bash
# Windows Command Prompt
set GEMINI_API_KEY=your_actual_api_key_here

# Windows PowerShell
$env:GEMINI_API_KEY="your_actual_api_key_here"

# Linux/Mac
export GEMINI_API_KEY=your_actual_api_key_here
```

### ▶️ Run the Game

```bash
jac run tictactoe.jac
```

---

## 🎮 How to Play

1. Run the program.
2. Input your move (1–9) as shown below.
3. Let the AI respond with its move and analysis.
4. Enjoy the game insights and try to win!

### Game Board Layout

```
 1 | 2 | 3 
___|___|___
 4 | 5 | 6 
___|___|___
 7 | 8 | 9 
```

---

## 🧩 Configuration

In the `TicTacToe` walker, toggle features:

```jac
walker TicTacToe {
    has ai_enabled: bool = True;
    has commentary_enabled: bool = True;
}
```

---

## 🏗️ Architecture

### Object Spatial Design

* **Walkers**: Handle turn control, AI logic, and output.
* **Nodes**: Represent game state and turn data.
* **Graphs**: Maintain state relationships during gameplay.
* **LLM Integration**: In-line AI reasoning using `by llm()`.

### Key Modules

* `TicTacToe`: Main game loop and logic controller.
* `game_turn`: Tracks each move and board state.
* AI Abilities: Commentary, move suggestion, and post-match review.

---

## 🔍 AI Function Overview

* `move_commentary(name: str, position: int)`: Generate natural commentary.
* `game_analysis(board: list[str])`: Give strategy advice.
* `ai_move_generator(board: list[str])`: Suggest best AI move.

---

## 🎮 Sample Gameplay

```
🎮 Welcome to AI-Enhanced Tic Tac Toe!
Player X (Human) vs Player O (AI)

 X |   |   
___|___|___
   | O |   
___|___|___
   |   |   

📢 "X starts strong in the top-left!"
🤖 "O claims center — the tactical hub!"
💡 "X should now block O's diagonal potential."
```

---

## 🤝 Contributing

Ideas to contribute:

* Add difficulty levels (Easy, Medium, Hard)
* Integrate speech synthesis for voice commentary
* Build a GUI version using Jac’s upcoming features
* Explore multi-player support

---

**Made with ❤️ using Jac & Google Gemini**
Let’s redefine how games think and talk 🧠🎙️

