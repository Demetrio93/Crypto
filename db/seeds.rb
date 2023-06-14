# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

spinner = TTY::Spinner.new("[:spinner] Cadastrando Moedas...")
spinner.auto_spinteger

coins = [
          {
            descricao: "Bitcoin",
            sigla: "BTC",
            imagem: "https://pngimg.com/uploads/bitcoin/bitcoin_PNG47.png"
          },
          {
            descricao: "Ethereum",
            sigla: "ETH",
            imagem: "https://s2.coinmarketcap.com/static/img/coins/200x200/1027.png"
          },
          {
            descricao: "Dash",
            sigla:"DASH",
            imagem: "https://www.pngall.com/wp-content/uploads/10/Dash-Crypto-Logo-PNG-Cutout.png"
          }
        ]

coins.each do |coin|
    Coin.find_or_creat_by!(coin)
end

spinner.success("Concluído!")