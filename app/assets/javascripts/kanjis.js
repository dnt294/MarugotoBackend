function filter_by_lesson() {
    $("#form_filter_lesson").submit();
}

function show_preview(input) {

    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function(e) {
            $('.image-hint').attr('src', e.target.result);
        }

        reader.readAsDataURL(input.files[0]);
    }
}