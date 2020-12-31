<div>
	<form action="physiotherapy.form?patientId=${param.patientId}"
		method="post">
		<table class="shadow">
			<thead>
				<tr>
					<th>Physiotherapy Assessment</th>
					<th>Working environment</th>
					<th>Dizziness</th>
					<th>Aggravating Factors</th>
					<th>Releazing Factors</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><select name="physiotherapyAssessment_12230"><option></option></select></td> <!--	answerConceptIds="12041,12043,12047,12058,12065,12071" /></td> -->
					<td><textarea name="workingEnvironment_12073" rows="3" cols="30"></textarea></td> <!-- style="textarea" rows="3" cols="30" /></td> -->
					<td><select name="dizziness_12074"><option></option></select></td> <!-- answerConceptIds="1065,1066" /></td> -->
					<td><textarea name="aggravatingFactors_12225" rows="3" cols="30"></textarea></td> <!-- style="textarea" rows="3" cols="30" /></td> -->
					<td><textarea name="releazingFactors_12226" rows="3" cols="30"></textarea></td> <!-- style="textarea" rows="3" cols="30" /></td> -->
				</tr>
			</tbody>
		</table>
		<table class="shadow">
			<thead>
				<tr>
					<th>Joint Status (Range of Motion)</th>
					<th>Sensation</th>
					<th>Muscle Status</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="text" name="jointStatus_12077" size="10" /></td> <!-- size="10" /></td> -->
					<td><select name="sensation_12228"><option></option></select></td> <!-- answerConceptIds="12078,12079" /></td> -->
					<td><textarea name="muscleStatus_12229" rows="3" cols="30"></textarea></td> <!-- style="textarea" rows="3" cols="30" /></td> -->
				</tr>
			</tbody>

			<tfoot>
				<tr>
					<td colspan="3"><input id="save_physiotherapy" name="save_physiotherapy" 
						value="Save Physiotherapy info" type="submit" /></td>
				</tr>
			</tfoot>
		</table>
	</form>
</div>