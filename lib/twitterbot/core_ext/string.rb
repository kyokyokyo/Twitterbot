#coding: utf-8

class String
  def is_mention?
    match(/^@\w+\s*/)
  end

  def remove_uri
    str = self
    str = str.gsub(%r| / “.+” http://.+$|, '') # はてなからの投稿の記事タイトル
    str = str.gsub(/▸ 本日トップニュースを提供してくれたみなさん：/, '')
    str = str.gsub(/\[.+?\]/, '')             # はてなタグ削除
    str = str.gsub(/(\.?\s*@\w+)+/, '')       # User IDを削除
    str = str.gsub(/(RT|QT)\s*@?\w+.*$/, '')  # RT/QT以降を削除
    str = str.gsub(/https?:\/\/\S+/, '')      # URIを削除
    str = str.gsub(/ +/, ' ').strip
  end
end