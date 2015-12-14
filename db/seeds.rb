# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# create one default user
User.create(email: 'email@email.com', password: 'password')

# create some articles
Article.create(title: 'Lorem ipusm', text: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur,
  ea est. Ducimus molestiae nam sint. Accusantium asperiores aut, eos et excepturi laboriosam laudantium,
  mollitia nam odit officiis perferendis quia velit?')
Article.create(title: 'A aspernatur', text: 'A aspernatur beatae blanditiis, cumque dignissimos est eveniet iusto
  nam nobis numquam odit ullam ut velit veniam voluptates. Assumenda consectetur dolore hic, iusto laboriosam magni
  nisi numquam repellat saepe sunt.')