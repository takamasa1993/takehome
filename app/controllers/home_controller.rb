class HomeController < ApplicationController
  # トップページのアクション
  def index
    @streamer = fetch_streamer_info
    @schedule = fetch_stream_schedule
    @clips = fetch_latest_clips
  end

  private

  # 配信者の情報を取得するメソッド
  def fetch_streamer_info
    # 配信者の情報を取得するためのロジック
    # 例: Twitch APIを使って配信者のデータを取得
    {
      name: "John Doe",
      bio: "配信者の簡単な紹介文がここに入ります。",
    }
  end

  # 配信スケジュールを取得するメソッド
  def fetch_stream_schedule
    # 配信スケジュールを取得するためのロジック
    # 例: Twitch APIを使って次回配信や過去の配信データを取得
    [
      { time: "2024年8月15日 18:00", title: "次回配信" },
      { time: "2024年8月12日 20:00", title: "過去の配信1" },
      { time: "2024年8月10日 19:00", title: "過去の配信2" }
    ]
  end

  # 最新クリップを取得するメソッド
  def fetch_latest_clips
    # クリップを取得するためのロジック
    # 例: Twitch APIを使ってクリップデータを取得
    [
      { title: "クリップ1", url: "https://example.com/clip1" },
      { title: "クリップ2", url: "https://example.com/clip2" }
    ]
  end
end