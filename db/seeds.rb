# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Sampledb.create(:name => 'taro', :age => 20)
Sampledb.create(:name => 'jiro', :age => 25)
Sampledb.create(:name => 'hanako', :age => 30)
# サンプルデータ(BookRentalStatus)
BookRentalStatus.create(:bookId => 1, :userId => 1, :status => 1, :lentFrom => '2016-12-01', :scheduledLentTo => '2017-01-01', :lentTo => '2017-01-01')
BookRentalStatus.create(:bookId => 2, :userId => 2, :status => 2, :lentFrom => '2016-12-01', :scheduledLentTo => '2017-01-01', :lentTo => '2017-01-01')
BookRentalStatus.create(:bookId => 3, :userId => 3, :status => 3, :lentFrom => '2016-12-01', :scheduledLentTo => '2017-01-01', :lentTo => '2017-01-01')
