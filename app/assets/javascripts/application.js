// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .
$(document).on('ready page:load',function(){
  $(function() {

    $('table.display').DataTable({
        "responsive": true,
        "language": {
            "info": "Exibindo página _PAGE_ de _PAGES_" ,
            "infoEmpty": "Nenhum registro encontrado",
            "infoFiltered": " ( filtrados do total de _MAX_ registros)",
            "emptyTable": "Não há nenhum registro na tabela",
            "loadingRecords": "Aguarde - carregando...",
            "lengthMenu": "Exibindo _MENU_ registros",
            "paginate": {
                "first": "Primeira página",
                "last": "Última página",
                "next": "Próxima",
                "previous": "Anterior"
                }
        }
      });



    $('#example').DataTable( {
        responsive: {
            details: {
                type: 'column',
                target: -1
            }
        },
        columnDefs: [ {
            className: 'control',
            orderable: false,
            targets:   -1
        } ]
    } );








    } );


});

