function filter_by_lesson() {
    $("#form_filter_lesson").submit();
}

function display_forms_tags() {
    var word_type = $('#new_word_word_type').val();
    if (word_type === 'Adj')
        $('.new-word.adj-form').show()
    else
        $('.new-word.adj-form').hide();
    if (word_type === 'Verb')
        $('.new-word.verb-form').show()
    else
        $('.new-word.verb-form').hide();
}