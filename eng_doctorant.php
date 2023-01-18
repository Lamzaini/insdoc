<?php
session_start();
include("parametres/parametres_connexion.php");
$cni = $_SESSION['cni'];
$info_bac = array();


  // Create connection
  $conn = new mysqli($serveur_mysql, $mysql_user, $mysql_passwd, $DB_Mysql);
  // Check connection
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }
  //dok cni li 3ndna f session, kandiro f requete bach njbd les infos dial l utlisateur
  $sql = "select * from individu where cni like '".$cni."'";
  $result = $conn->query($sql);

if ($result->num_rows > 0) {
  $row = $result->fetch_assoc();
  //row fih la ligne dial l utilisteur li 3Ndo dak cni
  $info_bac['nom'] = $row['nom'];
  $info_bac['prenom'] = $row['prenom'];
  $info_bac['cni'] = $row['cni'];
  $cne = $row['cne'];
  $info_bac['date_nais'] = $row['date_nais'];
  $info_bac['date_nais'] = $row['date_nais'];
  $info_bac['fonctionnaire'] = $row['fonctionnaire'];
  $info_bac['descfct'] = $row['descfct'];
  $info_bac['lib_adr'] = $row['lib_adr'];
  $info_bac['vil_adr'] = $row['vil_adr'];
  $info_bac['telephone'] = $row['telephone'];
  $info_bac['mail'] = $row['mail'];
  $info_bac['sujet'] = $row['sujet'];
  $info_bac['lab'] = $row['cod_lab'];
  $info_bac['lieu'] = $row['lieu_naiss'];
  $info_bac['natio'] = $row['nationalite'];
}
//dak infoçbac howa array l prof 3Mr bih html, kandir key value     -->   array_name['key'] = value;
$conn->close();
?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1250" />
<link rel="stylesheet" href="print.css" type="text/css" media="print" />
<title>Universit&eacute; Ibn Tofail - Re&ccedil;u de pr&eacute;inscription en doctorat</title>
<style type="text/css">
#doctorat table tr td {
	font-family: Verdana, Geneva, sans-serif;
}
#doctorat table tr td table tr td {
	font-family: Verdana, Geneva, sans-serif;
}
.titre {
	font-family: Verdana, Geneva, sans-serif;
}
#doctorat table tr td h5 {
	color: #FFF;
}
#doctorat table tr td h6 {
	color: #C0C0C0;
}
#doctorat table tr td h6 {
	color: #808080;
}
#doctorat table tr td h5 {
	color: #000;
}
#doctorat table tr td h5 u {
	color: #808080;
}
.Style5 {	font-size: 9px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
	color: #424244;
}
.titre {
	color: #808080;
}
.basdepage {
	font-family: Verdana, Geneva, sans-serif;
}
.basdepage {
	color: #C0C0C0;
}
.sig {
	font-family: Verdana, Geneva, sans-serif;
}
</style>
<script type="text/javascript">
function imprimer_page(){
  window.print();
}



</script>
</head>

<body>
<h5 align="center"><img src="images/logo.jpg" alt="" width="129" height="141"  /><br />
  <span class="titre"><u>Universit&eacute; Ibn Tofail - K&eacute;nitra<br />
Facult&eacute; des Sciences</u></span></h5>
<h5 align="center"><span class="titre"><u>Re&ccedil;u de 
  Pr&eacute;insription en doctorat 2018/2019 </font></u></span>
</h5>
<div align="center">
  <table width="720" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td height="15" valign="bottom" bgcolor="#FFFFFF"><h5 class="titre"><u><strong>Individu</strong></u></h5></td>
    </tr>
    <tr>
      <td><table width="100%">
        <tr>
          <td width="180" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">Nom</td>
          <td width="180" class="Style5"><h3><?php echo str_replace('\\','',$info_bac['nom']); ?></h3></td>
          <td width="180" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">Prenom</td>
          <td width="180" class="Style5"><h3><?php echo str_replace('\\','',$info_bac['prenom']); ?></h3></td>
          </tr>
        <tr>
          <td width="180" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;"> CNE</td>
          <td width="180" class="Style5"><h3><?php echo $cne;?></h3></td>
          <td width="180" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;"> CNI</td>
          <td width="180" class="Style5"><h3><?php echo $cni;?></h3></td>
          </tr>
        <tr>
          <td width="180" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;"> Date de naissance</td>
          <td width="180" class="Style5"><h3><?php echo $info_bac['date_nais']; ?></h3></td>
          <td width="180" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">Lieu de naissance</td>
          <td width="180" class="Style5"><h3>
          <?php echo $info_bac['lieu'];?>
            </h3></td>
          </tr>
        <tr>
          <td width="180" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">Nationalit&eacute;</td>
          <td width="180" class="Style5"><h3><span class="arabe">
          <?php echo $info_bac['natio'];?>
            </span></h3></td>
          <td width="180" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">Fonction</td>
          <td width="180" valign="middle" class="Style5" id="fonctionnaire"><h3>
            <?php echo $info_bac['fonctionnaire'];?>
            </h5>
          </h3></td>
          </tr>
        <tr>
          <td width="180" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">Fonction(description)</td>
          <td colspan="3" class="Style5"><?php echo $info_bac['descfct']; ?></td>
          </tr>
      </table></td>
    </tr>
    <tr>
      <td height="15" valign="bottom" bgcolor="#FFFFFF"><h5 class="titre"><u><strong><br />
      Adresse</strong></u></h5></td>
    </tr>
    <tr>
      <td><table width="100%">
        <tr>
          <td width="180" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">Adresse</td>
          <td width="540" class="Style5">
            <h3><?php echo $info_bac['lib_adr']; ?>
            </h3></td>
          </tr>
        <tr>
          <td width="180" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">Ville</td>
          <td width="540" class="Style5"><h3><span class="arabe">
          <?php echo $info_bac['vil_adr']; ?>
            </span></h3></td>
          </tr>
        <tr>
          <td width="180" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">T&eacute;l&eacute;phone</td>
          <td width="540" class="Style5"><h3><?php echo $info_bac['telephone']; ?></h3></td>
          </tr>
        <tr>
          <td width="180" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">Mail</td>
          <td width="540" class="Style5"><h3><span class="arabe"><?php echo $info_bac['mail']; ?></span></h3></td>
          </tr>
      </table></td>
    </tr>
    <tr>
      <td height="15" valign="bottom" bgcolor="#FFFFFF"><h5 class="titre"><u><strong><br />
      Doctorat</strong></u></h5></td>
    </tr>
    <tr>
      <td><table width="100%">
        <tr>
          <td width="180" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">Sujet</td>
          <td width="540" class="Style5"><h3><?php echo $info_bac['sujet']; ?></h3></td>
          </tr>
        <tr>
          <td width="180" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">Laboratoire</td>
          <td width="540" class="Style5"><h3><span class="arabe">
          <?php echo $info_bac['lab']; ?>
            </span></h3></td>
          </tr>
        <tr>
          
          </tr>
      </table></td>
    </tr>
    <tr>
      <td align="right"><p>&nbsp;</p>
        <h5><span class="sig">Signature du Directeur de th&egrave;se</span></font></h5>
        <form>
          <div align="center">
            <input id="impression" name="impression" type="button" onclick="imprimer_page()" value="Imprimer le re&ccedil;u" />
          </div>
        </form>
        <p>&nbsp;</p>
      <h6 class="basdepage">&nbsp;</h6></td>
    </tr>
  </table>
</div>
<p align="center">&nbsp;</p>
</body>
</html>