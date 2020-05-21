<div>
	<form action="ophtalmology.form?patientId=${param.patientId}"
		method="post">

		<table class="shadow">
			<thead>
				<tr class="adhere">
					<th>AV OD</th>
					<th>AV OG</th>

				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="text" name="avod" /></td>
					<td><input type="text" name="avog" /></td>
				</tr>
			</tbody>
		</table>
		<br />
		<fieldset>
			<legend>
				<b>Examen Bio-Microscopique</b>
			</legend>
			<table class="shadow">
				<thead>
					<tr class="adhere">
						<th>Paupi&eacute;re</th>
						<th>Conjoctive</th>
						<th>Corn&eacute;e</th>
						<th>Chambre anteri&eacute;ure</th>
						<th>Iris</th>
						<th>Pupille</th>
						<th>Cristallin</th>
						<th>Fond d'oeil</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" name="paupiere" size="10" /></td>
						<td><input type="text" name="conjoctive" size="10" /></td>
						<td><input type="text" name="cornee" size="10" /></td>
						<td><input type="text" name="chambreAnterieure" size="10" /></td>
						<td><input type="text" name="iris" size="10" /></td>
						<td><input type="text" name="pupille" size="10" /></td>
						<td><input type="text" name="christallin" size="10" /></td>
						<td><input type="text" name="fondDoeil" size="10" /></td>
					</tr>
				</tbody>
			</table>
		</fieldset>
		<br />
		<fieldset>
			<legend>
				<b>REFRACTION</b>
			</legend>
			<br />

			<fieldset>
				<legend>
					<b>Vision de loin</b>
				</legend>
				<table class="shadow">
					<thead>
						<tr class="adhere">
							<th>OD sph</th>
							<th>OG sph</th>
							<th>OD Cy</th>
							<th>OG Cyl</th>
							<th>OD Axe</th>
							<th>OG Axe</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" name="longVisionOdSph" size="10" /></td>
							<td><input type="text" name="longVisionOgSph" size="10" /></td>
							<td><input type="text" name="longVisionOdCy" size="10" /></td>
							<td><input type="text" name="longVisionOgCyl" size="10" /></td>
							<td><input type="text" name="longVisionOdAxe" size="10" /></td>
							<td><input type="text" name="longVisionOgAxe" size="10" /></td>

						</tr>
					</tbody>
				</table>
			</fieldset>
			<fieldset>
				<legend>
					<b>Vision de pres</b>
				</legend>
				<table class="shadow">
					<thead>
						<tr class="adhere">
							<th>OD sph</th>
							<th>OG sph</th>
							<th>OD Cy</th>
							<th>OG Cyl</th>
							<th>OD Axe</th>
							<th>OG Axe</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" name="ShortVisionOdSph" size="10" /></td>
							<td><input type="text" name="ShortVisionOgSph" size="10" /></td>
							<td><input type="text" name="ShortVisionOdCy" size="10" /></td>
							<td><input type="text" name="ShortVisionOgCyl" size="10" /></td>
							<td><input type="text" name="ShortVisionOdAxe" size="10" /></td>
							<td><input type="text" name="ShortVisionOgAxe" size="10" /></td>

						</tr>
					</tbody>
				</table>
			</fieldset>
		</fieldset>
		<br />
		<table>
			<tr>
				<td colspan="3"><input id="" name=""
					value="Save Ophthalmology info" type="submit" /></td>
			</tr>
		</table>
	</form>
</div>