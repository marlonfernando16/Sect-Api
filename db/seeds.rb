# 5.times do 
#     Tipo.create({
#         nome: Faker::ProgrammingLanguage.name
#     })
# end

# Curso.create({
#         titulo: Faker::ProgrammingLanguage.name,
#         carga_horaria: Faker::Number.between(from: 1, to: 3),
#         vagas: Faker::Number.between(from: 1, to: 20),
#        tipo_id: 1
# })

# 3.times do 
#     Inscricao.create({
#             nome: Faker::Lorem.sentence,
#             matricula: Faker::Number.leading_zero_number(digits: 10),
#             status: Faker::Boolean.boolean,
#             curso_id: Curso.first.id 
#     })
# end
# cursos
   react = Curso.create({ titulo: "React" , tipo_id: 1})
   view = Curso.create({ titulo: "View", tipo_id: 1 })
   django = Curso.create({ titulo: "Django", tipo_id: 1 })
   rails = Curso.create({ titulo: "Ruby on Rails", tipo_id: 1 })
    
# instrutores
   aaron = Instrutor.create({ nome: "aaron", cursos: [react, view] })
   marlon = Instrutor.create({ nome: "marlon", cursos: [django, rails] })
   john = Instrutor.create({ nome: "john", cursos: [react, rails, view] })
# adicionando instrutores  aos cursos
   react.instrutors << [aaron, john]
   react.save
    
   view.instrutors << [aaron, john]
   view.save
    
   django.instrutors << [marlon]
   django.save
    
   rails.instrutors << [john, marlon]
   rails.save