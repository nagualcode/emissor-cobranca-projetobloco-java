<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>

<c:import url="/WEB-INF/jsp/cabecalho.jsp"/>
<div class="topnav" id="myTopnav">
 <a href="/">Home</a>
  <a href="/clientes" >Clientes</a>
  <a href="/servicos" >Serviços</a>
  <a href="/boletos" class="active">Boletos</a>
  <a href="/logout">[logout]</a>
</div>

<div class="container">
<div class="container">
<button type="button" class="collapsible">Emitir Novo</button>
<div class="content">


  <form id="formulario" action="/boletos" method="post">
  
    
  	  	  <div class="row">
      <div class="col-25">
        <label for="idcliente">Cliente:</label>
      </div>
      <div class="col-75">
   <select name="idcliente">
    <c:forEach items="${clientes}" var="clien">
    <option value="${clien.id}">[${clien.id}] - ${clien.nome}</option>
    </c:forEach>
  </select>
	  	  
      </div>
    </div>
    
      	  	  <div class="row">
      <div class="col-25">
        <label for="idservico">Serviço:</label>
      </div>
      <div class="col-75">
   <select name="idservico">
    <c:forEach items="${servicos}" var="serv">
    <option value="${serv.id}">${serv.descricao} - R$ ${serv.valor}</option>
    </c:forEach>
  </select>
	  	  
      </div>
    </div>
 
	  	  <div class="row">
      <div class="col-25">
        <label for="vencimento">Vencimento</label>
      </div>
      <div class="col-75">
        <input type="text" id="vencimento" name="vencimento" placeholder="vencimento">
      </div>
    </div>
    
    
    
    
    
  
 <button type="submit" class="button green">Gerar</button>
    </form>
</div>

  </div>
  <div class="container">
<p id="qualvalor">Valor</p>
<table id="myTable" >

<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Filtrar por nome..." title="Nome">
  <c:forEach items="${boletos}" var="bol">
    <tr>
						<td style="display: inline-block; padding: 5px; background-color: black; color: white;">[${bol.id}]</td>
						<td style="display: inline-block; padding: 5px; background-color: black; color: white;">${bol.cliente.nome}</td>

						<td style="display: inline-block; padding: 5px; background-color: grey; color: white;">${bol.servico.descricao}</td>
						<td style="display: inline-block; padding: 5px; background-color: grey; color: white;">R$ ${bol.servico.valor}</td>
						
						<td style="display: inline-block; padding: 5px; background-color: black; color: white;">${bol.vencimento}</td>
				
 
		                <td style="display: inline-block; padding: 5px;"><a href="/emitir/${bol.id}"><button type="submit" class="button green">PDF</button></a></td>
	
					<td style="display: inline-block; padding: 5px;"><a href="/boletos/del/${bol.id}"><button type="submit" class="button red">X</button></a></td>
  </tr>
   </c:forEach>
  
</table>

</div>
</div>

</body>

<script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>



<script>
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.display === "block") {
      content.style.display = "none";
    } else {
      content.style.display = "block";
    }
  });
}
</script>

</html>