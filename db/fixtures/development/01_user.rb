User.seed do |s|
  s.id    = 1
  s.email = 'hoge@example.com'
  s.name = '田中太郎'
  s.login_id = 'tanaka_taro'
end

User.seed do |s|
  s.id    = 2
  s.email = 'fuga@example.com'
  s.name = '山田花子'
  s.login_id = 'yamada_hanako'
end