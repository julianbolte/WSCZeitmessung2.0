<?php
$vereine = "";
$conn = mysqli_connect('127.0.0.1', 'root', '', 'zeitmessung');
$sql = "SELECT * FROM rennen ORDER BY id ASC";
$result = mysqli_query($conn, $sql);
while($row = mysqli_fetch_array($result))
{

								$vereine .= '<tr>
								<td align="left">'.$row["id"].'</td>
								<td align="left">'.$row["bezeichnung"].'</td>
								</tr>';
}
$vereine = utf8_encode($vereine);
function fetch_data($raceid,$conn)
{
    $platz = 1;
		$best_time = 0;
    $output = '';
    $sql = "SELECT * FROM test3 WHERE rnnr='$raceid' ORDER BY LEAST(IFNULL(e_lauf1, 10000), IFNULL(e_lauf2, 10000))";
    $result = mysqli_query($conn, $sql);
    while($row = mysqli_fetch_array($result))
    {

				$best = "100.00";
				$rstand = "20.00";
				if ($row["lauf1_bv"] != null && $row["lauf2_bv"] == null){
					$row["e_lauf1"] = $row["lauf1_bv"];
					$row["f_lauf1"] = null;
					$best = $row["e_lauf2"];
				}
				if ($row["lauf1_bv"] == null && $row["lauf2_bv"] != null){
					$row["e_lauf2"] = $row["lauf2_bv"];
					$row["f_lauf2"] = null;
					$best = $row["e_lauf1"];
				}
				if ($row["lauf1_bv"] != null && $row["lauf2_bv"] != null){
					$row["e_lauf1"] = $row["lauf1_bv"];
					$row["f_lauf1"] = null;
					$row["e_lauf2"] = $row["lauf2_bv"];
					$row["f_lauf2"] = null;
					$platz = null;
					$rstand = null;
				}
				if ($row["e_lauf1"]>$row["e_lauf2"]){
					$best = $row["e_lauf2"];
				} else {
					$best = $row["e_lauf1"];
				}
				if ($platz == 1){
					$best_time = $best;
					$rstand = null;
				} elseif ($platz != null) {
					$rstand = $best-$best_time;
					if ($rstand > 10){
						$rstand = str_pad($rstand, 5, '0', STR_PAD_RIGHT);
					} else {
						$rstand = str_pad($rstand, 4, '0', STR_PAD_RIGHT);
					}
					$rstand = "+$rstand";
				}
        $output .= '<tr>
            <td width="4%" align="left"><b>'.$platz.'</b></td>
            <td width="5%" align="left">'.$row["stnr"].'</td>
            <td width="29%" align="left">'.$row["name"].'</td>
            <td width="20%" align="left">'.$row["verein"].'</td>
            <td width="6%" align="right">'.$row["f_lauf1"].'</td>
            <td width="7%" align="right">'.$row["e_lauf1"].'</td>
            <td width="6%" align="right">'.$row["f_lauf2"].'</td>
            <td width="7%" align="right">'.$row["e_lauf2"].'</td>
            <td width="8%" align="right"><b>'.$best.'</b></td>
            <td width="8%" align="right"><i>'.$rstand.'</i></td>
            </tr>';
        ++$platz;
    				}
    				return $output;
						echo '<script>console.log("Your stuff here")</script>';
				}
if(isset($_POST["generate_pdf"]))
{
    $raceid = $_POST["raceid"];
    $conn = mysqli_connect('127.0.0.1', 'root', '', 'zeitmessung');
    $sql = "SELECT bezeichnung FROM rennen WHERE id = '$raceid'";
    $result = mysqli_query($conn, $sql);
    while($row = mysqli_fetch_array($result))
    {
        $racename = $row["bezeichnung"];
    }
    require_once('./tcpdf/tcpdf.php');
    $obj_pdf = new TCPDF('L', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
    $obj_pdf->SetCreator(PDF_CREATOR);
    $obj_pdf->SetTitle("Ergebnis: Rennen $raceid");
    $obj_pdf->SetHeaderData('', '', PDF_HEADER_TITLE, PDF_HEADER_STRING);
    $obj_pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
    $obj_pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));
    $obj_pdf->SetDefaultMonospacedFont('helvetica');
    $obj_pdf->SetFooterMargin(PDF_MARGIN_FOOTER);
    $obj_pdf->SetMargins('10', '10', '10');
    $obj_pdf->setPrintHeader(false);
    $obj_pdf->setPrintFooter(false);
    $obj_pdf->SetAutoPageBreak(TRUE, 10);
    $obj_pdf->SetFont('helvetica', '', 10);
    $obj_pdf->AddPage('P');
    $content = '';
    $content .= '
        <table align="center" border="1" cellspacing="0" cellpadding="2">
        <tr>
        <td width="100%"><h1>Rennen '.$raceid.': '.$racename.'</h1></td>
        </tr>
        <tr>
        <th width="4%" align="center"><i>Pl</i></th>
        <th width="5%" align="center"><i>StNr</i></th>
        <th width="29%" align="left"><i>Name</i></th>
        <th width="20%" align="left"><i>Verein</i></th>
        <th width="6%" align="center"><i>Strafe</i></th>
        <th width="7%" align="center"><i>1. Lauf</i></th>
        <th width="6%" align="center"><i>Strafe</i></th>
        <th width="7%" align="center"><i>2. Lauf</i></th>
        <th width="8%" align="center"><i>Gesamt</i></th>
        <th width="8%" align="left"></th>
        </tr>
        </table>
        <table align="center" border="0" cellspacing="0" cellpadding="2">
        ';
    $content .= fetch_data($raceid, $conn);
    $content .= '</table>';
    $content .= '<br><hr><div align="center">Ausdruck Erstellt: '.date("H:i:s").' Ablauf der Protestzeit: ________</div>';
    $content = utf8_encode($content);
    $obj_pdf->writeHTML($content);
    $obj_pdf->Output("ergebnis-rennen-'$raceid'.pdf", 'I');
}
?>
<html>
<head>
    <meta charset="utf-8">
    <title>Einzeldruck Ergebnis</title>
</head>
<body>
    <div align="center">
    <h1>Einzeldruck Ergebnis</h1>
		<br />
    <table>
    <form method="post">
        <tr>
            <td><input type="text" name="raceid" placeholder="ID des Rennens"></td>
            <td><input type="submit" name="generate_pdf" value="Ergebnis drucken" /></td>
        </tr>
				<tr>
					<td colspan="2"><input type="checkbox" name="quali" value="quali">Qualifikationslinie gemäß §6.5.1, DWB 2018</td>
				</tr>
    </form>
    </table>
		<h2>Übersicht über alle Rennen:</h2>
		<table border="1" cellspacing="0" cellpadding="2">
			<tr><th width="10%">Id</th><th width="90%">Bezeichnung</th></tr>
			<?php echo $vereine ?>
		</table>
    </div>
</body>
</html>
