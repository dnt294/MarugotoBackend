require 'test_helper'

class NewWordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @new_word = new_words(:one)
  end

  test "should get index" do
    get new_words_url
    assert_response :success
  end

  test "should get new" do
    get new_new_word_url
    assert_response :success
  end

  test "should create new_word" do
    assert_difference('NewWord.count') do
      post new_words_url, params: { new_word: { kanji_version: @new_word.kanji_version, lesson: @new_word.lesson, meaning: @new_word.meaning, note: @new_word.note, word: @new_word.word } }
    end

    assert_redirected_to new_word_url(NewWord.last)
  end

  test "should show new_word" do
    get new_word_url(@new_word)
    assert_response :success
  end

  test "should get edit" do
    get edit_new_word_url(@new_word)
    assert_response :success
  end

  test "should update new_word" do
    patch new_word_url(@new_word), params: { new_word: { kanji_version: @new_word.kanji_version, lesson: @new_word.lesson, meaning: @new_word.meaning, note: @new_word.note, word: @new_word.word } }
    assert_redirected_to new_word_url(@new_word)
  end

  test "should destroy new_word" do
    assert_difference('NewWord.count', -1) do
      delete new_word_url(@new_word)
    end

    assert_redirected_to new_words_url
  end
end
