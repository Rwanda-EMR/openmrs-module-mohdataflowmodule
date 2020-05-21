<div>
	<form action="stomatology.form?patientId=${param.patientId}"
		method="post">
		<fieldset>
			<legend>
				<b>DENTITION PRIMAIRE :</b>
			</legend>
			<table class="shadow">
				<thead>
					<tr class="adhere">
						<th>Numero d'une Dent</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" name="primaryTeethNumber" /></td>
						<td><input type="text" name="primaryAction" /></td>
					</tr>
				</tbody>
			</table>
		</fieldset>
		<fieldset>
			<legend>
				<b>DENTITION SECONDAIRE :</b>
			</legend>
			<table class="shadow">
				<thead>
					<tr class="adhere">
						<th>Numero d'une Dent</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" name="secondaryTeethNumber" /></td>
						<td><input type="text" name="secondaryAction" /></td>
					</tr>
				</tbody>
			</table>
		</fieldset>
		<br />
		<fieldset>
			<legend>
				<b>EXTRA ORAL EXAM</b>
			</legend>
			<table class="shadow">
				<thead>
					<tr class="adhere">
						<th>TMJ</th>
						<th>LYMPHNODS</th>
						<th>FACIAL SKIN</th>
						<th>FACIAL ASYMETRY</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><select><option>-- dislocation--</option></select></td>
						<td><textarea cols="50" rows="5" name="tmj"></textarea></td>
						<td><textarea cols="50" rows="5" name="lymphods"></textarea></td>
						<td><textarea cols="50" rows="5" name="facialAsymetry"></textarea></td>
					</tr>
				</tbody>
			</table>
		</fieldset>
		<br />
		<fieldset>
			<legend>
				<b> INTRA ORAL EXAM</b>
			</legend>
			<table class="shadow">
				<thead>
					<tr class="adhere">
						<th>SOFT TISSUE</th>
						<th>HARD TISSUE</th>

					</tr>
				</thead>
				<tbody>
					<tr>
						<td><textarea cols="50" rows="5" name="softTissue"></textarea></td>
						<td><textarea cols="50" rows="5" name="hardTissue"></textarea></td>
					</tr>
				</tbody>
			</table>
		</fieldset>
		<table>
			<tr>
				<th></th>
				<th></th>
				<th></th>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td colspan="3"><input id="" name=""
					value="Save Stomatology info" type="submit" /></td>
			</tr>
		</table>
	</form>
</div>