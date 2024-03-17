# git 명령어를 위한 범용 함수
gitCommit() {
    if [[ -z "$2" ]]; then
        echo "⚠️  경고: 커밋 메시지가 필요합니다. 인자를 제공해주세요."
    else
        git add . && git commit -m "$1: $2"
    fi
}

# git alias 설정
alias gitFeat='gitCommit "⭐ feat"'
alias gitChore='gitCommit "⚙️ chore"'
alias gitFix='gitCommit "🐞 fix"'
alias gitDocs='gitCommit "📖 docs"'
alias gitStyle='gitCommit "💅 style"'
alias gitRefactor='gitCommit "♻️ refactor"'
alias gitTest='gitCommit "🚦 test"'
alias gitCI='gitCommit "🚀 CI"'
alias gitRelease='gitCommit "🔖 release"'
alias gitInit='gitCommit "🎉 init"'
alias gitConfig='gitCommit "🛠️  config"'
alias gitRevert='gitCommit "🦔 revert"'
