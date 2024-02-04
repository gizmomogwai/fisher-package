function idea_diff -d 'idea diff'
    switch (uname)
        case Linux
            ~/.local/share/JetBrains/Toolbox/apps/intellij-idea-community-edition/bin/idea.sh diff $argv
        case Darwin
            ~/Applications/IntelliJ\ IDEA\ Community\ Edition.app/Contents/MacOS/idea diff $argv
        case "*"
            echo "unknown os"
    end
end
