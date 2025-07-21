"""A Tic Tac Toe Game with AI Commentary"""
import from mtllm.llm { Model }


glob llm = Model(model_name="gemini/gemini-2.0-flash", verbose=False);


"""Provide exciting commentary for a Tic Tac Toe move"""
def move_commentary(player: str, position: int, board_state: list) -> str by llm();


"""Analyze the current game state and provide strategic insight"""
def game_analysis(board_state: list, current_player: str) -> str by llm();


"""Generate the best move for AI player O"""
def ai_move_generator(board_state: list) -> int by llm();


walker TicTacToe {
    has current_player: str = "X";
    has game_over: bool = False;
    has winner: str = "";
    has moves_count: int = 0;
    has board_state: list = [" ", " ", " ", " ", " ", " ", " ", " ", " "];
    has ai_enabled: bool = True;
    has commentary_enabled: bool = True;

    can start_game with `root entry;
    def display_board();
    def check_winner()  -> bool;
    def make_move(position: int) -> bool;
    def switch_player();
    def get_ai_move()  -> int;
}


node game_turn {
    can play with TicTacToe entry;
}


# Run the game
 with entry {
    TicTacToe() spawn root;
}
