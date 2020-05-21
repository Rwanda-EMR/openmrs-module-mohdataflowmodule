<div>
	<form action="opdgeneralinfo.form?patientId=${param.patientId}"
		method="post">
		<table class="shadow">
			<thead>
				<tr class="adhere">
					<th>Encounter Date</th>
					<th>Encounter Provider</th>
					<th>Person to contact</th>
					<th>Phone Number</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="text" name="encounterDate" /></td>
					<td><openmrs_tag:personField formFieldName="providerId" initialValue="${status.value.personId}" roles="Provider" callback="enableSaveButton"/></td>
					<td><input size="60" type="text" name="personToContact" /></td>
					<td><input size="25" type="text" name="phoneNumber" /></td>
				</tr>
			</tbody>
		</table><br/>
		<fieldset>
			<legend>
				<b>Vital Signs</b>
			</legend>
			<table class="shadow">
				<thead>
					<tr class="adhere">
						<th>Temperature</th>
						<th>Weight</th>
						<th>Height</th>
						<th>SBP</th>
						<th>DBP</th>
						<th>Pulse</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" name="temperature" size="10" /></td>
						<td><input type="text" name="weight" size="10" /></td>
						<td><input type="text" name="height" size="10" /></td>
						<td><input type="text" name="sbp" size="10" /></td>
						<td><input type="text" name="dbp" size="10" /></td>
						<td><input type="text" name="pulse" size="10" /></td>
					</tr>
				</tbody>
			</table>
		</fieldset><br/>
		<fieldset>
			<legend>
				<b>Symptoms / Consultation motive</b>
			</legend>
			<table class="shadow">
				<thead>
					<tr class="adhere">
						<th>Motive added</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<openmrs_tag:conceptAnswerField formFieldName="symptomId" concept="${symptoms}" optionHeader="&mdash;&mdash;" />
					</tr>
				</tbody>
			</table>
		</fieldset><br/>
		<table class="shadow">
			<thead>
				<tr class="adhere">
					<th>History of present illness/Anamnese</th>
					<th>Past medical history/Antecedents</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><textarea cols="30" rows="3" name="anamnese"></textarea></td>
					<td><textarea cols="30" rows="3" name="antecedents"></textarea></td>
				</tr>
			</tbody>
		</table>
		<br/>
		<fieldset>
			<legend>
				<b>Systems exams / Examens des appareils</b>
			</legend>
			<table class="shadow">
				<tbody>
					<tr>
						<td><b>General aspect / Aspect g&eacute;n&eacute;ral</b></td>
						<td colspan="2"><textarea cols="30" rows="3" name="aspectGeneral"></textarea></td>
					</tr>
					<tr>
						<td><b>PULMONARY SYSTEM</b></td>
						<td><input type="radio" name="pulmonarySystem" value="normal" />
							Normal <input type="radio" name="pulmonarySystem"
							value="abnormal" /> Abnormal</td>
						<td><textarea cols="30" rows="3" name=""></textarea></td>
					</tr>
					<tr>
						<td><b>CARDIOVASCULAR SYSTEM</b></td>
						<td><input type="radio" name="cardiovascularSystem"
							value="normal" /> Normal <input type="radio"
							name="cardiovascularSystem" value="abnormal" /> Abnormal</td>
						<td><textarea cols="30" rows="3" name=""></textarea></td>
					</tr>
					<tr>
						<td><b>ABDOMINAL SYSTEM</b></td>
						<td><input type="radio" name="abdominalSystem" value="normal" />
							Normal <input type="radio" name="abdominalSystem"
							value="abnormal" /> Abnormal</td>
						<td><textarea cols="30" rows="3" name=""></textarea></td>
					</tr>
					<tr>
						<td><b>NEUROLOGIC SYSTEM</b></td>
						<td><input type="radio" name="neurologicSystem"
							value="normal" /> Normal <input type="radio"
							name="neurologicSystem" value="abnormal" /> Abnormal</td>
						<td><textarea cols="30" rows="3" name=""></textarea></td>
					</tr>
					<tr>
						<td><b>MUSCULOSKELETAL SYSTEM</b></td>
						<td><input type="radio" name="musculokseletalSystem"
							value="normal" /> Normal <input type="radio"
							name="musculokseletalSystem" value="abnormal" /> Abnormal</td>
						<td><textarea cols="30" rows="3" name=""></textarea></td>
					</tr>
					<tr>
						<td><b>UROGENITAL SYSTEM</b></td>
						<td><input type="radio" name="urogenitalSystem"
							value="normal" /> Normal <input type="radio"
							name="urogenitalSystem" value="abnormal" /> Abnormal</td>
						<td><textarea cols="30" rows="3" name=""></textarea></td>
					</tr>
					<tr>
						<td><b>SKIN, GROWTHS, GANGLIONS</b></td>
						<td><input type="radio" name="sggSystem" value="normal" />
							Normal <input type="radio" name="sggSystem" value="abnormal" />
							Abnormal</td>
						<td><textarea cols="30" rows="3" name=""></textarea></td>
					</tr>
					<tr>
						<td><b>PSYCHOMOTOR SYSTEM</b></td>
						<td><input type="radio" name="pulmonarySystem" value="normal" />
							Normal <input type="radio" name="pulmonarySystem"
							value="abnormal" /> Abnormal</td>
						<td><textarea cols="30" rows="3" name=""></textarea></td>
					</tr>
					<tr>
						<td><b>OTHER PHYSICAL SYSTEM</b></td>
						<td><input type="radio" name="otherSystem" value="normal" />
							Normal <input type="radio" name="otherSystem" value="abnormal" />
							Abnormal</td>
						<td><textarea cols="30" rows="3" name=""></textarea></td>
					</tr>
				</tbody>
			</table>
		</fieldset>
		<table class="shadow">
			<thead>
				<tr class="adhere">
					<th>Syndromic summary / R&eacute;sum&eacute; syndromique</th>
					<th>Pregnancy status</th>
					<th>HIV Status</th>
					<th>STI Screening</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><textarea cols="50" rows="5" name="syndromicSummary"></textarea></td>
					<td>
						<table>
							<tr>
								<td>
									<input type="radio" name="pregnant" value="no" /> No 
								</td>
							</tr>
							<tr>
								<td>
									<input type="radio" name="pregnant" value="yes" /> Yes
								</td>
							</tr>
						</table>
					</td>
					<td>
						<table>
							<tr>
								<td><input type="radio" name="hiv" value="negative" />
									Negative</td>
							</tr>
							<tr>
								<td><input type="radio" name="hiv" value="positive" />
									Positive</td>
							</tr>
							<tr>
								<td><input type="radio" name="hiv" value="unkown" />
									Unkown</td>
							</tr>
						</table>
					</td>
					<td>
						<table>
							<tr>
								<td><input type="radio" name="sti" value="negative" />Negative</td>
							</tr>
							<tr>
								<td><input type="radio" name="sti" value="positive" />Positive</td>
							</tr>
							<tr>
								<td><input type="radio" name="sti" value="notDone" />Not done</td>
							</tr>
							<tr>
								<td><input type="radio" name="sti" value="notApplicable" />
									Not applicable</td>
							</tr>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
		<br />
		<table class="shadow">
			<thead>
				<tr class="adhere">
					<th>Presumptive diagnosis / Hypoth&eacute;se diagnostique</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="text" name="presumptiveDiagnosis" size="50" />&nbsp;
						<button id="addSysmptom">Add</button></td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="3"><input id="" name="" value="Save General info" type="submit" /></td>
				</tr>
			</tfoot>
		</table>
	</form>
</div>