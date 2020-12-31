<div>
	<form action="diagnosis.form?patientId=${param.patientId}"
		method="post">
		<input type="hidden" name="opd_diagnosis_submit" id="opd_diagnosis_submit" value="${opd_diagnosis_display}" />
		<input type="hidden" name="ipd_diagnosis_submit" id="ipd_diagnosis_submit" value="${ipd_diagnosis_display}" />

		<fieldset>
			<legend>
				<b>Final diagnosis</b>
			</legend>
			<table class="shadow">
				<thead>
					<tr class="adhere">
						<th>Main diagnosis</th>
						<th>Secondary diagnosis</th>
						<th>Case status / Etat de cas</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" name="mainDiagnosis" size="50" />&nbsp;<b>Is
								Diagnosis an HIV Opportunistic</b> <input type="checkbox" /></td>
						<td><input type="text" name="secondaryDiagnosis" size="50" /></td>
						<td><select name="caseStatus"><option></option>
								<option>New Case</option></select></td>
					</tr>
				</tbody>
			</table>
		</fieldset>


		<br />
		<table class="shadow">
			<thead>
				<tr class="adhere">
					<th>Action taken</th>
					<th>Outcome (A, H, R, C, D)</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><textarea cols="30" rows="3" name="actionTaken"></textarea></td>
					<td><select><option></option>
							<option>INPATIENT HOSPITALIZATION</option></select></td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="3"><input id="" name="" value="Save Diagnosis"	type="submit" /></td>
				</tr>
			</tfoot>
		</table>
	</form>
</div>