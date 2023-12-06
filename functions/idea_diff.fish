function idea_diff -d 'idea diff'
    switch (uname)
        case Linux
            ~/.local/share/JetBrains/Toolbox/apps/intellij-idea-community-edition/bin/idea.sh diff $argv
        case Darwin
            ~/Library/Application\ Support/JetBrains/Toolbox/apps/IDEA-C/ch-0/*/IntelliJ\ IDEA\ CE.app/Contents/MacOS/idea diff $argv
        case "*"
            echo "unknown os"
    end
end
