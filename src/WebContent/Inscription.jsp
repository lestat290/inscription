<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inscription</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript">
	function confirmer(url)
	{
		var rep=confirm("Etes vous s�r  de vouloir d�sinscrire ?");
		
		if(rep==true)
			{
				document.location=url;
			}
	}
</script>
</head>
<body>
	<%@ include file="menu.jsp" %>
	<div id="col1">
		<form action="equipe.david" method="post"> 
            
   			<p>
      			<label for="competition">Comp�tition</label>
      			<select name="compselect" id="competition" style="width: 126px;height: 24px;">
         			<c:forEach items="${modele.personne}" var="p">
						<option value="<c:out value='${p.nom}'/>">${p.nom}</option>
				
					</c:forEach>  
      			</select>
   			</p>
   		
   			<p>
      			<label for="candidat">Candidat</label>
      			<select name="candidSelect" id="candidat" style="width: 126px;height: 24px;margin-left: 25px;">
         			<c:forEach items="${modele.equipe}" var="p">
					<option value="<c:out value='${p.nom}'/>">${p.nom}</option>
				
					</c:forEach>  
      			</select>
   			</p>
   		<input type="submit" value="Inscrire" name="action" class="col1_input" style="margin-left: 115px;" >
   	
		</form>
	<div> ${modele.msgError}</div>
	
	</div>
	
	
	<div>
		<form action="competition.david" method="post">
		<table>
			<tr>
				<td>Mot cl�</td>
				<td><input type="text" name="motcle" value="${modele.motCle }" placeholder="comp�tition ou candidat"></td>
				<td><input type="submit" value="chercher" name="action" ></td>
			</tr>
		</table>
	</form>
	
		<table class="table1" cellspacing="0" cellpadding="0">
			<tr>
				<th>Comp�tition</th> <th>Candidat</th> <th>Date</th> <th>Type</th> <th>D�sinscrire</th> 
			</tr>
			<c:forEach items="${modele.personnes}" var="p">
			<tr>
				<td>${p.nom}</td>
				<td>${p.prenom}</td>
				<td>${p.mail}</td>
				<td>${p.mail}</td>
				<td><a href="javascript:confirmer('personne.david?action=delete&nom=${p.nom}')"> <img src="img/d�inscrit.jpg" alt="d�inscrit_Image" /> </a></td>
			</tr>
			
			</c:forEach>
		</table>
	</div>
</body>
</html>