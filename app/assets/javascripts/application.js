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

    $('#myTable').DataTable({
        //"responsive": true,
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
        },
        responsive: {
        //breakpoints: [
        //    { name: 'desktop', width: 480 }]
        }
    });


    $('#teste').DataTable( {
        responsive: {
            details: {
                renderer: function ( api, rowIdx ) {
                    // Select hidden columns for the given row
                    var data = api.cells( rowIdx, ':hidden' ).eq(0).map( function ( cell ) {
                        var header = $( api.column( cell.column ).header() );

                        return '<tr>'+
                                '<td>'+
                                    header.text()+':'+
                                '</td> '+
                                '<td>'+
                                    api.cell( cell ).data()+
                                '</td>'+
                            '</tr>';
                    } ).toArray().join('');

                    return data ?
                        $('<table/>').append( data ) :
                        false;
                }
            }
        }
    } );

    } );



/* Formating function for row details */
function fnFormatDetails (oTable, nTr )
{
    var aData = oTable.fnGetData( nTr );
    var sOut = '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">';
    sOut += '<tr><td>Rendering engine:</td><td>' +aData[10]+ '</td></tr>';
    sOut += '<tr><td>Link to source:</td><td>Could provide a link here</td></tr>';
    sOut += '<tr><td>Extra info:</td><td>And any further details here (images etc)</td></tr>';
    sOut += '</table>';

    return sOut;
}

$(document).ready(function() {




    /*
     * Insert a 'details' column to the table
     */
    var nCloneTh = document.createElement( 'th' );
    var nCloneTd = document.createElement( 'td' );
    nCloneTd.innerHTML = '<img src="../examples_support/details_open.png">';
    nCloneTd.className = "center";

    $('#example thead tr').each( function () {
        this.insertBefore( nCloneTh, this.childNodes[0] );
    } );

    $('#example tbody tr').each( function () {
        this.insertBefore(  nCloneTd.cloneNode( true ), this.childNodes[0] );
    } );

    /*
     * Initialse DataTables, with no sorting on the 'details' column
     */
    var oTable = $('#example').dataTable( {
        "aoColumnDefs": [
            { "bSortable": false, "aTargets": [ 0 ] },{ "bVisible": false, "aTargets": [10] }
        ],
        "aaSorting": [[1, 'asc']]

    });

    /* Add event listener for opening and closing details
     * Note that the indicator for showing which row is open is not controlled by DataTables,
     * rather it is done here
     */

      $('#example tbody td').on('click', 'img' ,function () {

        var nTr = $(this).parents('tr')[0];
        if ( oTable.fnIsOpen(nTr) )
        {
            /* This row is already open - close it */
            this.src = "../examples_support/details_open.png";
            oTable.fnClose( nTr );
        }
        else
        {
            /* Open this row */
            this.src = "../examples_support/details_close.png";
            oTable.fnOpen( nTr, fnFormatDetails(oTable, nTr), 'details' );
        }
    } );
} );






});

