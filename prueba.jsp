<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">    
    <link rel="stylesheet" type="text/css" href="css/estilo_prueba.css">
    <title>Bootstrap 4</title>
</head>
<body>
    <section>
		<div class="contenedor-textos">
			<a href="#" class="cta"><img src="img/signo.png" width="45"></a>	
		</div>
	
	</section>

  
	<div class="modal-container">
		<div class="modal modal-close">
			<p class ="close">X</p>
			<img src="img/TheAlopeciaCollegeMay.png" alt="">
			<div class="modal-textos">
				<h2>Get premium</h2>
				<p> Aqui tonterias </p>
			</div>
		</div>
	</div>
		<script>
		let cerrar = document.querySelectorAll(".close")[0];
		let abrir = document.querySelectorAll(".cta")[0];
		let modal = document.querySelectorAll(".modal")[0];
		let modalC = document.querySelectorAll(".modal-container")[0];
		
		abrir.addEventListener("click", function(e){
			e.preventDefault();
			modalC.style.opacity = "1";
			modalC.style.visibility = "visible";
			modal.classList.toggle("modal-close");
		});
		
		cerrar.addEventListener("click", function(){
			modal.classList.toggle("modal-close");
			setTimeout(function(){
				modalC.style.opacity = "0";
				modalC.style.visibility = "hidden";
			},650)
		});
		
		window.addEventListener("click",function(e){
			console.log(e.target)
			if(e.target == modalC){
				modal.classList.toggle("modal-close");
				setTimeout(function(){
					modalC.style.opacity = "0";
					modalC.style.visibility = "hidden";
				},650)
			}
			
		});
		
	</script>	
</body>
</html>