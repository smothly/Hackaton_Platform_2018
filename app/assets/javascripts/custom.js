/* global $ */

$('show.html.erb').on('show.bs.modal', function (e) {
    $(this).find('.modal-content').load(e.relatedTarget.href);
});

$('show.html.erb').ready(function(){
    $('[data-toggle="tooltip"]').tooltip({
        container: 'body'
    }); 
});