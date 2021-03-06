# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.new
user1.email = "jsc020111@gmail.com"
user1.first_name = "Jinsu"
user1.last_name = "Choi"
user1.username = "Shiberu"
user1.password = "jajajaja"
user1.password_confirmation = "jajajaja"
user1.save!

user2 = User.new
user2.email = "nuke@gmail.com"
user2.first_name = "JongUn"
user2.last_name = "Kim"
user2.username = "Nuker"
user2.password = "communism"
user2.password_confirmation = "communism"
user2.save!

user3 = User.new
user3.email = "dollar@gmail.com"
user3.first_name = "Bill"
user3.last_name = "Gates"
user3.username = "xXRichdudeXx"
user3.password = "moneyispower"
user3.password_confirmation = "moneyispower"
user3.save!

user4 = User.new
user4.email = "gangnam@gmail.com"
user4.first_name = "PSY"
user4.last_name = "Park"
user4.username = "Oppa"
user4.password = "gangnamstyle"
user4.password_confirmation = "gangnamstyle"
user4.save!

user5 = User.new
user5.email = "keffcat@gmail.com"
user5.first_name = "Kevin"
user5.last_name = "Chen"
user5.username = "keffcat"
user5.password = "shitters"
user5.password_confirmation = "shitters"
user5.save!

user6 = User.new
user6.email = "lejax@gmail.com"
user6.first_name = "Jax"
user6.last_name = "Le"
user6.username = "weaponmaster"
user6.password = "jaxjaxjax"
user6.password_confirmation = "jaxjaxjax"
user6.save!

user7 = User.new
user7.email = "lux@gmail.com"
user7.first_name = "Luxanna"
user7.last_name = "Crownguard"
user7.username = "Light"
user7.password = "deathlaser"
user7.password_confirmation = "deathlaser"
user7.save!

user8 = User.new
user8.email = "wow@gmail.com"
user8.first_name = "Shiba"
user8.last_name = "Inu"
user8.username = "Doge"
user8.password = "verysuch"
user8.password_confirmation = "verysuch"
user8.save!

User.all.each do |user1|
	User.all.each do |user2|
		if user1.eql? user2
			next
		else
			friendship = Friendship.new
			friendship.user_id = user1.id
			friendship.friend_id = user2.id
			friendship.save!
		end
	end
end

boi_rebirth = Game.create(
  name: "The Binding of Isaac: Rebirth", 
  :users => User.all
)
boi_rebirth.save!

halo_mcc = Game.create(
  name: "Halo: The Master Chief Collection", 
  :users => User.where(:username => ['keffcat', 'weaponmaster'])
)
halo_mcc.save!

league = Game.create(
	name: "League of Legends", 
	:users => User.where(:username => ['Shiberu', 'Doge', 'Light'])
)
league.save!

maple = Game.create(
	name: "Maple Story", 
	:users => User.where(:username => ['xXRichdudeXx', 'Oppa', 'Doge', 'Light'])
)
maple.save!

mabinogi = Game.create(
	name: "Mabinogi", 
	:users => User.where(:username => ['Shiberu', 'Oppa', 'xXRichdudeXx'])
)
mabinogi.save!

runescape = Game.create(
	name: "Runescape", 
	:users => User.where(:username => ['xXRichdudeXx', 'Oppa'])
)
runescape.save!