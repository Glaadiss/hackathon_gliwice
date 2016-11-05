# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

['Ruby dev', 'Php dev', 'JS DEV'].each {|d| Job.create(name: d)}
Company.create( name: 'Starred', nip: '32131', map: '12331 123123', address: 'ul janusza', description: 'qweew')
Recrutation.create!( title: 'cos tam co', dependency: ' qwe qe', job_id: Job.first.id, company_id: Company.first.id )
User.create(email: 'qwe@gmail.com', firstname:'qwe', lastname: 'zaq', role: 0, password: '123456' )
User.create(email: 'ade@gmail.com', firstname:'qwe', lastname: 'zaq', role: 1, password: '123456', company_id: Company.first.id )
