module Helpers

  @@languages = { "English" => "English", "Spanish" => "Español", "Japanese" =>
    "日本語", "Russian" => "русский язык", "French" => "Français", "Italian" =>
    "Italiano", "German" => "Deutsch", "Klingon" => "Tlhlngan",
    "Chinese" => "中国", "Vinese" => "Vinese", "Yinese" => "Yinese"
  }

  def language_key( english_name ) 
    @@languages[english_name]
  end

end
