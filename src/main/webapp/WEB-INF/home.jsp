<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- bootstrap -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<!-- bootstrap #-->

<!-- dataTablecss -->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.10.21/b-1.6.2/b-html5-1.6.2/b-print-1.6.2/datatables.min.css"/>
 
<!-- dataTablecss -->

</head>
<body>

	<div class="container my-5">
		<div class="row">
			<div class="col-2"></div>
			<div class="col-8">
				<h1>Tabla de citas</h1>
				<hr />

				<table class="table" id="datatable" width="100%" cellspacing="0">
					<thead>
						<tr>
							<th>type</th>
							<th>id</th>
							<th>quote</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>type</th>
							<th>id</th>
							<th>quote</th>
						</tr>
					</tfoot>
				</table>

			</div>
			<div class="col-2"></div>
		</div>
	</div>



	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>

	<!-- dataTable a español -->
	<script>
		const cdn = "//cdn.datatables.net/plug-ins/1.10.21/i18n/Spanish.json"
		$(document).ready(function() {
			$('#datatable').DataTable({
				dom: 'Bfrtip',
		        buttons: [
		            'copy', 'csv', 'excel', 'pdf', 'print'
		        ],
				"language" : {
					"url" : cdn
				}
			});
		});
	</script>
	<!-- dataTable a español #-->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.10.21/b-1.6.2/b-html5-1.6.2/b-print-1.6.2/datatables.min.js"></script>
	



</body>
</html>















