# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def year_list
    # 本日Dateオブジェクトを作成する
    now_year = Time.now.year
    now_month = Time.now.month
    now_day = Time.now.day
    now_date = Date.new(now_year, now_month, now_day)

    # 年の開始と終了を決める
    start_year = now_date.year
    end_year = (now_date >> 60).year
    year_list = Array.new

    # 初期値代入
    year_list << [start_year.to_s, start_year.to_s]

    # 開始日から終了日までの年リストを作成
    until start_year > end_year - 1
      i = (start_year.next).to_s
      year_list << [i, i]
      start_year = start_year + 1
    end
    return year_list
  end
end
