<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>

<c:import url="/WEB-INF/jsp/cabecalho.jsp"/>

<div class="topnav" id="myTopnav">
 <a href="/" class="active">Home</a>
  <a href="/clientes" >Clientes</a>
  <a href="/servicos">Serviços</a>
  <a href="/boletos">Boletos</a>
</div>

  
<div class="container-fluid" style="margin-top:80px">
<img src="/img/logotipo.png">
<h3>Projeto de Bloco - Java</h3>
<h3>Aluno: <b>Frederico Flores da Silva </b></h3>
<h3> Professor: <b>Elberth Moraes</b> </h3>
<h3>Código fonte no Github:<a href="https://github.com/" >https://github.com/nagualcode/</a></h3>
<hr>
<h2>Gerador de Cobranças:</h2>
<p>O objetivo desta ferramenta é emitir cobranças de serviços prestados, para clientes pessoa jurídica ou física.</p>
<p>O usuário deve primeiramente cadasrar o cliente, então cadastrar o serviço prestado e o seu valor, e então gerar a cobrança. O valor da cobrança é definido pelo valor do serviço.</p>
<h4>ToDo's:</h4>
<p>Funcionalidades:>
<p> - Integrar com api de boletos real (StarkBank , Pjbank, etc...)</p>
<p> - Adicionar outras formas de cobrança como cartão de crédito, pix, etc... </p>
<p> - Gerar a nota fiscal de uma cobrança</p>
<p>Frontend:</p>
<p>-Fazer o fronted com as requisições para a api do banco 100% em javascript.</p>
<p>Backend:</p>
<p> - Na api do banco de dados, fazer a relação persistente ManyToMany entrar clientes X Serviços X Cobranças, para agilizar a pesquisa relacionada.</p>
<hr>
<h5>23/Setembro/2020.</h5>
</div>

</body>
</html>