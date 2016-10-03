$(document).on('ready page:load', function () {

// Open order page by click on table row
    $('tr[data-href]').on("click", function () {
        document.location = $(this).data('href');
    });
});
