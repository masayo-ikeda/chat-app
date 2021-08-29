FactoryBot.define do
  factory :user do
    name {Faker::Name.last_name}
    email {Faker::Internet.free_email}
    password = Faker::Internet.password(min_length: 6)
    password {password}
    password_confirmation {password}
  end
end

#Faker
#毎回違うデータを作ってくれる

# チャット機能が動いているかのテストをする
# user1 = FactoryBot.create(:user)
# user2 = FactoryBot.create(:user)
# emailにFakerを使っていなければuser2が登録できない