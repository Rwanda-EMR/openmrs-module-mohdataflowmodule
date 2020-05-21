<div>
	<form action="mentalhealth.form?patientId=${param.patientId}"
		method="post">
		<table class="shadow">
			<thead>
				<tr>
					<th>Situation de la famille et condition de vie</th>
					<th>Contexte de la Crise</th>
					<th>Br&#232;ve histoire familiale</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><obs conceptId="12082" style="textarea" rows="3" cols="30" />
					</td>
					<td><obs conceptId="12083" style="textarea" rows="3" cols="30" />
					</td>
					<td><obs conceptId="12084" style="textarea" rows="3" cols="30" /></td>
				</tr>
			</tbody>

			<thead>
				<tr>
					<th>Br&#232;ve histoire personnelle</th>
					<th>Status Somatique</th>
					<th>Status psychiatrique et donn&#233;es objectives</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><obs conceptId="12085" style="textarea" rows="3" cols="30" /></td>
					<td><obs conceptId="12086" style="textarea" rows="3" cols="30" />
					</td>
					<td><obs conceptId="12087" style="textarea" rows="3" cols="30" />
					</td>
				</tr>
			</tbody>

			<tfoot>
				<tr>
					<td colspan="3"><input id="" name=""
						value="Save Mental Health info" type="submit" /></td>
				</tr>
			</tfoot>
		</table>
	</form>
</div>