
<script type="text/javascript">
	$j(document).ready(function() {

		// Hide all DIVs until they are called!
		$j("#div1").hide();
		$j("#div2").hide();
		$j("#div3").hide();
		$j("#div0").hide();
		$j("#div4").hide();
		$j("#div5").hide();
		$j("#div6").hide();
		$j("#div7").hide();
		$j("#div8").hide();
		$j("#div9").hide();

		$j("#close0").click(function() {
			$j("#div0").hide();
			$j("select[name=service]").val("0");
		});
		$j("#close1").click(function() {
			$j("#div1").hide();
			$j("select[name=service]").val("0");
		});
		$j("#close2").click(function() {
			$j("#div2").hide();
			$j("select[name=service]").val("0");
		});
		$j("#close3").click(function() {
			$j("#div3").hide();
			$j("select[name=service]").val("0");
		});
		$j("#close4").click(function() {
			$j("#div4").hide();
			$j("select[name=service]").val("0");
		});
		$j("#close5").click(function() {
			$j("#div5").hide();
			$j("select[name=service]").val("0");
		});
		$j("#close6").click(function() {
			$j("#div6").hide();
			$j("select[name=service]").val("0");
		});
		$j("#close7").click(function() {
			$j("#div7").hide();
			$j("select[name=service]").val("0");
		});
		$j("#close8").click(function() {
			$j("#div8").hide();
			$j("select[name=service]").val("0");
		});
		$j("#close9").click(function() {
			$j("#div9").hide();
			$j("select[name=service]").val("0");
		});

		var selected_value;

		$j("select[name=service]").change(function() {
			selected_value = $j("select[name=service]").val();

			if (selected_value == "0") {
				$j("#div0").hide();
				$j("#div1").hide();
				$j("#div2").hide();
				$j("#div3").hide();
				$j("#div4").hide();
				$j("#div5").hide();
				$j("#div6").hide();
				$j("#div7").hide();
				$j("#div8").hide();
				$j("#div9").hide();
			}
			if (selected_value == "1") {
				$j("#div1").show();
				$j("#div2").hide();
				$j("#div3").hide();
				$j("#div0").hide();
				$j("#div4").hide();
				$j("#div5").hide();
				$j("#div6").hide();
				$j("#div7").hide();
				$j("#div8").hide();
				$j("#div9").hide();
			}
			if (selected_value == "2") {
				$j("#div2").show();
				$j("#div1").hide();
				$j("#div3").hide();
				$j("#div0").hide();
				$j("#div4").hide();
				$j("#div5").hide();
				$j("#div6").hide();
				$j("#div7").hide();
				$j("#div8").hide();
				$j("#div9").hide();
			}
			if (selected_value == "3") {
				$j("#div3").show();
				$j("#div2").hide();
				$j("#div1").hide();
				$j("#div0").hide();
				$j("#div4").hide();
				$j("#div5").hide();
				$j("#div6").hide();
				$j("#div7").hide();
				$j("#div8").hide();
				$j("#div9").hide();
			}
			if (selected_value == "4") {
				$j("#div4").show();
				$j("#div0").hide();
				$j("#div1").hide();
				$j("#div2").hide();
				$j("#div3").hide();
				$j("#div5").hide();
				$j("#div6").hide();
				$j("#div7").hide();
				$j("#div8").hide();
				$j("#div9").hide();
			}
			if (selected_value == "5") {
				$j("#div5").show();
				$j("#div0").hide();
				$j("#div1").hide();
				$j("#div2").hide();
				$j("#div3").hide();
				$j("#div4").hide();
				$j("#div6").hide();
				$j("#div7").hide();
				$j("#div8").hide();
				$j("#div9").hide();
			}
			if (selected_value == "6") {
				$j("#div5").hide();
				$j("#div0").hide();
				$j("#div1").hide();
				$j("#div2").hide();
				$j("#div3").hide();
				$j("#div4").hide();
				$j("#div6").show();
				$j("#div7").hide();
				$j("#div8").hide();
				$j("#div9").hide();
			}
			if (selected_value == "7") {
				$j("#div0").hide();
				$j("#div1").hide();
				$j("#div2").hide();
				$j("#div3").hide();
				$j("#div4").hide();
				$j("#div5").hide();
				$j("#div6").hide();
				$j("#div7").show();
				$j("#div8").hide();
				$j("#div9").hide();
			}
			if (selected_value == "8") {
				$j("#div0").hide();
				$j("#div1").hide();
				$j("#div2").hide();
				$j("#div3").hide();
				$j("#div4").hide();
				$j("#div5").hide();
				$j("#div6").hide();
				$j("#div7").hide();
				$j("#div8").show();
				$j("#div9").hide();
			}
			if (selected_value == "9") {
				$j("#div0").hide();
				$j("#div1").hide();
				$j("#div2").hide();
				$j("#div3").hide();
				$j("#div4").hide();
				$j("#div5").hide();
				$j("#div6").hide();
				$j("#div7").hide();
				$j("#div8").hide();
				$j("#div9").show();
			}
		});

	});
</script>

<div>
	<form action="medicalacts.form?patientId=${param.patientId}" method="post">
		<input type="hidden" name="opd_acts_submit" id="opd_acts_submit" value="${opd_acts_display}" />
		<input type="hidden" name="ipd_acts_submit" id="ipd_acts_submit" value="${ipd_acts_display}" />

			<div class="shadow">
				<table class="shadow">
					<thead>
						<tr>
							<th>Choose a service
							<select id="serviceid" name="service">
									<option value="0">--</option>
									<option value="1">Echographie</option>
									<option value="2">Stomatologie</option>
									<option value="3">Soins infirmiers</option>
									<option value="4">Chirurgie</option>
									<option value="5">Radio</option>
									<option value="6">Maternity</option>
									<option value="7">Ophtalmologie</option>
									<option value="8">Kinestherapie</option>
									<option value="9">Oxygenotherapie</option>
							</select></th>
						</tr>
					</thead>

				</table>
				<br/>

				<div id="div1">
					<fieldset>
						<legend>
							<b>Echographie</b>
						</legend>
						<obsgroup groupingConceptId="9909">
						<table>
							<tr>
								<td><obs conceptId="9909" answerConceptId="7002"
										style="checkbox" /></td>
								<td><obs conceptId="9909" answerConceptId="7003"
										style="checkbox" /></td>
							</tr>
						</table>
						</obsgroup>
						<br />
					</fieldset>

					<div style="color: blue;" id="close1">
						<span><b>[X Close me]</b></span>
					</div>
				</div>
				<div id="div2">
					<fieldset>
						<legend>
							<b>Stomatologie</b>
						</legend>
						<br />

						<obsgroup groupingConceptId="9975">
						<table>
							<tr>
								<td><obs conceptId="9975" answerConceptId="7004"
										style="checkbox" /></td>
								<td><obs conceptId="9975" answerConceptId="7005"
										style="checkbox" /></td>
								<td><obs conceptId="9975" answerConceptId="7006"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="9975" answerConceptId="7007"
										style="checkbox" /></td>
								<td><obs conceptId="9975" answerConceptId="7008"
										style="checkbox" /></td>
								<td><obs conceptId="9975" answerConceptId="7009"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="9975" answerConceptId="7010"
										style="checkbox" /></td>
								<td><obs conceptId="9975" answerConceptId="7011"
										style="checkbox" /></td>
								<td><obs conceptId="9975" answerConceptId="7012"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="9975" answerConceptId="7013"
										style="checkbox" /></td>
								<td><obs conceptId="9975" answerConceptId="7014"
										style="checkbox" /></td>
								<td><obs conceptId="9975" answerConceptId="7015"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="9975" answerConceptId="7016"
										style="checkbox" /></td>
								<td><obs conceptId="9975" answerConceptId="7017"
										style="checkbox" /></td>
								<td><obs conceptId="9975" answerConceptId="7018"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="9975" answerConceptId="10508"
										style="checkbox" /></td>
								<td><obs conceptId="9975" answerConceptId="10268"
										style="checkbox" /></td>
								<td><obs conceptId="9975" answerConceptId="11224"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="9975" answerConceptId="10501"
										style="checkbox" /></td>
								<td><obs conceptId="9975" answerConceptId="10518"
										style="checkbox" /></td>
								<td><obs conceptId="9975" answerConceptId="10514"
										style="checkbox" /></td>
							</tr>
						</table>
						</obsgroup>

						<br />
					</fieldset>

					<div style="color: blue;" id="close2">
						<span><b>[X Close me]</b></span>
					</div>
				</div>
				<div id="div3">
					<fieldset>
						<legend>
							<b>Soins infirmiers</b>
						</legend>
						<br />

						<obsgroup groupingConceptId="10142">
						<table>
							<tr>
								<td><obs conceptId="10142" answerConceptId="7113"
										style="checkbox" /></td>
								<td><obs conceptId="10142" answerConceptId="7114"
										style="checkbox" /></td>
								<td><obs conceptId="10142" answerConceptId="7115"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="10142" answerConceptId="7116"
										style="checkbox" /></td>
								<td><obs conceptId="10142" answerConceptId="7117"
										style="checkbox" /></td>
								<td><obs conceptId="10142" answerConceptId="7118"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="10142" answerConceptId="7119"
										style="checkbox" /></td>
								<td><obs conceptId="10142" answerConceptId="7120"
										style="checkbox" /></td>
								<td><obs conceptId="10142" answerConceptId="7121"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="10142" answerConceptId="7122"
										style="checkbox" /></td>
								<td><obs conceptId="10142" answerConceptId="7123"
										style="checkbox" /></td>
								<td></td>
							</tr>
						</table>
						</obsgroup>

						<br />
					</fieldset>

					<div style="color: blue;" id="close3">
						<span><b>[X Close me]</b></span>
					</div>
				</div>
				<div id="div4">
					<fieldset>
						<legend>
							<b>Maternity</b>
						</legend>
						<obsgroup groupingConceptId="12142">
						<table>
							<tr>
								<td><obs conceptId="12142" answerConceptId="7044"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7045"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7046"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7049"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7050"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="12142" answerConceptId="7051"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7093"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7094"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="12142" answerConceptId="7062"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7064"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7065"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7080"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7081"
										style="checkbox" /></td>

							</tr>
							<tr>
								<td><obs conceptId="12142" answerConceptId="7082"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="46"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7088"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7090"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7091"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="12142" answerConceptId="7047"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7048"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7087"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7092"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7094"
										style="checkbox" /></td>
							</tr>
						</table>
						</obsgroup>

					</fieldset>
					<fieldset>
						<legend>
							<b>Internal Medecine</b>
						</legend>
						<obsgroup groupingConceptId="12142">
						<table>
							<tr>
								<td><obs conceptId="12142" answerConceptId="7019"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7020"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7021"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7022"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7023"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="12142" answerConceptId="7024"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7025"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7026"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7027"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7028"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="12142" answerConceptId="7023"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="10171"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7065"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7031"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7032"
										style="checkbox" /></td>

							</tr>
							<tr>
								<td><obs conceptId="12142" answerConceptId="11225"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7034"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7035"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7036"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7037"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="12142" answerConceptId="7038"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7040"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7041"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7042"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7043"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="12142" answerConceptId="7052"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7053"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="11226"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="11227"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="11228"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="12142" answerConceptId="11229"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="11230"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="11231"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="11234"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="11231"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="12142" answerConceptId="7055"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7055"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7056"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7057"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7059"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="12142" answerConceptId="7060"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7061"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7093"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7094"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7097"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="12142" answerConceptId="7098"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7099"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7100"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7101"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7102"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="12142" answerConceptId="7103"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7104"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7105"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7063"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="12142" answerConceptId="7066"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7067"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7078"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7069"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7070"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="12142" answerConceptId="7071"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7072"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="11235"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7073"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7074"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="12142" answerConceptId="7075"
										style="checkbox" />dup 8265</td>
								<td><obs conceptId="12142" answerConceptId="7076"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7077"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7078"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7079"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td>colostomie, occlusion intestinale,
									volvulus,paritonite?---> MISSING</td>
								<td><obs conceptId="12142" answerConceptId="7084"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7085"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7088"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7097"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7098"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="12142" answerConceptId="7026"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7123"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7039"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7058"
										style="checkbox" /></td>
								<td><obs conceptId="12142" answerConceptId="7089"
										style="checkbox" /></td>
							</tr>
						</table>
						</obsgroup>
					</fieldset>
					<fieldset>
						<legend>
							<b>Anesthesia</b>
						</legend>
						<obsgroup groupingConceptId="12142">
						<table>
							<tr>
								<td><obs conceptId="12142" answerConceptId="10714"
										style="checkbox" /></td>
							</tr>
						</table>
						</obsgroup>
					</fieldset>

					<div style="color: blue;" id="close4">
						<span><b>[X Close me]</b></span>
					</div>
				</div>
				<div id="div5">
					<fieldset>
						<legend>
							<b>Radio</b>
						</legend>
						<obsgroup groupingConceptId="12134">
						<table>
							<tr>
								<td><strong>MEMBRES SUPERIEURS</strong></td>
							</tr>
							<tr>
								<td><obs conceptId="12134" answerConceptId="10214"
										style="checkbox" /></td>
								<td><obs conceptId="12134" answerConceptId="10216"
										style="checkbox" /></td>
								<td><obs conceptId="12134" answerConceptId="10217"
										style="checkbox" /></td>
								<td><obs conceptId="12134" answerConceptId="10218"
										style="checkbox" /></td>
								<td><obs conceptId="12134" answerConceptId="10221"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="12134" answerConceptId="10223"
										style="checkbox" /></td>
								<td><obs conceptId="12134" answerConceptId="10225"
										style="checkbox" /></td>
								<td><obs conceptId="12134" answerConceptId="10226"
										style="checkbox" /></td>
								<td><obs conceptId="12134" answerConceptId="10227"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><strong>MEMBRES INFERIEURS</strong></td>
							</tr>
							<tr>
								<td><obs conceptId="12134" answerConceptId="10229"
										style="checkbox" /></td>
								<td><obs conceptId="12134" answerConceptId="10234"
										style="checkbox" /></td>
								<td><obs conceptId="12134" answerConceptId="10237"
										style="checkbox" /></td>
								<td><obs conceptId="12134" answerConceptId="10240"
										style="checkbox" /></td>
								<td><obs conceptId="12134" answerConceptId="10242"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="12134" answerConceptId="10244"
										style="checkbox" /></td>
								<td><obs conceptId="12134" answerConceptId="10247"
										style="checkbox" /></td>
								<td><obs conceptId="12134" answerConceptId="10248"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><strong>CAGE THORACIQUE</strong></td>
							</tr>
							<tr>
								<td><obs conceptId="12134" answerConceptId="10259"
										style="checkbox" /></td>
								<td><obs conceptId="12134" answerConceptId="10712"
										style="checkbox" /></td>
								<td><obs conceptId="12134" answerConceptId="10261"
										style="checkbox" /></td>
								<td>AUTRES? -> missing</td>
								<td><obs conceptId="12134" answerConceptId="10269"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="12134" answerConceptId="10263"
										style="checkbox" /></td>
								<td><obs conceptId="12134" answerConceptId="10265"
										style="checkbox" /></td>
								<td><obs conceptId="12134" answerConceptId="10266"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><strong>ABDOMEN</strong></td>
							</tr>
							<tr>
								<td><obs conceptId="12134" answerConceptId="10267"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><strong>EXAMEN SPECIAUX</strong></td>
							</tr>
							<tr>
								<td><obs conceptId="12134" answerConceptId="10279"
										style="checkbox" /></td>
								<td><obs conceptId="12134" answerConceptId="10280"
										style="checkbox" /></td>

							</tr>
						</table>
						</obsgroup>
						<br />
					</fieldset>

					<div style="color: blue;" id="close5">
						<span><b>[X Close me]</b></span>
					</div>
				</div>

				<div id="div6">
					<fieldset>
						<legend>
							<b>Maternity</b>
						</legend>
						<obsgroup groupingConceptId="12135">
						<table>
							<tr>
								<td><obs conceptId="12135" answerConceptId="10207"
										style="checkbox" /></td>
								<td><obs conceptId="12135" answerConceptId="7106"
										style="checkbox" /></td>
								<td><obs conceptId="12135" answerConceptId="7107"
										style="checkbox" /></td>
								<td><obs conceptId="12135" answerConceptId="7108"
										style="checkbox" /></td>
								<td><obs conceptId="12135" answerConceptId="7109"
										style="checkbox" /></td>
								<td><obs conceptId="12135" answerConceptId="7110"
										style="checkbox" /></td>
								<td><obs conceptId="12135" answerConceptId="7112"
										style="checkbox" /></td>
								<td><obs conceptId="12135" answerConceptId="7111"
										style="checkbox" /></td>
							</tr>
						</table>
						</obsgroup>

					</fieldset>

					<div style="color: blue;" id="close6">
						<span><b>[X Close me]</b></span>
					</div>
				</div>

				<div id="div7">
					<fieldset>
						<legend>
							<b>Ophtalmologie</b>
						</legend>
						<obsgroup groupingConceptId="12136">
						<table>
							<tr>
								<td><strong>Interventions</strong></td>
							</tr>
							<tr>
								<td><obs conceptId="12136" answerConceptId="7129"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><strong>INTERVENTIONS MINEURES</strong></td>
							</tr>
							<tr>
								<td><obs conceptId="12136" answerConceptId="7032"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="7035"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="7130"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="7131"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="7132"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="12136" answerConceptId="7133"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="7041"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="10343"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="7134"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="7135"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><strong>INTERVENTIONS SANS ANEST.</strong></td>
							</tr>
							<tr>
								<td><obs conceptId="12136" answerConceptId="10345"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="10346"
										style="checkbox" /></td>

							</tr>
							<tr>
								<td><strong>INTERVENTIONS INTERM.</strong></td>
							</tr>
							<tr>
								<td><obs conceptId="12136" answerConceptId="7136"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="7137"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="10347"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="7138"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><strong>EXAMENS SPECIAUX</strong></td>
							</tr>
							<tr>
								<td><obs conceptId="12136" answerConceptId="7139"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="7140"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="7141"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="7142"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="7143"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="7144"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="7145"
										style="checkbox" /></td>

							</tr>
							<tr>
								<td><strong>INTERVENTIONS MAJEURES</strong></td>
							</tr>
							<tr>
								<td><obs conceptId="12136" answerConceptId="10350"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="7146"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="10351"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="7147"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="7149"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="12136" answerConceptId="7150"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="7151"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="7152"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="12136" answerConceptId="7153"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="7154"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="7155"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="7156"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><obs conceptId="12136" answerConceptId="7157"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="7158"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="7160"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="7161"
										style="checkbox" /></td>
								<td><obs conceptId="12136" answerConceptId="7162"
										style="checkbox" /></td>
							</tr>


						</table>
						</obsgroup>
						<br />
					</fieldset>

					<div style="color: blue;" id="close7">
						<span><b>[X Close me]</b></span>
					</div>
				</div>
				<div id="div8">
					<fieldset>
						<legend>
							<b>Kinestherapie</b>
						</legend>
						<obsgroup groupingConceptId="12137">
						<table>
							<tr>
								<td><strong>Massage</strong></td>
							</tr>
							<tr>
								<td><obs conceptId="12137" answerConceptId="7166"
										style="checkbox" /></td>
								<td><obs conceptId="12137" answerConceptId="7167"
										style="checkbox" /></td>
								<td><obs conceptId="12137" answerConceptId="11236"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><strong>Mobilisation</strong></td>
							</tr>
							<tr>
								<td><obs conceptId="12137" answerConceptId="7168"
										style="checkbox" /></td>
								<td><obs conceptId="12137" answerConceptId="11237"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><strong>Traction/Stretching</strong></td>
							</tr>
							<tr>
								<td><obs conceptId="12137" answerConceptId="7169"
										style="checkbox" /></td>
								<td><obs conceptId="12137" answerConceptId="7170"
										style="checkbox" /></td>

							</tr>
							<tr>
								<td><strong>EXERCISES</strong></td>
							</tr>
							<tr>
								<td><obs conceptId="12137" answerConceptId="7171"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><strong>Electroth�rapie / Electrotherapy</strong></td>
							</tr>
							<tr>
								<td><obs conceptId="12137" answerConceptId="7172"
										style="checkbox" /></td>
								<td><obs conceptId="12137" answerConceptId="7173"
										style="checkbox" /></td>
								<td><obs conceptId="12137" answerConceptId="7174"
										style="checkbox" /></td>
								<td><obs conceptId="12137" answerConceptId="7175"
										style="checkbox" /></td>
								<td><obs conceptId="12137" answerConceptId="7176"
										style="checkbox" /></td>
								<td><obs conceptId="12137" answerConceptId="7177"
										style="checkbox" /></td>
								<td><obs conceptId="12137" answerConceptId="7178"
										style="checkbox" /></td>
								<td><obs conceptId="12137" answerConceptId="7179"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><strong>Techniques sp�ciales</strong></td>
							</tr>
							<tr>
								<td><obs conceptId="12137" answerConceptId="7180"
										style="checkbox" /></td>
								<td><obs conceptId="12137" answerConceptId="7181"
										style="checkbox" /></td>
								<td><obs conceptId="12137" answerConceptId="7182"
										style="checkbox" /></td>
								<td><obs conceptId="12137" answerConceptId="7040"
										style="checkbox" /></td>
								<td><obs conceptId="12137" answerConceptId="7184"
										style="checkbox" /></td>
							</tr>
							<tr>
								<td><strong>COUT DES ACTES ANESTHESIQUES EN SALLE
										D'OPERATION</strong></td>
							</tr>
							<tr>
								<td><obs conceptId="12137" answerConceptId="10714"
										style="checkbox" /></td>
							</tr>
						</table>
						</obsgroup>
						<br />
					</fieldset>

					<div style="color: blue;" id="close8">
						<span><b>[X Close me]</b></span>
					</div>
				</div>
				<div id="div9">
					<fieldset>
						<legend>
							<b>Oxygenotherapie</b>
						</legend>
						<obsgroup groupingConceptId="12138">
						<table>
							<tr>
								<td><obs conceptId="12138" answerConceptId="10578"
										style="checkbox" /></td>
								<td><obs conceptId="12138" answerConceptId="10580"
										style="checkbox" /></td>
								<td><obs conceptId="12138" answerConceptId="10583"
										style="checkbox" /></td>
								<td><obs conceptId="12138" answerConceptId="10586"
										style="checkbox" /></td>
								<td><obs conceptId="12138" answerConceptId="10587"
										style="checkbox" /></td>
								<td><obs conceptId="12138" answerConceptId="10588"
										style="checkbox" /></td>
								<td><obs conceptId="12138" answerConceptId="10590"
										style="checkbox" /></td>
								<td><obs conceptId="12138" answerConceptId="10591"
										style="checkbox" /></td>
								<td><obs conceptId="12138" answerConceptId="10612"
										style="checkbox" /></td>
							</tr>
						</table>
						</obsgroup>
						<br />
					</fieldset>

					<div style="color: blue;" id="close9">
						<span><b>[X Close me]</b></span>
					</div>
				</div>
			</div>

		<table>
			<tfoot>
				<tr>
					<td colspan="3"><input id="" name="" value="Save Medical Acts"
						type="submit" /></td>
				</tr>
			</tfoot>
		</table>

	</form>
</div>