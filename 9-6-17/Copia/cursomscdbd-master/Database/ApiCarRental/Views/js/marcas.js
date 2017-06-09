$(document).ready(function () {

    function GetMarcas() {
        var urlAPI = 'http://localhost:52673/api/marcas';

        $.get(urlAPI, function (respuesta, estado) {

            console.log(respuesta);
            $('#resultados').html('');
            // COMPRUEBO EL ESTADO DE LA LLAMADA
            if (estado === 'success') {
                // SI LLEGO HASTA AQUÍ QUIERE DECIR

                var relleno = '';

                relleno += '<table border="1">';
                relleno += ' <tr>';
                relleno += '        <td>Id</td>';
                relleno += '        <td>Denominacion</td>';
                relleno += '        <td>Acciones</td>';
                relleno += '   </tr>';
                $.each(respuesta.dataMarcas, function (indice, elemento) {

                    relleno += '   <tr>';
                    relleno += '        <td>' + elemento.id + '</td>';
                    relleno += '        <td>' + elemento.denominacion + '</td>';
                    relleno += '        <td>';
                    relleno += '            <button id="btnEliminar">X</button>';
                    relleno += '            <button id="btnEditar">Editar</button>';
                    relleno += '        <td>';
                    relleno += '   </tr>';                    
                });
                relleno += '</table>';
                $('#resultados').append(relleno);
            }
        });
    }


    $('#resultados').on('click', '#btnEliminar', (function (){
        var idMarca = $(this).attr('data-id');
        var urlAPI = 'http://localhost:52673/api/marcas';
        
        $.ajax({
            url: urlAPI + '/'+ idMarca,
            type: "DELETE",
            success: function (respuesta) {
                GetMarcas();
            },
            error: function (respuesta) {
                console.log(respuesta);
            }
        });
    });

    //A partir de aquí abajo ...no sé

    $('#resultados').on('click', '#btnEditar', function () {
        var idMarca = $(this).attr('data-id');
        var urlAPI = 'http://localhost:52673/api/marcas';
        var dataNuevaMarca = {
            denominacion: $('#txtNuevaMarca').val()
        };

        $.ajax({
            url: urlAPI + '/' + idMarca,
            type: "PUT",
            dataType: 'json',
            data: dataNuevaMarca,
            success: function (respuesta) {
                GetMarcas();
            },
            error: function (respuesta) {
                console.log(respuesta);
            }
        });
    });

    $('#btnAddMarca').click(function () {
        //debugger;
        var nuevaMarca = $('#txtMarcaDenominacion').val();
        var urlAPI = 'http://localhost:52673/api/marcas';

        var dataNuevaMarca = {
            id: 0,
            denominacion: nuevaMarca
        };
        debugger;

        $('#imgLoading').className = '';

        $.ajax({
            url: urlAPI,
            type: "POST",
            dataType: 'json',
            data: dataNuevaMarca,
            success: function (respuesta) {
                GetMarcas();
            },
            error: function (respuesta) {
                console.log(respuesta);
            }
        });
    });

    GetMarcas();

});


//$('#resultados').on('click', '#btnEliminar', (function (){
//    alert('Eliminando !!!!');
//}

//      $('#resultados').on('click','#btnEditar',(function (){
//          alert('Editar !!!!');
//    }