<div>
	<form action="forensic.form?patientId=${param.patientId}" method="post">

		<div class="sectionheader">Deceased handed in By:</div>
		<table class="shadow">
			<thead>
				<tr>
					<th>Names</th>
					<th>Phone</th>
					<th>Id</th>
				</tr>
			</thead>


			<tbody>
				<tr>
					<td><obs conceptId="9798" /></td>
					<td><obs conceptId="9637" /></td>
					<td><obs conceptId="9638" /></td>
				</tr>

			</tbody>
		</table>
		<table class="shadow">
			<thead>
				<tr>
					<th>Retroacts</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><obs conceptId="9635" style="textarea" rows="4" cols="35" /></td>
				</tr>
			</tbody>

		</table>
		<div class="sectionheader">Other Information</div>
		<table class="shadow">
			<thead>
				<tr>
					<th>Deceased Carried Out By: (names)</th>
					<th>Deceased Carried Out On</th>
					<th>Payed</th>
					<th>Reason (If NO)</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><obs conceptId="10040" /></td>
					<td><obs conceptId="9996" /></td>
					<td><obs conceptId="9997" /></td>
					<td><obs conceptId="9998" /></td>
				</tr>
			</tbody>

			<thead>
				<tr>
					<th>Report Done</th>
					<th>Report Taken</th>
					<th>Report Taken By: (names)</th>
					<th>Report Taken On</th>
					<th>Function</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input /> <obs conceptId="9999" /></td>
					<td><obs conceptId="10000" /></td>
					<td><obs conceptId="10001" /></td>
					<td><obs conceptId="10002" /></td>
					<td><obs conceptId="10005" /></td>
				</tr>
			</tbody>
			<thead>
				<tr>
					<th>Observation/Comments</th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<td><obs conceptId="2881" style="textarea" rows="4" cols="40" /></td>
				</tr>
			</tbody>

			<tfoot>
				<tr>
					<td colspan="3"><input id="" name=""
						value="Save Forensic info" type="submit" /></td>
				</tr>
			</tfoot>

		</table>
	</form>
</div>