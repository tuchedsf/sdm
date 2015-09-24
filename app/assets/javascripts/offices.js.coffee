# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
$(document).on 'ready page:load', ->
  $ ->
    $('#tbOficios').DataTable
      processing: true
      serverSide: true
      ajax: $('#tbOficios').data('source')
      'aoColumnDefs': [ {
        'bSortable': false
        'aTargets': [ 6 ]
      } ]
      'language':
        'info': 'Exibindo página _PAGE_ de _PAGES_'
        'infoEmpty': 'Nenhum registro encontrado'
        'infoFiltered': ' ( filtrados do total de _MAX_ registros)'
        'emptyTable': 'Não há nenhum registro na tabela'
        'loadingRecords': 'Aguarde - carregando...'
        'lengthMenu': 'Exibindo _MENU_ registros'
        'paginate':
          'first': 'Primeira página'
          'last': 'Última página'
          'next': 'Próxima'
          'previous': 'Anterior'
      responsive: {}
    return
  return
