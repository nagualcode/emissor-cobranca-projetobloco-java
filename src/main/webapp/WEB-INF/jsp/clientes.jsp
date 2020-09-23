<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>

<c:import url="/WEB-INF/jsp/cabecalho.jsp"/>
<div class="topnav" id="myTopnav">
 <a href="/">Home</a>
  <a href="/clientes" class="active">Clientes</a>
  <a href="/servicos">Serviços</a>
  <a href="/boletos">Boletos</a>
   <a href="/logout">[logout]</a>
</div>

<div class="container">
<div class="container">
<button type="button" class="collapsible">Cadastrar Novo</button>
<div class="content">

  <form id="formulario" action="/cadastro/pj" method="post">
  <div class="form-group">
  
  	  	  <div class="row">
      <div class="col-25">
        <label for="tipoCliente">Tipo</label>
      </div>
      <div class="col-75">
        		  <select id="mySelect" class="green" name="tipoCliente" onchange="setaDoc()">
   <option value="pf">Pessoa Fisica</option>
   <option value="pj" selected="selected">Pessoa Juridica</option>
   </select>
	  	  
      </div>
    </div>


	  	  
	  	  <div class="row">
      <div class="col-25">
        <label for="nome">Nome</label>
      </div>
      <div class="col-75">
        <input type="text" id="nome" name="nome" placeholder="nome">
      </div>
    </div>
	  	  

    	  	  <div class="row">
      <div class="col-25">
        <label for="email">Email</label>
      </div>
      <div class="col-75">
        <input type="text" id="email" name="email" placeholder="email@email.com">
      </div>
    </div>
       	  	  <div class="row">
      <div class="col-25">
        <label for="cnpj">Cnpj/cpf:</label>
      </div>
      <div class="col-75">
        <input type="text" id="ledoc" name="cnpj" placeholder="documento">
      </div>
    </div>
     	  	  <div class="row">
      <div class="col-25">
        <label for="cep">Cep</label>
      </div>
      <div class="col-75">
        <input type="text" id="cep" name="cep" placeholder="cep" onblur="pesquisacep(this.value);">
      </div>
    </div>

	  	  <div class="row">
      <div class="col-25">
        <label for="logradouro">Logradouro</label>
      </div>
      <div class="col-75">
        <input type="text" id="logradouro" name="logradouro" placeholder="logradouro">
      </div>
    </div>
     	  	  <div class="row">
      <div class="col-25">
        <label for="complemento">Complemento</label>
      </div>
      <div class="col-75">
        <input type="text" id="complemento" name="complemento" placeholder="complemento">
      </div>
    </div>
	  	  <div class="row">
      <div class="col-25">
        <label for="cidade">Cidade</label>
      </div>
      <div class="col-75">
        <input type="text" id="cidade" name="cidade" placeholder="cidade">
      </div>
    </div>
        	  	  <div class="row">
      <div class="col-25">
        <label for="bairro">Bairro</label>
      </div>
      <div class="col-75">
        <input type="text" id="bairro" name="bairro" placeholder="bairro">
      </div>
    </div>

   	  	  <div class="row">
      <div class="col-25">
        <label for="uf">Uf</label>
      </div>
      <div class="col-75">
        <input type="text" id="uf" name="uf" placeholder="uf">
      </div>
    </div>
    	  	  <div class="row">
      <div class="col-25">
        <label for="telefone">Telefone</label>
      </div>
      <div class="col-75">
        <input type="text" id="telefone" name="telefone" placeholder="419999999">
      </div>
    </div>


        </div>
 <button type="submit" class="button green">Salvar</button>
    </form>
</div>

  </div>
  <div class="container">

<table id="myTable" >

<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Filtrar por nome..." title="Nome">
  <c:forEach items="${listaclientes}" var="clien">
    <tr>
						<td style="display: inline-block; padding: 5px; background-color: black; color: white;">[${clien.id}]</td>
						<td style="display: inline-block; padding: 5px; background-color: black; color: white;">${clien.nome}</td>



                        <c:if test="${not empty clien.cnpj}">
						<td style="display: inline-block; padding: 5px; background-color: grey; color: white;">CNPJ:<b>${clien.cnpj}</b></td>
						</c:if>
						<c:if test="${not empty clien.cpf}">
						<td style="display: inline-block; padding: 5px; background-color: grey; color: white;">CPF:<b>${clien.cpf}</b></td>
						</c:if>
					
			

						<td style="display: inline-block; padding: 5px; background-color: black; color: white;">${clien.email}</td>
						<td style="display: inline-block; padding: 5px; background-color: black; color: white;">${clien.telefone}</td>
				
					
 
						<td style="display: inline-block; padding: 5px; background-color: grey; color: white;">${clien.logradouro}</td>
						<td style="display: inline-block; padding: 5px; background-color: grey; color: white;">${clien.complemento}</td>
						<td style="display: inline-block; padding: 5px; background-color: grey; color: white;">${clien.cidade}</td>
						<td style="display: inline-block; padding: 5px; background-color: grey; color: white;">${clien.bairro}</td>
						<td style="display: inline-block; padding: 5px; background-color: grey; color: white;">${clien.cep}</td>
						<td style="display: inline-block; padding: 5px; background-color: grey; color: white;">${clien.uf}</td>

						<td style="display: inline-block; padding: 5px;"><a href="/clientes/del/${clien.id}"><button type="submit" class="button red">X</button></a></td>
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
function setaDoc() {
  if ( document.getElementById("mySelect").value === "pf" ) {
	  document.getElementById("formulario").action = "/cadastro/pf";
	  document.getElementById("ledoc").name = "cpf";	  
  }
	  else {
		  document.getElementById("formulario").action = "/cadastro/pj";
		  document.getElementById("ledoc").name = "cnpj";
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

    <script>
    
    function limpa_formulário_cep() {
            //Limpa valores do formulário de cep.
            document.getElementById('logradouro').value=("");
            document.getElementById('bairro').value=("");
            document.getElementById('cidade').value=("");
            document.getElementById('uf').value=("");
    }

    function meu_callback(conteudo) {
        if (!("erro" in conteudo)) {
            //Atualiza os campos com os valores.
            document.getElementById('logradouro').value=(conteudo.logradouro);
            document.getElementById('bairro').value=(conteudo.bairro);
            document.getElementById('cidade').value=(conteudo.localidade);
            document.getElementById('uf').value=(conteudo.uf);
        } //end if.
        else {
            //CEP não Encontrado.
            limpa_formulário_cep();
            alert("CEP não encontrado.");
        }
    }
        
    function pesquisacep(valor) {

        //Nova variável "cep" somente com dígitos.
        var cep = valor.replace(/\D/g, '');

        //Verifica se campo cep possui valor informado.
        if (cep != "") {

            //Expressão regular para validar o CEP.
            var validacep = /^[0-9]{8}$/;

            //Valida o formato do CEP.
            if(validacep.test(cep)) {

                //Preenche os campos com "..." enquanto consulta webservice.
                document.getElementById('logradouro').value="...";
                document.getElementById('bairro').value="...";
                document.getElementById('cidade').value="...";
                document.getElementById('uf').value="...";

                //Cria um elemento javascript.
                var script = document.createElement('script');

                //Sincroniza com o callback.
                script.src = 'https://viacep.com.br/ws/'+ cep + '/json/?callback=meu_callback';

                //Insere script no documento e carrega o conteúdo.
                document.body.appendChild(script);

            } //end if.
            else {
                //cep é inválido.
                limpa_formulário_cep();
                alert("Formato de CEP inválido.");
            }
        } //end if.
        else {
            //cep sem valor, limpa formulário.
            limpa_formulário_cep();
        }
    };

    </script>

</html>