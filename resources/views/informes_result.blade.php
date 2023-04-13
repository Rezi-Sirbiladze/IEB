<!DOCTYPE html>
<html lang="en">

<style>
    .truncate {
        max-width: 500px;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
    }
</style>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.3/css/jquery.dataTables.min.css" />
    <link rel="stylesheet" type="text/css"
        href="https://cdn.datatables.net/buttons/2.3.5/css/buttons.dataTables.min.css" />
    <link href="https://agora.xtec.cat/ins-esport/wp-content/uploads/usu2109/2023/01/Logo-IEB-300x129.png"
        alt="Backend" rel="shortcut icon" type="image/x-icon" />
    <title>IEB | {{ $activitat_fira->activitat->nom }}</title>
</head>

<body style="background-color: aliceblue;">
    <div style="border-radius: 8px; background-color: white; margin: 50px; padding: 10px;">
        <h1>{{ $activitat_fira->activitat->nom }} | {{ $activitat_fira->hora_inici }}</h1>
        <table id="tabla_practicas" class="display nowrap" style="width:100%">
            <thead>
                <tr>
                    <th>nom complet</th>
                    <th>Correu electrònic</th>
                    <th>Valoració</th>
                    <th>Comentari</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($activitat_fira->reserva as $reservas)
                    <tr>
                        <td>{{ $reservas->usuari->name }}</td>
                        <td>{{ $reservas->usuari->email }}</td>
                        <td>{{ $reservas->valoracio }}</td>
                        <td>{{ $reservas->comentari }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.3/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.3.5/js/dataTables.buttons.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.3.5/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.3.5/js/buttons.print.min.js"></script>



    <script>
        $(document).ready(function() {
            $('#tabla_practicas').DataTable({
                dom: 'Bfrtip',
                lengthMenu: [
                    [10, 25, 50, 100, -1],
                    ['10 rows', '25 rows', '50 rows', '100 rows', 'Show all']
                ],
                buttons: [
                    'copy', 'excel', 'pdf', 'print', 'pageLength'
                ],
                columnDefs: [{
                    targets: 3,
                    className: "truncate"
                }],
                createdRow: function(row) {
                    var td = $(row).find(".truncate");
                    td.attr("title", td.html());
                }
            });
        });
    </script>
</body>

</html>
