<div class="shadow">
	<form action="transferout.form?patientId=${param.patientId}"
		method="post">

		<div class="">
			<fieldset>
				<legend><b>Transfer Information</b></legend>
				<div class="">
					<table class="shadow">
						<thead>
							<tr class="adhere">
								<th>Transfer Date and Time</th>
								<th>Transferring Facility</th>
								<th>Transferring Department</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Date: <input size="15" type="text" name="TransferDatetime" /> Hour: <select><option>00</option></select>
									Min: <select><option>00</option></select>
								</td>
								<td><select name="transferringFacility">
										<option>---</option>
										<option>Gisenyi DH</option>
								</select></td>
								<td><select name="transferringDepartment">
										<option>---</option>
										<option>Maternity</option>
										<option>Emergency</option>
										<option>Surgery</option>
										<option>Ophtalmology</option>
								</select></td>
							</tr>
						</tbody>
						<thead>
							<tr class="adhere">
								<th>Reason for Transferring out</th>
								<th>Receiving Facility</th>
								<th>Receiving Department</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><textarea cols="30" rows="3" name="transferOutReason"></textarea></td>
								<td><select name="receivingFacility">
										<option>---</option>
										<option>KFH</option>
										<option>CHUK</option>
								</select></td>
								<td><select name="receivingDepartment">
										<option>---</option>
										<option>Maternity</option>
										<option>Emergency</option>
										<option>Surgery</option>
										<option>Ophtalmology</option>
								</select></td>
							</tr>
						</tbody>
					</table>
				</div>
			</fieldset>
		</div>


		<div class="">
			<fieldset>
				<legend><b>Transportation info</b></legend>


				<table class="shadow">
					<thead>
						<tr class="adhere">
							<th>Required monitoring during transportation</th>
							<th>Type of transportation</th>
							<th>Did the patient or next Kin consent?</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox" name="inTransportationMonitoring" /></td>
							<td><select name="transportationType">
									<option>---</option>
									<option>Urutaro</option>
									<option>Virunga</option>
									<option>Volcano</option>
									<option>Icugutu</option>
							</select></td>
							<td><select name="isKinConsent">
									<option>---</option>
									<option>Yes</option>
									<option>No</option>
									<option>Unable</option>
							</select></td>
						</tr>
					</tbody>
				</table>

			</fieldset>

		</div>

		<table class="shadow">
			<tfoot>
				<tr>
					<td colspan="3"><input id="" name="" value="Save Transfer"
						type="submit" /></td>
				</tr>
			</tfoot>
		</table>
	</form>
</div>

