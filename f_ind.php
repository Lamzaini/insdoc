<?php include("parametres/parametres_connexion.php");?>
<?php
//hna dima kanbdaw session bach n9dro n accediw liha
session_start();

//hna kana5do cni o cne ln session
$cni = $_SESSION["cni"];
$cne = $_SESSION["cne"];


// Create connection
$conn = new mysqli($serveur_mysql, $mysql_user, $mysql_passwd, $DB_Mysql);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
$info_bac = array();

$sql = "select * from individu where cni like '".$cni."'";
$result = $conn->query($sql);

//ila utilisteur deja dar insc
if ($result->num_rows > 0){
  $row = $result->fetch_assoc();
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
else{


//ila kan utilisteur jdid

$info_bac['nom']="";
$info_bac['prenom']="";
$info_bac['descfct']="";
$info_bac['lib_adr']="";
$info_bac['telephone']="";
$info_bac['mail']="";
$info_bac['sujet']="";
}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ENT - [PREINSCRIPTION]</title>
<link rel="stylesheet" type="text/css" href="css/theme.css"/>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<script type="text/javascript" src="keyboard.js" charset="UTF-8"></script>
<script type="text/javascript">
 (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-101912355-1', 'auto');
  ga('send', 'pageview');


function verif_form()
{ var msg = "";
var numbers = /^[0-9]+$/;
 if(document.form.nom.value == "")  {
   msg = "Veuillez saisir votre Nom\n";
		
	     }
		 

	if(document.form.prenom.value == "")  {
   msg += "Veuillez saisir votre Pr??nom\n";
		
  		
     }
		 
	  
if(document.form.date_nais.value == "")  {
   msg += "Veuillez saisir votre date de naissance\n";
		
  	     }
		 
if(document.form.natio.value == "0")  {
   msg += "Veuillez saisir votre nationalit??\n";
		
  	     }


	 if(document.form.pro_nais.value == "0")  {
   msg += "Veuillez choisir la ville de naissance\n";
		
  		
     }
if(document.form.adresse.value == "")  {
   msg += "Veuillez saisir votre adresse\n";
		
  		
     }


if(document.form.vil_adr.value == "")  {
   msg += "Veuillez saisir la ville de l'adresse \n";
		
  		
     }
	 
if(document.form.mail.value == "")  {
   msg += "Veuillez saisir votre adresse mail\n";
		
  		
     }
	 
	 if(document.form.sujet.value == "")  {
   msg += "Veuillez saisir votre sujet\n";
		
  		
     }
	 
	  if(document.form.laboratoire.value == "0")  {
   msg += "Veuillez saisir le laboratoire\n";
		
  		
     }
	 
	 if(document.form.enseignants.value == "0")  {
   msg += "Veuillez saisir un enseignant\n";
		
  		
     }
	 

if(document.form.telephone.value == "xxx")  {
   msg += "Veuillez saisir votre t??l??phone\n";
		
  		
     } else
	 {
		 
		
      var numbers = /^[0-9]+$/;
      if(document.form.telephone.value.match(numbers))
      {
      if(document.form.telephone.value.length!=10){
	  msg += "Assurez-vous de rentrer un num??ro ?? 10 chiffre 061xxxxxxx \n";
      
		  
		  
	  }
      }
      else
      {
      msg += "Veuillez saisir votre num??ro de t??l??phone correctement\n";
      
      
	  }
		 
		 
		 
		 }
	 

	 

	   
	  

	

  if (msg == "") {
  
  return(true);
}
//Si un message d'alerte a t initialis on lance l'alerte
	else	{
		alert(msg);
		return(false);
	}
  
} 
//-->



		$(document).ready(function() {


			$("#doctorat").validationEngine();


		});

 
			function getXhr(){
                                var xhr = null; 
				if(window.XMLHttpRequest) // Firefox et autres
				   xhr = new XMLHttpRequest(); 
				else if(window.ActiveXObject){ // Internet Explorer 
				   try {
			                xhr = new ActiveXObject("Msxml2.XMLHTTP");
			            } catch (e) {
			                xhr = new ActiveXObject("Microsoft.XMLHTTP");
			            }
				}
				else { // XMLHttpRequest non support?? par le navigateur 
				   alert("Votre navigateur ne supporte pas les objets XMLHTTPRequest..."); 
				   xhr = false; 
				} 
                                return xhr;
			}
 
			/**
			* M??thode qui sera appel??e sur le click du bouton
			*/
			function go(){
				var xhr = getXhr();
				// On d??fini ce qu'on va faire quand on aura la r??ponse
				xhr.onreadystatechange = function(){
					// On ne fait quelque chose que si on a tout re??u et que le serveur est ok
					if(xhr.readyState == 4 && xhr.status == 200){
						leselect = xhr.responseText;
						// On se sert de innerHTML pour rajouter les options a la liste
						document.getElementById('enseignants').innerHTML = leselect;
					}
				}

				// Ici on va voir comment faire du post
				xhr.open("POST","option.php",true);
				// ne pas oublier ??a pour le post
				xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
				// ne pas oublier de poster les arguments
				// ici, l'id de l'auteur
				sel = document.getElementById('lab'); 
				enseignants = sel.options[sel.selectedIndex].value;
				xhr.send("enseignants="+enseignants);
				
			}
	

function active() {
		 document.formulaire.fonction.disabled = false;
		 
	     document.formulaire.fonction.style.backgroundColor="white";
}
 
function desactive() {
		 
		 document.formulaire.fonction.disabled = true;
	     document.formulaire.fonction.style.backgroundColor="#CCCCCC";
}
 

</script>

<style type="text/css">
.Style9 {color: #006699}
.Style11 {font-size: 10px; font-weight: bold; }
.Style14 {color: #003366}
.col_lib_tab {color: #006699;
	font-family: Verdana, Geneva, sans-serif;
	font-size:12px;
}
.lib_tab {font-family: Verdana, Geneva, sans-serif;
	color: #808080;
	font-size:12px;
}
.message_alert {font-family: Verdana, Geneva, sans-serif;
	color: #F00;
	font-size:14px;
}
</style>

</head>

<body onload='go(),desactive()'>
<h5 align="center"><!-- end #header -->
      
<!-- end #menu --></h5>
<p align="center">&nbsp;</p>
<div id="container">
  <div id="wrapper">
    <div id="box">
      <h3 class="Style14"  id="adduser">
        <?php 				
					$annee=date("Y");
					echo 'Preinscription en doctorat (Facult&eacute; des Sciences) au titre de L\'ann&eacute;e universitaire '.$annee.'/'.($annee + 1);
 ?>
      </h3>
      <div id="div">
      <form name="form" id="form" method="post" onsubmit="return(verif_form())" >
        <fieldset id="personal">
          <legend><span class="Style9">Information Personnelle</span>          </legend>
          <table width="100%">
            <tr>
              <td width="20%" height="20" class="col_lib_tab" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">Nom</td>
              <td width="611" height="20"><input name="nom" type="text"   value="<?php echo $info_bac['nom']; ?>" class="validate[required] text-input" id="nom" size="40" maxlength="100" /></td>
            </tr>
            <tr>
              <td width="177" height="20" class="col_lib_tab" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">Prenom</td>
              <td height="20"><span class="arabe">
                <input name="prenom" value="<?php echo $info_bac['prenom']; ?>" type="text"  class="validate[required] text-input" id="prenom" size="40" maxlength="100"/>
              </span></td>
            </tr>
            <tr>
              <td width="177" height="20" class="col_lib_tab" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">CNI</td>
              <td height="20"><span class="arabe">
                <input name="cni" type="text"  id="cni" value="<?php echo $cni;?>" readonly="readonly"/>
              </span></td>
            </tr>
            <tr>
              <td width="177" height="20" class="col_lib_tab" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">CNE</td>
              <td height="20"><input name="cne" type="text" id="cne" value="<?php echo $cne;?>" readonly="readonly"/>
                </h5></td>
            </tr>
            <tr>
              <td height="20" class="col_lib_tab" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">Date de naissance</td>
              <td height="20"><input name="date_nais" type="date"  value="<?php echo $info_bac['date_nais']; ?>" class="validate[required,custom[date]] text-input" id="datenai" size="10" maxlength="10"/></td>
            </tr>
            <tr>
              <td height="20" class="col_lib_tab" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">Lieu de naissance</td>
              <td height="20"><span class="arabe">
               
                <select name="pro_nais" class="Style5" id="pro_nais" onchange="javascript:couleur(this);">
                <option><?php echo $pays['lib_pay']; ?></option>
                
                  <input hidden name="choixlieun" id="choixlieun"/>
                <script>
                  var lieu = document.getElementsByName('pro_nais')[0];
                  document.getElementById('choixlieun').value = lieu.value;
                  lieu.onchange=function(){
                    
                    document.getElementById('choixlieun').value = lieu.value;
                  };

                </script>
                  
                </select>
              </span></td>
            </tr>
            <tr>
              <td height="20" class="col_lib_tab" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">Nationalit&eacute;</td>
              <td height="20"><span class="arabe">
               
                <select name="natio" class="Style5" id="natio" onchange="javascript:couleur(this);">
                  <option>Marocain</option>
                  <option>Algerien</option>
                </select>
                <input hidden name="choixnat" id="choixnat"/>
                <script>
                  var nats = document.getElementsByName('natio')[0];
                  document.getElementById('choixnat').value = nats.value;
                  nats.onchange=function(){
                    
                    document.getElementById('choixnat').value = nats.value;
                  };

                </script>
              </span></td>
            </tr>
            <tr>
              <td height="9" class="col_lib_tab" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">Fonction</td>
              <td height="9"><table width="100%" border="0">
                <tr class="col_lib_tab">
                  <td width="33%" valign="middle"><h5><span style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">Etudiant</span>
                    <input name="tedt" type="radio" id="etd" value="etudiant" checked="checked" onclick="desactive()" />
                  </h5></td>
                  <td width="33%"><h5><span style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">Salari&eacute;</span>
                    <input type="radio" name="tedt" id="sal" value="salari&eacute;" onclick="active()"/>
                  </h5></td>
                  <td width="33%"><h5><span style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">Fonctionnaire</span>
                      <input type="radio" name="tedt" id="fct" value="fonctionnaire" onclick="active()"/>
                      <input hidden name="choix" id="choix"/>
                      <script>
                        var tedt = document.getElementsByName('tedt');
                        document.getElementById('choix').value = "Etudiant";
                        tedt[0].onchange=function(){
                          document.getElementById('choix').value = "Etudiant";
                        };
                        tedt[1].onchange=function(){
                          document.getElementById('choix').value = "Salari??";
                        };
                        tedt[2].onchange=function(){
                          document.getElementById('choix').value = "Fonctionnaire";
                        };
                        </script>
                  </h5></td>
                </tr>
                
              </table></td>
            </tr>
            <tr>
              <td class="col_lib_tab" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">A pr&eacute;ciser (Fonction)</td>
              <td height="9"><textarea name="fonction" cols="70" id="fonction"><?php echo $info_bac['descfct']; ?></textarea></td>
            </tr>
          </table>
        </fieldset>
        <fieldset id="address">
          <legend><span class="Style9">Adresse</span></legend>
          <table width="100%">
            <tr>
              <td width="20%" class="col_lib_tab" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">Adresse</td>
              <td width="955" height="20" bgcolor="#FFFFFF"><input name="adresse" type="text" id="adresse" value="<?php echo $info_bac['lib_adr']; ?>
              " size="100" maxlength="100" /></td>
            </tr>
            <tr>
              <td width="337" height="20" class="col_lib_tab" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;"> T&eacute;l&eacute;phone</td>
              <td height="20"><input name="telephone" type="text" value="<?php echo $info_bac['telephone']; ?>" class="validate[required,custom[phone]] text-input" id="telephone" size="15" maxlength="12"/></td>
            </tr>
            <tr>
              <td width="337" height="20" class="col_lib_tab" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">Ville</td>
              <td height="20"><span class="arabe">
               
                <select name="vil_adr" class="Style5" id="vil_adr" >
                 <option>Casablance</option>
                 <option>Rabat</option>
                 <option>Kenitra</option>
                 <option>Marrakech</option>
                </select>
                <input hidden name="choixville" id="choixville"/>
                <script>
                  var villes = document.getElementsByName('vil_adr')[0];
                  document.getElementById('choixville').value = villes.value;
                  villes.onchange=function(){
                    
                    document.getElementById('choixville').value = villes.value;
                  };

                </script>
              </span></td>
            </tr>
            <tr>
              <td width="337" height="20" class="col_lib_tab" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">Mail</td>
              <td height="20"><span class="arabe">
                <input name="mail" type="email" value="<?php echo $info_bac['mail']; ?>" class="validate[required,custom[email]] text-input" id="mail" size="30" maxlength="100"/>
              </span></td>
            </tr>
          </table>
        </fieldset>
        <fieldset id="address">
          <legend><span class="Style9">Doctorat</span></legend>
          <table width="100%">
            <tr>
              <td width="20%" class="col_lib_tab" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">Sujet</td>
              <td width="956" height="20"><textarea name="sujet" cols="100" rows="3"  id="sujet"><?php echo $info_bac['sujet']; ?> </textarea></td>
            </tr>
            <tr>
              <td width="336" height="20" class="col_lib_tab" style="padding-left : 20px; padding-right : 20px;font-family:Verdana, Geneva, sans-serif; font-size : 11px; font-weight:bold;">Laboratoire</td>
              <td height="20"><span class="arabe">
                
                <select name="laboratoire" class="Style5" id="lab" onchange='go()'>
                  <option>L1</option>
                  <option>L2</option>
                  <option>L3</option>
                </select>
                <input hidden name="choixlab" id="choixlab"/>
                <script>
                  var labs = document.getElementsByName('laboratoire')[0];
                  document.getElementById('choixlab').value = labs.value;
                  labs.onchange=function(){
                    
                    document.getElementById('choixlab').value = labs.value;
                  };

                </script>
              </span></td>
            </tr>
           
          </table>
        </fieldset>
        <table width="100%" border="0" align="center" cellpadding="3" cellspacing="5">
          
          <tr valign="middle">
            <td height="20" colspan="7" bgcolor="#FFFFFF"><div align="center">
              <p>
                <input name="valider" type="submit" class="Style5" value="s'inscrire" id="mybtn" />
                <br />
              </p>
            </div></td>
          </tr>
        </table>
        


<?php

//evenement clique 3la valuder
if(isset($_POST['valider'])){
  //hna kana5do les infos mn l inputs o kan7tohom f des variables
  $nom = $_POST['nom'];
  $prenom = $_POST['prenom'];
  //cni 3ndna f session
  //cne 3Ndna f session
  $date_naiss = $_POST['date_nais'];
  $fonction = $_POST['choix'];
  $fonction_preciser = $_POST['fonction'];
  $adresse = $_POST['adresse'];
  $telephone = $_POST['telephone'];
  $mail = $_POST['mail'];
  $sujet = $_POST['sujet'];
  $ville = $_POST['choixville'];
  $laboratoire = $_POST['choixlab'];
  $lieu_naiss = $_POST['choixlieun'];
  $nationalite = $_POST['choixnat'];


  // hadchi initialization dial base donnee bach n9dro nst3mloha
$conn = new mysqli($serveur_mysql, $mysql_user, $mysql_passwd, $DB_Mysql);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

//hna kandiro requete
$sql="";

if($_SESSION['update']=="0"){
//ila jdid ghadi ndiro insert
$sql = "insert into individu values('".$cne."','".$cni."','".$nom."','".$prenom."','".$date_naiss.
"','".$lieu_naiss."','".$nationalite."','".$adresse."','".$ville."','".$telephone."','".$mail."','".$sujet."','".$laboratoire.
"','".$fonction."','".$fonction_preciser."')";
}
else{
  //ila machi jdid ghadi ndiro update
  $sql="update individu set nom='".$nom."',prenom='".$prenom."',date_nais='".$date_naiss.
  "',lieu_naiss='".$lieu_naiss."',nationalite='".$nationalite."',lib_adr='".$adresse.
  "',vil_adr='".$ville."',telephone='".$telephone."',mail='".$mail."',sujet='".$sujet.
  "',cod_lab='".$laboratoire."',fonctionnaire='".$fonction."',descfct='".$fonction_preciser."' where cni='".$cni."'";
}


//hadi kat3ni ila l insertion kant successful kan accediw l page smitha eng doctorant
if ($conn->query($sql) === TRUE) {
  //redirect
  echo "<script>window.location.href='eng_doctorant.php'</script>" ;
}

$conn->close();

}
echo "<script> 
var ville = document.getElementById('vil_adr');
for (var i =0;i<ville.getElementsByTagName('option').length;i++){
  var str = ville.getElementsByTagName('option')[i].innerHTML;
if(str=='".$info_bac['vil_adr']."'){
ville.selectedIndex=i;
document.getElementById('mybtn').value='modifier';
break;
}
}
var lab = document.getElementById('lab');
for (var i =0;i<lab.getElementsByTagName('option').length;i++){
  var str = lab.getElementsByTagName('option')[i].innerHTML;
if(str=='".$info_bac['lab']."'){
lab.selectedIndex=i;
break;
}
}
var natio = document.getElementById('natio');
for (var i =0;i<natio.getElementsByTagName('option').length;i++){
  var str = natio.getElementsByTagName('option')[i].innerHTML;
if(str=='".$info_bac['natio']."'){
  natio.selectedIndex=i;
break;
}
}

var choixlieun = document.getElementById('pro_nais');
for (var i =0;i<choixlieun.getElementsByTagName('option').length;i++){
  
  var str = choixlieun.getElementsByTagName('option')[i].innerHTML;
  
if(str=='".$info_bac['lieu']."'){
  
  choixlieun.selectedIndex=i;
break;
}
}

 </script>";
?>

      </form>
    </div> </div>
  </div>
</div>
<p align="center">&nbsp;</p>
    <!-- end #footer -->
</body>
</html>
