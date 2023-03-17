// Actividades seleccionadas en el calendario cambiar estilo y añadir en array
let activitat_fira_id = new Array();
let activitat_fira_id_activitat = new Array();
let activitat_fira_activitat_nom = new Array();
let hiddenPanel_contenido = document.getElementById('hiddenPanel_contenido');
let activitats = document.querySelectorAll('[name="activitats"]');
let activitats_obligatoria = document.getElementById('activitats_obligatoria');
activitats.forEach(function (elem) {
    elem.addEventListener('change', function (e) {
        if (e.target.checked) {
            if (!activitat_fira_id_activitat.includes(elem.dataset.activitat_fira_id_activitat) && activitat_fira_id_activitat.length < 4) {
                activitat_fira_id.push(elem.dataset.activitat_fira_id);
                activitat_fira_id_activitat.push(elem.dataset.activitat_fira_id_activitat);
                activitat_fira_activitat_nom.push(elem.dataset.activitat_fira_activitat_nom);
                elem.parentNode.classList.remove('divcheckboxNoSelect');
                elem.parentNode.classList.add('divcheckboxSelect');
            } else {
                elem.checked = false;
            }
            activitats_obligatoria.className = 'divcheckboxSelect';
            hiddenPanel_contenido.innerHTML = activitat_fira_activitat_nom;
        } else {
            let index = activitat_fira_id.indexOf(elem.dataset.activitat_fira_id);
            if (index !== -1) {
                activitat_fira_id.splice(index, 1);
                activitat_fira_id_activitat.splice(index, 1);
                activitat_fira_activitat_nom.splice(index, 1);
                elem.parentNode.classList.remove('divcheckboxSelect');
                elem.parentNode.classList.add('divcheckboxNoSelect');
            }
            if (activitat_fira_id_activitat.length < 1) {
                activitats_obligatoria.className = 'divcheckboxNoSelect';
            }
            hiddenPanel_contenido.innerHTML = activitat_fira_activitat_nom;
        }
    });
});
//* Actividades seleccionadas en el calendario cambiar estilo y añadir en array

// Panel
var speed = 300;
$('#close-bar').on('click', function () {

    var $$ = $(this),
        panelWidth = $('#hiddenPanel').outerWidth();

    if ($$.is('.myButton')) {
        $('#hiddenPanel').animate({ right: 0 }, speed);
        $$.removeClass('myButton')
    } else {
        $('#hiddenPanel').animate({ right: -panelWidth }, speed);
        $$.addClass('myButton')
    }

});
//* Panel
