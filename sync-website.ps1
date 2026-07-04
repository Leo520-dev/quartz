$vault = 'D:\Obsidian Vault'
$site = 'D:\quartz-site\content'
Copy-Item "$vault\*" $site -Recurse -Force
cd D:\quartz-site
git add -A
git commit -m "auto sync" --allow-empty
git push
Write-Host "✅ 网站已更新！ https://Leo520-dev.github.io/quartz/"
