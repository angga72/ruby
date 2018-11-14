require "application_system_test_case"

class MahasiswasTest < ApplicationSystemTestCase
  setup do
    @mahasiswa = mahasiswas(:one)
  end

  test "visiting the index" do
    visit mahasiswas_url
    assert_selector "h1", text: "Mahasiswas"
  end

  test "creating a Mahasiswa" do
    visit mahasiswas_url
    click_on "New Mahasiswa"

    fill_in "Alamat", with: @mahasiswa.alamat
    fill_in "Nama", with: @mahasiswa.nama
    fill_in "Tanggal", with: @mahasiswa.tanggal
    click_on "Create Mahasiswa"

    assert_text "Mahasiswa was successfully created"
    click_on "Back"
  end

  test "updating a Mahasiswa" do
    visit mahasiswas_url
    click_on "Edit", match: :first

    fill_in "Alamat", with: @mahasiswa.alamat
    fill_in "Nama", with: @mahasiswa.nama
    fill_in "Tanggal", with: @mahasiswa.tanggal
    click_on "Update Mahasiswa"

    assert_text "Mahasiswa was successfully updated"
    click_on "Back"
  end

  test "destroying a Mahasiswa" do
    visit mahasiswas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mahasiswa was successfully destroyed"
  end
end
