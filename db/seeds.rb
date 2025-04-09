50.times do |i|
  Movie.create!(
    name: "Filme #{i + 1}",
    gender: [ "Ação", "Comédia", "Drama" ].sample,
    status: [ "Visto", "Não Visto" ].sample,
    assessment: rand(1..5),
    comment: "Comentário do filme #{i + 1}"
  )
end

50.times do |i|
  Serie.create!(
    name: "Série #{i + 1}",
    gender: [ "Ação", "Comédia", "Drama" ].sample,
    status: [ "Visto", "Não Visto" ].sample,
    assessment: rand(1..5),
    comment: "Comentário da série #{i + 1}"
  )
end

50.times do |i|
  Game.create!(
    name: "Jogo #{i + 1}",
    platform: [ "PC", "Mega Drive", "Super Nintendo" ].sample,
    gender: [ "Corrida", "RPG", "Arcade" ].sample,
    status: [ "Zerado", "Jogando", "Dessistido" ].sample,
    difficulty: [ "Fácil", "Médio", "Difícil" ].sample,
    assessment: rand(1..5),
    comment: "Comentário do jogo #{i + 1}"
  )
end
