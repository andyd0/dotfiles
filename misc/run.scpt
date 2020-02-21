tell application "iTerm2"
    tell current session of current window
        split horizontally with default profile
        write text "fedora"
        write text "yarn start"
    end tell

    tell current tab of current window
        set _new_session to last item of sessions
    end tell

    tell _new_session
        select
        write text "fedora"
        write text "bundle exec sidekiq"
    end tell

    tell current window
        create tab with default profile
        tell current session
            write text "fedora"
            write text "bundle exec rails server"
        end tell
    end tell

    tell current window
        create tab with default profile
        tell current session
            write text "fedora"
        end tell
    end tell
    
end tell
