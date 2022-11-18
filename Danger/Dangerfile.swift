import Danger 
let danger = Danger()

let pr = danger.github.pullRequest
let changedLineCount = (pr.additions ?? 0) + (pr.deletions ?? 0)
if changedLineCount > 1 {
    danger.warn("変更量が1行を超えています。PRを分離してください")
}

