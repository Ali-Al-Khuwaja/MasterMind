IMPORT 'lib/game'

CLASS Main

    METHOD init
        game = Game.new
    END

    METHOD start_menu
        PRINT "Select an option number"
        PRINT '1. Start game'
        PRINT '2. Stop game'
        answer = get.input
        start_menu_actions(answer)
    END

    METHOD validate(answer)
        IF answer IS NOT null AND IS Number
    END

    METHOD start_menu_actions(answer)
        IF answer IS valid
            IF answer IS "1"
                roles_menu
            ELSE answer IS "2"
                stop_game
            END
        END
    ENS

    METHOD roles_menu
        PRINT "choose the type of you opponent for your game"
        PRINT "1. human vs human"
        PRINT "2, human vs computer"
        answer = get.input
    END

    METHOD roles_menu_actions(answer)
        IF answer IS valid
            IF answer IS "1"
                human_vs_human
            ELSE answer IS "2"
                human_vs_computer
            END
        END
    END

    METHOD difficulty_menu
        PRINT 'Choose the difficulty of your game'
        PRINT '1. Easy mode'
        PRINT '2. Hard mode'
        answer = get.input
    END

END
