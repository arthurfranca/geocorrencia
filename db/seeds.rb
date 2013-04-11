# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Type.create([
             {:description => 'Acidente de Trânsito Sem Vítima'},
             {:description => 'Furto'},
             {:description => 'Pessoa Desaparecida'}
           ])

Hour.create([
             {:description => 'De 00:00 às 00:59'},
             {:description => 'De 01:00 às 01:59'},
             {:description => 'De 02:00 às 02:59'},
             {:description => 'De 03:00 às 03:59'},
             {:description => 'De 04:00 às 04:59'},
             {:description => 'De 05:00 às 05:59'},
             {:description => 'De 06:00 às 06:59'},
             {:description => 'De 07:00 às 07:59'},
             {:description => 'De 08:00 às 08:59'},
             {:description => 'De 09:00 às 09:59'},
             {:description => 'De 10:00 às 10:59'},
             {:description => 'De 11:00 às 11:59'},
             {:description => 'De 12:00 às 12:59'},
             {:description => 'De 13:00 às 13:59'},
             {:description => 'De 14:00 às 14:59'},
             {:description => 'De 15:00 às 15:59'},
             {:description => 'De 16:00 às 16:59'},
             {:description => 'De 17:00 às 17:59'},
             {:description => 'De 18:00 às 18:59'},
             {:description => 'De 19:00 às 19:59'},
             {:description => 'De 20:00 às 20:59'},
             {:description => 'De 21:00 às 21:59'},
             {:description => 'De 22:00 às 22:59'},
             {:description => 'De 23:00 às 23:59'}
            ])

declarant = Declarant.create([
                              { name: 'Arthur' },
                              { name: 'Clarissa' },
                              { name: 'John' },
                              { name: 'Jennifer' },
                              { name: 'Bob' }
                            ])
declarant.each do |value|
  Address.create(
                  :street => 'Av. Presidente Vargas',
                  :declarant_id => value.id
                )
end

for i in 1..25
  Occurrence.create(
                     :lat_lon => 'POINT(#{rand(-22.9296..-22.9356)} #{rand(-43.4681..-43.4741)})',
                     :date => rand(Date.new(1970)..Time.now.to_date),
                     :description => 'Ocorrência adicionada por seed',
                     :type_id => Type.find(rand(1..3)).id,
                     :hour_id => Hour.find(rand(1..24)).id,
                     :declarant_id => Declarant.find(rand(1..5)).id
                   )
end