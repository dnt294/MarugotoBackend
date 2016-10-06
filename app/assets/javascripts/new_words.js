function filter_by_lesson() {
    $("#form_filter_lesson").submit();
}

function search() {

}

function display_forms_tags() {
    var word_type = $('#new_word_word_type').val();
    if (word_type === 'Adj')
        $('.new-word.adj-form').show();
    else
        $('.new-word.adj-form').hide();
    if (word_type === 'Verb')
        $('.new-word.verb-form').show();
    else
        $('.new-word.verb-form').hide();
}

$(document).ready(function() {

    $(document).on('keydown', function(e) {
        if (e.shiftKey && e.which == 70) {
            $('.search.words').focus();
        }
    })
})