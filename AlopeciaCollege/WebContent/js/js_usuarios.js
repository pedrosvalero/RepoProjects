	// Alert para eliminar usuarios.
	$('#dtBasicExample').mdbEditor({
	mdbEditor: true
	//headerLength: 5,
	});
	$('.dataTables_length').addClass('bs-select');
	

	// Función Editor.
	$('#dtBasicExample').mdbEditor({
	headerLength: 6,
	evenTextColor: '#000',
	oddTextColor: '#000',
	bgEvenColor: '',
	bgOddColor: '',
	thText: '',
	thBg: '',
	modalEditor: false,
	bubbleEditor: false,
	contentEditor: false,
	rowEditor: false
	});

	// Iconos footer con colores.
			window.addEventListener('load', iniciarf, false);

			function iniciarf() {
			  
			  var face = document.getElementById('face');
			  
			  face.addEventListener('mouseover', colorf, false);
			  face.addEventListener('mouseout', restaurarf, false);
			}
		
			function restaurarf(){
			  var face = document.getElementById('face').src = "img/face.png";
			}
		
			function colorf() {
			  var face = document.getElementById('face').src = "img/face_color.png";
			}


			window.addEventListener('load', iniciart, false);
		
			function iniciart() {
			  
			  var twit = document.getElementById('twit');
			  
			  twit.addEventListener('mouseover', colort, false);
			  twit.addEventListener('mouseout', restaurart, false);
			}
		
			function restaurart(){
			  var twit = document.getElementById('twit').src = "img/twit.png";
			}
		
			function colort() {
			  var twit = document.getElementById('twit').src = "img/twit_color.png";
			  
			}


			window.addEventListener('load', iniciari, false);
		
			function iniciari() {
			  
			  var insta = document.getElementById('insta');
			  
			  insta.addEventListener('mouseover', colori, false);
			  insta.addEventListener('mouseout', restaurari, false);
			}
		
			function restaurari(){
			  var insta = document.getElementById('insta').src = "img/insta.png";
			}
		
			function colori() {
			  var insta = document.getElementById('insta').src = "img/insta_color.png";
			  
			}


			window.addEventListener('load', iniciarw, false);
		
			function iniciarw() {
			  
			  var whats = document.getElementById('whats');
			  
			  whats.addEventListener('mouseover', colorw, false);
			  whats.addEventListener('mouseout', restaurarw, false);
			}
		
			function restaurarw(){
			  var whats = document.getElementById('whats').src = "img/whats.png";
			}
		
			function colorw() {
			  var whats = document.getElementById('whats').src = "img/whats_color.png";
			}


			$(document).ready(function () {
		  $('#dt-all-checkbox').dataTable({
		
		    columnDefs: [{
		      orderable: false,
		      className: 'select-checkbox select-checkbox-all',
		      targets: 0
		    }],
		    select: {
		      style: 'multi',
		      selector: 'td:first-child'
		    }
		  });
			});