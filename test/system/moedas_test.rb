require "application_system_test_case"

class MoedasTest < ApplicationSystemTestCase
  setup do
    @moeda = moedas(:one)
  end

  test "visiting the index" do
    visit moedas_url
    assert_selector "h1", text: "Moedas"
  end

  test "should create moeda" do
    visit moedas_url
    click_on "New moeda"

    fill_in "Descricao", with: @moeda.descricao
    fill_in "Imagem", with: @moeda.imagem
    fill_in "Sigla", with: @moeda.sigla
    click_on "Create Moeda"

    assert_text "Moeda was successfully created"
    click_on "Back"
  end

  test "should update Moeda" do
    visit moeda_url(@moeda)
    click_on "Edit this moeda", match: :first

    fill_in "Descricao", with: @moeda.descricao
    fill_in "Imagem", with: @moeda.imagem
    fill_in "Sigla", with: @moeda.sigla
    click_on "Update Moeda"

    assert_text "Moeda was successfully updated"
    click_on "Back"
  end

  test "should destroy Moeda" do
    visit moeda_url(@moeda)
    click_on "Destroy this moeda", match: :first

    assert_text "Moeda was successfully destroyed"
  end
end
