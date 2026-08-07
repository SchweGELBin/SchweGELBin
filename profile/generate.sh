cd "$(dirname "$0")" || exit

api='https://github-stats-extended.vercel.app/api'
username='SchweGELBin'
themes=('catppuccin_latte' 'catppuccin_mocha')

stats_basic="$api?username=$username&number_format=long&show_icons=true&include_all_commits=true&rank_icon=default"
stats_full="$stats_basic&show=discussions_started%2Cdiscussions_answered%2Cprs_merged%2Cprs_merged_percentage%2Cprs_commented%2Cprs_reviewed%2Cissues_commented"
top_langs="$api/top-langs?username=$username&layout=pie&exclude_repo=eden"

for theme in "${themes[@]}"; do
  mkdir -p "$theme"
  wget "$stats_basic&theme=$theme" -O "./$theme/stats-basic.svg"
  wget "$stats_full&theme=$theme" -O "./$theme/stats-full.svg"
  wget "$top_langs&theme=$theme" -O "./$theme/top-langs.svg"
done
