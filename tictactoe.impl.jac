impl TicTacToe. start_game{
    print("🎮 Welcome to AI-Enhanced Tic Tac Toe!");
    print("Player X (Human) vs Player O (AI)");
    print("Player X goes first!");
    if self.commentary_enabled {
        print("\n📢 " + game_analysis(self.board_state, self.current_player));
    }
    end: `root | game_turn = here;
    for i = 0 to i < 9 by i += 1 { end ++> (end := game_turn()); }
    visit [-->];
}


impl game_turn. play{
    if not visitor.game_over {
        visitor.display_board();
        print("\nCurrent player: " + visitor.current_player);
        valid_move = False;
        position = 0;
        # Check if it's AI's turn (Player O)
         if visitor.current_player == "O" and visitor.ai_enabled  {
            print("🤖 AI is thinking...");
            position = visitor.get_ai_move();
            valid_move = visitor.make_move(position);
            if valid_move {
                print("AI chooses position: " + str(position));
            }
        } else {
            # Human player's turn
             while not valid_move { user_input = input("Enter position (1-9): "); if user_input.isdigit() {
                position = int(user_input);
                valid_move = visitor.make_move(position);
            } else {
                print("That's not a valid number! Try again.");
            }  }
        }
        # Generate AI commentary for the move
         if visitor.commentary_enabled and valid_move  {
            commentary =
                move_commentary(visitor.current_player, position, visitor.board_state);
            print("📢 " + commentary);
        }
        # Check for winner
         if visitor.check_winner() {
            visitor.display_board();
            print("\n🎉 Player " + visitor.winner + " wins!");
            # Final game analysis
             if visitor.commentary_enabled {
                final_analysis = game_analysis(visitor.board_state, visitor.winner);
                print("🎯 Final Analysis: " + final_analysis);
            }
            visitor.game_over = True;
            disengage;
        }
        # Check for tie
         if visitor.moves_count == 9 {
            visitor.display_board();
            print("\n🤝 It's a tie!");
            if visitor.commentary_enabled {
                tie_analysis = game_analysis(visitor.board_state, "TIE");
                print("⚖️ Tie Analysis: " + tie_analysis);
            }
            visitor.game_over = True;
            disengage;
        }
        visitor.switch_player();
        # Provide strategic insight after each move
         if visitor.commentary_enabled and not visitor.game_over  {
            strategy = game_analysis(visitor.board_state, visitor.current_player);
            print("💡 " + strategy);
        }
    }
    visit [-->];
}


impl TicTacToe. get_ai_move -> int {
    # Use AI to generate the best move
    ai_position =
        ai_move_generator(self.board_state);
    # Validate AI response
     if ai_position >= 1
    and ai_position <= 9
    and self.board_state[ai_position - 1] == " "
     {
        return ai_position;
    }
    # Fallback: find first available position
     for i in range(9) { if self.board_state[i] == " " {
        return i + 1;
    } }
    return 1;
}


impl TicTacToe. display_board{
    print("\n   |   |   ");
    print(
        " " + self.board_state[0] + " | " + self.board_state[1] + " | " + self.board_state[2]
    );
    print("___|___|___");
    print("   |   |   ");
    print(
        " " + self.board_state[3] + " | " + self.board_state[4] + " | " + self.board_state[5]
    );
    print("___|___|___");
    print("   |   |   ");
    print(
        " " + self.board_state[6] + " | " + self.board_state[7] + " | " + self.board_state[8]
    );
    print("   |   |   ");
    print("\nPositions:");
    print(" 1 | 2 | 3 ");
    print("___|___|___");
    print(" 4 | 5 | 6 ");
    print("___|___|___");
    print(" 7 | 8 | 9 ");
}


impl TicTacToe. check_winner -> bool {
    # Check rows
     for i in range(3) { if self.board_state[i * 3] == self.board_state[i * 3 + 1] == self.board_state[i * 3 + 2] != " " {
        self.winner = self.board_state[i * 3];
        return True;
    } }
    # Check columns
     for i in range(3) { if self.board_state[i] == self.board_state[i + 3] == self.board_state[i + 6] != " " {
        self.winner = self.board_state[i];
        return True;
    } }
    # Check diagonals
     if self.board_state[0] == self.board_state[4] == self.board_state[8] != " " {
        self.winner = self.board_state[0];
        return True;
    }
    if self.board_state[2] == self.board_state[4] == self.board_state[6] != " " {
        self.winner = self.board_state[2];
        return True;
    }
    return False;
}


impl TicTacToe. make_move(position: int) -> bool {
    if position < 1 or position > 9  {
        print("Invalid position! Please choose 1-9.");
        return False;
    }
    if self.board_state[position - 1] != " " {
        print("Position already taken! Choose another.");
        return False;
    }
    self.board_state[position - 1] = self.current_player;
    self.moves_count += 1;
    return True;
}


impl TicTacToe. switch_player{
    if self.current_player == "X" {
        self.current_player = "O";
    } else {
        self.current_player = "X";
    }
}
