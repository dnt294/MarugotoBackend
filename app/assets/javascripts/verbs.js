function first_type_onclick() {
    $('#first-type-verbs').show();
    $('#second-type-verbs').hide();
    $('#first-type-toggle').addClass('active');
    $('#second-type-toggle').removeClass('active');
}

function second_type_onclick() {
    $('#first-type-verbs').hide();
    $('#second-type-verbs').show();
    $('#first-type-toggle').removeClass('active');
    $('#second-type-toggle').addClass('active');
}