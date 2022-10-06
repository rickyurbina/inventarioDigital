<div class="page-header">
	<h4 class="page-title">Lista de Socios</h4>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="#">Administración de Socios</a></li>
		<li class="breadcrumb-item active" aria-current="page">List</li>
	</ol>
</div>

<div class="col-md-12 col-lg-12">
	<div class="card">
		<div class="card-header">
			<div class="card-title">Socios Registrados</div>

		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table id="example2" class="hover table-bordered border-top-0 border-bottom-0" style="text-align: center;">
					<thead>
						<td>Nombre</td>
						<td>Membresía</td>
						<td>Teléfono</td>
						<td>Fecha Registro</td>
						<td>Fecha Nacimiento</td>
						<td>Opciones</td>
					</thead>
					<tbody>
						<?php
							$lista = new socios();
							$lista -> ctrListaSocios();
							$lista -> ctrBorrarSocio();
						?>
						
					</tbody>
					<tfoot>
						<tr>
							<th>Nombre</th>
							<th>Membresía</th>
							<th>Teléfono</th>
							<th>Fecha Registro</th>
							<th>Fecha Nacimiento</th>
							<th>Opciones</th>
						</tr>
					</tfoot>
				</table>

			</div>
		</div>
	</div>
</div>