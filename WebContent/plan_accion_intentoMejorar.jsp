<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


	<div class="Contenedor">
		<center>
			<h1>Plan de Accion del Semestre II de 2018</h1>
		</center>
		<!-- Inicio Html encargado de la parte da las Lineas de Investigacion con sus respectivos proyectos-->
		<div class="container-fluid"
			style="box-shadow: 0px 0px 5px 1px black; margin: 1%; padding-bottom: 1%;">



			<h2>Lineas de investigacion</h2>
			<button class="btn btn-danger">
				<a href="agregarLinea.jsp"
					style="color: white; text-decoration: none;">Agregar linea de
					Investigacion </a>
			</button>

			<c:forEach items="${lineasDeInvestigacion}" var="item">

				<!-- Inicio HTML encargado a la linea de investigacion, por cada linea de investigacion se debe repetir este fragmento de codigo-->
				<div class="accordion">
					<button class="ufps-btn-accordion" style="">${item.lineaInvesrigacion}</button>
					<div class="ufps-accordion-panel"
						style="box-shadow: 0px 0px 5px 1px black;">
						<h4 style=" margin: 1%; padding: 1%;">Lider linea de investigacion: ${item.liderLinea}</h4>
				<form name"paraProyectos"  method="post" action="proyectosController">
						<c:forEach items="${item.proyectos}" var="item2">
							<!-- Html encargado para las tablas de los proyectos de respectiva Linea de investigacion-->
							<div
								style="box-shadow: 0px 0px 5px 1px black; margin: 1%; padding: 1%;">
							
							<input  name="linea1" value="${item.idLineaInvesrigacion}"disabled="disabled" style="border: none; background-color: white;">
								
								<h4 > Nombre del proyecto: ${item2.proyecto}</h4>
								<table class="table">
									<thead>
										<th>Objetivo</th>
										<th>Actividades</th>
										<th>Fecha Inicio</th>
										<th>Fecha Terminacion</th>
										<th>Producto</th>
										<th>Progreso</th>
									</thead>
									<tr>
										<td><input type="text" name=""
											placeholder="Obejetivos del proyecto" value="${item2.objetivo}" style="border: none;"></td>
										<td><input type="text" name=""
											placeholder="Actividades del proyecto" value="${item2.proyecto}" style="border: none;"></td>
										<td><input type="date" name=""
											placeholder="Fecha de inicio del proyecto" value="${item2.fechaInicio}" style="border: none;"></td>
										<td><input type="date" name=""
										 placeholder="Fecha de fin del proyecto" value="${item2.fechaFin}" style="border: none;"></td>
										<td><input type="text" name=""
											placeholder="Producto del proyecto" value="${item2.proyecto}" style="border: none;"></td>
										<td><input type="number" value="${item2.porcentaje}" name="quantity" min="1" max="10"
											style="border: none;"></td>
									</tr>

								</table>
			
								


							
							</div>
							<!-- Fin HTML encargado de los Proyectos-->
							

						</c:forEach>
							<button class="btn btn-danger" type="submit">Agregar
										Proyecto
						</button>
						
						</form>
					</div>
				</div>
				<!-- Fin de HTML para la Linea de Ivestigacion-->

			</c:forEach>
			
		</div>
		<!-- Fin HTML encargado de las lineas De investigacion-->





		<!-- Inicio Html encargado de la parte de la participacion en direccion de proyectos-->
		<div class="container-fluid"
			style="box-shadow: 0px 0px 5px 1px black; margin: 1%; padding-bottom: 1%;">



			<h2>Participacion en Direccion de Grado</h2>

			<!-- Inicio HTML encargado a la participacion en direccion de proyectos, por cada participacion en direccion de proyectos se debe repetir este fragmento de codigo-->
			<div class="accordion">
				<button class="ufps-btn-accordion" style="">Tipo de trabajo
					de Grado : Pregrado</button>
				<div class="ufps-accordion-panel"
					style="box-shadow: 0px 0px 5px 1px black;">

					
					<!-- Html encargado de los diferentes trabajos de grado-->
					<div
						style="box-shadow: 0px 0px 5px 1px black; margin: 1%; padding: 1%;">
						<form name"paraProyectos">
						<table class="table">
							<thead>
								<th>Titulo del Proyecto</th>
								<th>Nombre del Estudiante</th>
								<th>Director</th>
								<th>Programa Academico</th>
								<th>Institucion</th>
								<th>Progreso</th>
							</thead>
							<c:forEach items="${direccionPregrado}" var="item">
							<tr>
								<td><input type="text" name="" value="${item.tituloPro}" placeholder="Proyecto #1"
									style="border: none;"></td>
								<td><input type="text" name=""
									placeholder="Pepito perez alda�a" value="${item.nombreEstudiante}" style="border: none;"></td>
								<td><input type="text" name="" value="${item.director}" placeholder="Elsa Pito"
									style="border: none;"></td>
								<td><input type="text" name="" value="${item.programaAca}"
									placeholder="Solo numeros Loca" style="border: none;"></td>
								<td><input type="text" name="" value="${item.institucion}" placeholder="La pacho"
									style="border: none;"></td>
								<td><input type="number" name="quantity" value="${item.porcentaje}" min="1" max="10"
									style="border: none;"></td>
							</tr>
							</c:forEach>
						</table>




						</form>
						
							
						<button class="btn btn-danger">
							<a href="agregarPregrado.jsp"
								style="color: white; text-decoration: none;">Agregar nuevo
								Trabajo de Pregrado</a>
						</button>
					</div>
					<!-- Fin HTML encargado de los Trabajos De Grado-->

				</div>

			</div>
			<!-- Fin de HTML para la Participacion en Direccion de Trabajos de Grado-->


			<!-- Inicio HTML encargado a la participacion en direccion de proyectos, por cada participacion en direccion de proyectos se debe repetir este fragmento de codigo-->
			<div class="accordion">
				<button class="ufps-btn-accordion" style="">Tipo de trabajo
					de Grado : Especializacion</button>
				<div class="ufps-accordion-panel"
					style="box-shadow: 0px 0px 5px 1px black;">

					<!-- Html encargado de los diferentes trabajos de grado-->
					<div
						style="box-shadow: 0px 0px 5px 1px black; margin: 1%; padding: 1%;">
						<form name"paraProyectos">
						<table class="table">
							<thead>
								<th>Titulo del Proyecto</th>
								<th>Nombre del Estudiante</th>
								<th>Director</th>
								<th>Programa Academico</th>
								<th>Institucion</th>
								<th>Progreso</th>
							</thead>	<c:forEach items="${direccionEspecializacion}" var="item">
							<tr>
								<td><input type="text" name="" value="${item.tituloPro}" placeholder="Proyecto #1"
									style="border: none;"></td>
								<td><input type="text" name=""
									placeholder="Pepito perez alda�a" value="${item.nombreEstudiante}" style="border: none;"></td>
								<td><input type="text" name="" value="${item.director}" placeholder="Elsa Pito"
									style="border: none;"></td>
								<td><input type="text" name="" value="${item.programaAca}"
									placeholder="Solo numeros Loca" style="border: none;"></td>
								<td><input type="text" name="" value="${item.institucion}" placeholder="La pacho"
									style="border: none;"></td>
								<td><input type="number" name="quantity" value="${item.porcentaje}" min="1" max="10"
									style="border: none;"></td>
							</tr>
							</c:forEach>

						</table>




						</form>
						<button class="btn btn-danger">
							<a href="agregarEspecializacion.jsp"
								style="color: white; text-decoration: none;">Agregar nuevo
								Trabajo de Especializacion</a>
						</button>
					</div>
					<!-- Fin HTML encargado de los Trabajos De Grado-->


				</div>

			</div>
			<!-- Fin de HTML para la Participacion en Direccion de Trabajos de Grado-->



			<!-- Inicio HTML encargado a la participacion en direccion de proyectos, por cada participacion en direccion de proyectos se debe repetir este fragmento de codigo-->
			<div class="accordion">
				<button class="ufps-btn-accordion" style="">Tipo de trabajo
					de Grado : Maestria</button>
				<div class="ufps-accordion-panel"
					style="box-shadow: 0px 0px 5px 1px black;">

					<!-- Html encargado de los diferentes trabajos de grado-->
					<div
						style="box-shadow: 0px 0px 5px 1px black; margin: 1%; padding: 1%;">
						<form name"paraProyectos">
						<table class="table">
							<thead>
								<th>Titulo del Proyecto</th>
								<th>Nombre del Estudiante</th>
								<th>Director</th>
								<th>Programa Academico</th>
								<th>Institucion</th>
								<th>Progreso</th>
							</thead>	<c:forEach items="${direccionMaestria}" var="item">
							<tr>
								<td><input type="text" name="" value="${item.tituloPro}" placeholder="Proyecto #1"
									style="border: none;"></td>
								<td><input type="text" name=""
									placeholder="Pepito perez alda�a" value="${item.nombreEstudiante}" style="border: none;"></td>
								<td><input type="text" name="" value="${item.director}" placeholder="Elsa Pito"
									style="border: none;"></td>
								<td><input type="text" name="" value="${item.programaAca}"
									placeholder="Solo numeros Loca" style="border: none;"></td>
								<td><input type="text" name="" value="${item.institucion}" placeholder="La pacho"
									style="border: none;"></td>
								<td><input type="number" name="quantity" value="${item.porcentaje}" min="1" max="10"
									style="border: none;"></td>
							</tr>
							</c:forEach>
						</table>



						</form>
						<button class="btn btn-danger">
							<a href="agregarMaestria.jsp"
								style="color: white; text-decoration: none;">Agregar nuevo
								Trabajo de Maestria</a>
						</button>
					</div>
					<!-- Fin HTML encargado de los Trabajos De Grado-->

				</div>

			</div>
			<!-- Fin de HTML para la Participacion en Direccion de Trabajos de Grado-->

			<!-- Inicio HTML encargado a la participacion en direccion de proyectos, por cada participacion en direccion de proyectos se debe repetir este fragmento de codigo-->
			<div class="accordion">
				<button class="ufps-btn-accordion" style="">Tipo de trabajo
					de Grado : Doctorado</button>
				<div class="ufps-accordion-panel"
					style="box-shadow: 0px 0px 5px 1px black;">

					<!-- Html encargado de los diferentes trabajos de grado-->
					<div
						style="box-shadow: 0px 0px 5px 1px black; margin: 1%; padding: 1%;">
						<form name"paraProyectos">
						<table class="table">
							<thead>
								<th>Titulo del Proyecto</th>
								<th>Nombre del Estudiante</th>
								<th>Director</th>
								<th>Programa Academico</th>
								<th>Institucion</th>
								<th>Progreso</th>
							</thead>
								<c:forEach items="${direccionDoctorado}" var="item">
							<tr>
								<td><input type="text" name="" value="${item.tituloPro}" placeholder="Proyecto #1"
									style="border: none;"></td>
								<td><input type="text" name=""
									placeholder="Pepito perez alda�a" value="${item.nombreEstudiante}" style="border: none;"></td>
								<td><input type="text" name="" value="${item.director}" placeholder="Elsa Pito"
									style="border: none;"></td>
								<td><input type="text" name="" value="${item.programaAca}"
									placeholder="Solo numeros Loca" style="border: none;"></td>
								<td><input type="text" name="" value="${item.institucion}" placeholder="La pacho"
									style="border: none;"></td>
								<td><input type="number" name="quantity" value="${item.porcentaje}" min="1" max="10"
									style="border: none;"></td>
							</tr>
							</c:forEach>
						</table>

						</form>
						<button class="btn btn-danger">
							<a href="agregarDoctorado.jsp"
								style="color: white; text-decoration: none;">Agregar nuevo
								Trabajo de Doctorado</a>
						</button>
					</div>
					<!-- Fin HTML encargado de los Trabajos De Grado-->
				</div>
				<!-- Fin de HTML para la Participacion en Direccion de Trabajos de Grado-->
			</div>

		</div>
		<!-- Fin HTML encargado de las Participaciones en Direccion de Trabajos de Grado-->




		<!-- Inicio Html encargado de la parte de Organizaci�n de Eventos de Investigaci�n-->
		<div class="container-fluid"
			style="box-shadow: 0px 0px 5px 1px black; margin: 1%; padding-bottom: 1%;">



			<h2>Organizacion de Eventos de Investigacion</h2>

			<!-- Inicio HTML encargado a la Organizaci�n de Eventos de Investigaci�n, por cada participacion en direccion de Evento se debe repetir este fragmento de codigo-->
			<div class="accordion">
				<button class="ufps-btn-accordion" style="">Eventos</button>
				<div class="ufps-accordion-panel"
					style="box-shadow: 0px 0px 5px 1px black;">

					<!-- Html encargado de los diferentes Eventos de grado-->
					<div
						style="box-shadow: 0px 0px 5px 1px black; margin: 1%; padding: 1%;">
						<form name"paraProyectos">
						<table class="table">
							<thead>
								<th>Nombre de Evento</th>
								<th>Caracter de Evento</th>
								<th>Fecha de Realizacion</th>
								<th>Responsable</th>
								<th>Institucion Promotora</th>
								<th>Entidades Participantes</th>
							</thead>
							<c:forEach items="${eventos}" var="item">
							<tr>
								<td><input type="text" name="" value="${item.nombre}" placeholder="Proyecto #1"
									style="border: none;"></td>
								<td><input type="text" name="" value="${item.caracter}"
									placeholder="Pepito perez alda�a" style="border: none;"></td>
								<td><input type="date" name="" value="${item.fecha}" style="border: none;"></td>
								<td><input type="text" name="" value="${item.responzable}"
									placeholder="Solo numeros Loca" style="border: none;"></td>
								<td><input type="text" name="" value="${item.institucion}" placeholder=""
									style="border: none;"></td>
								<td><input type="number" name="" value="${item.participantes}" placeholder="claro"
									style="border: none;"></td>
							</tr>
							</c:forEach>
						</table>




						</form>
						<button class="btn btn-danger">
							<a href="agregarEvento.jsp"
								style="color: white; text-decoration: none;">Agregar nuevo
								Evento de Investigacion</a>
						</button>
					</div>
					<!-- Fin HTML encargado de los Eventos -->

				</div>

			</div>
			<!-- Fin de HTML para la Organizaci�n de Eventos de Investigaci�n-->



			<!-- Fin de HTML para la Organizaci�n de Eventos de Investigaci�n-->
		</div>


		<!-- Fin HTML encargado de laOrganizaci�n de Eventos de Investigaci�n-->

		<!-- Inicio Html encargado de la parte de otras actividades de Investigaci�n-->
		<div class="container-fluid"
			style="box-shadow: 0px 0px 5px 1px black; margin: 1%; padding-bottom: 1%;">



			<h2>Otras Actividades de investigacion</h2>

			<!-- Inicio HTML encargado a la Otras Actividades de investigacion, por cada Actividad de investigacion se debe repetir este fragmento de codigo-->
			<div class="accordion">
				<button class="ufps-btn-accordion" style="">Actividades</button>
				<div class="ufps-accordion-panel"
					style="box-shadow: 0px 0px 5px 1px black;">

					<!-- Html encargado de los diferentes Actividades de Investigaci�n-->
					<div
						style="box-shadow: 0px 0px 5px 1px black; margin: 1%; padding: 1%;">
						<form name"paraProyectos">
						<table class="table">
							<thead>
								<th>Nombre</th>
								<th>Responsable</th>
								<th>Fecha de Realizacion</th>
								<th>Producto</th>
							</thead>
							<c:forEach items="${otrasActividades}" var="item">
							<tr>
								<td><input type="text" name="" value="${item.nombre}" placeholder="Proyecto #1"
									style="border: none;"></td>
								<td><input type="text" name="" value="${item.responzable}"
									placeholder="Pepito perez alda�a" style="border: none;"></td>
								<td><input type="date" name="" value="${item.fecha}" style="border: none;"></td>
								<td><input type="text" name="" value="{item.otroproductos.get.nombre}"
									placeholder="Solo numeros Loca" style="border: none;"></td>
							</tr>
							</c:forEach>
						</table>
						



						</form>
						<button class="btn btn-danger">
							<a href="agregarActividad.jsp"
								style="color: white; text-decoration: none;">Agregar nueva
								Actividad de Investigaci�n</a>
						</button>
					</div>
					<!-- Fin HTML encargado de los ACtividades -->

				</div>

			</div>
			<!-- Fin de HTML para la Actividades de Investigaci�n-->



			<!-- Fin de HTML para la Actividades de Investigaci�n-->
		</div>






	</div>


