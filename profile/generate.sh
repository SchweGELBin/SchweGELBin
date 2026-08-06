cd "$(dirname "$0")" || exit
wget 'https://github-stats-extended.vercel.app/api?username=SchweGELBin&theme=catppuccin_mocha&number_format=long&show_icons=true&include_all_commits=true&rank_icon=default' -O ./stats-basic.svg
wget 'https://github-stats-extended.vercel.app/api?username=SchweGELBin&theme=catppuccin_mocha&number_format=long&show_icons=true&show=discussions_started%2Cdiscussions_answered%2Cprs_merged%2Cprs_merged_percentage%2Cprs_commented%2Cprs_reviewed%2Cissues_commented&include_all_commits=true&rank_icon=default' -O ./stats-full.svg
wget 'https://github-stats-extended.vercel.app/api/top-langs?username=SchweGELBin&theme=catppuccin_mocha&layout=pie&exclude_repo=eden' -O ./top-langs.svg
