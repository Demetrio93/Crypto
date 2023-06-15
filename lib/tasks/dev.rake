namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando BD...") { %x(rails db:drop)}
      show_spinner("Criando BD...") { %x(rails db:create)}
      show_spinner("Migrando BD...") { %x(rails db:migrate)}
      show_spinner("Populando BD...") { %x(rails db:seed)}
    else
      puts "Você não está em ambiente de desenvolvimento!"
    end
  end

  desc "Cadastra as moedas"
  task add_coins: :environment do
    show_spinner("Cadastrando Moedas...") do
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
                },
                {
                  descricao: "Iota",
                  sigla:"IOT",
                  imagem: "https://s2.coinmarketcap.com/static/img/coins/200x200/1720.png"
                },
                {
                  descricao: "ZCash",
                  sigla:"ZEC",
                  imagem: "https://www.cryptocompare.com/media/351360/zec.png"
                }
              ]
      coins.each do |coin|
        Moeda.find_or_creat_by!(coin)
      end
    end
  end

  private

  def show_spinner(msg_start, msg_end = "Concluído!")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end
end