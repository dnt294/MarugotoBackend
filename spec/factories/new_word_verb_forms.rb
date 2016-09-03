FactoryGirl.define do
  factory :new_word_verb_form, class: 'NewWord::VerbForm' do
    verb_type 1
    dictionary_form "MyString"
    nai_form "MyString"
    te_form "MyString"
  end
end
