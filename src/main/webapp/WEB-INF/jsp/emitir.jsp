<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Boleto Fake - Projeto de Bloco</title>
		<meta name="keywords" content="boleto, bradesco, template, html" />
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="/boleto.css">
</head>
<body>
		<div class="container-fluid">
		  <div class="row top-margin">
			<div class="col-12"></div>
		  </div>
		 
		  <table class="t100">
			<tr class="t100">
			  <td class="t25 border_right_s"><img src="/img/Bradesco.png" alt="Bradesco" width="150" height="49" title="Bradesco"/></td>
			  <td class="t20 border_right_s"><p class="alignCenter"><strong>237-2</strong></p></td>
			  <td class="t55"><p class="alignRight"><strong>00000.00000 00000.000000 00000.000000 0 00000000000000</strong></p></td>
			</tr>
		  </table>

		  <table class="t100 border_bot_s border_top_s border_left_s border_right_s">
			
			<tr class="border_bot_l">
			  <td colspan="6" class="t70 border_right_l">      
				<div class="titulo">Local do Pagamento</div>
				<div class="var">Pagável em qualquer banco até a data de vencimento</div>
			  </td>
			  <td class="t30">      
				<div class="titulo">Vencimento</div>
				<div class="var">${bol.vencimento}</div>
			  </td>
			</tr>

			<tr class="border_bot_l">
			  <td colspan="6" class="t70 border_right_l">      
				<div class="titulo">Frederico Flores - Projeto de Bloco</div>
				<div class="var">Infnet <br>129.124.1524/0001-123 <br>Av. Fictícia 0 - JARDIM, Santo André/SP</div>
			  </td>
			  <td class="t30">      
				<div class="titulo">Agência / Código do Cedente</div>
				<div class="var">0001/0000002-1</div>
			  </td>
			</tr>

			<tr class="border_bot_l">
			  <td colspan="2" class="t15 border_right_l">
				<div class="titulo">Data do Documento</div>
				<div class="var">${bol.vencimento}</div>
			  </td>

			  <td class="t15 border_right_l">
				<div class="titulo">Número do Doc.</div>
				<div class="var">${bol.id}</div>
			  </td>

			  <td class="t15 border_right_l">
				<div class="titulo">Espécie Documento</div>
				<div class="var">${bol.cliente.tipoCliente}</div>
			  </td>

			  <td class="t10 border_right_l">
				<div class="titulo">Aceite</div>
				<div class="var">N</div>
			  </td>

			  <td class="t15 border_right_l">
				<div class="titulo">Data Processament.</div>
				<div class="var">${bol.vencimento}</div>
			  </td>

			  <td class="t30">
				<div class="titulo">Nosso-Número</div>
				<div class="var">${bol.id}</div>
			  </td>
			</tr>

			<tr class="border_bot_l">
				<td class="t14 border_right_l">
				  <div class="titulo">Uso do Banco</div>
				  <div class="var">&nbsp;</div>
				</td>

				<td class="t7 border_right_l">
				  <div class="titulo">CIP</div>
				  <div class="var">000</div>
				</td>

				<td class="t7 border_right_l">
				  <div class="titulo">Carteira</div>
				  <div class="var">00</div>
				</td>

				<td class="t7 border_right_l">
				  <div class="titulo">Moeda</div>
				  <div class="var">R$</div>
				</td>

				<td class="t14 border_right_l">
				  <div class="titulo">Quantidade</div>
				  <div class="var">&nbsp;</div>
				</td>

				<td class="t14 border_right_l">
				  <div class="titulo">Valor</div>
				  <div class="var">${bol.servico.valor}</div>
				</td>

				<td class="t30">
				  <div class="titulo">Valor do Documento</div>
				  <div class="var">${bol.servico.valor}</div>
				</td>
			  </tr>

			  <tr>
				<td colspan="6" class="t70 border_right_l">      
				  <div class="titulo">Informações de responsabilidade do beneficiário</div>
				  <div class="var">&nbsp;</div>
				</td>
				<td class="t30 border_bot_l">      
				  <div class="titulo">Agência / Código do Cedente</div>
				  <div class="var">0000/0000002-1</div>
				</td>
			  </tr>

			  <tr>
				<td colspan="6" class="t70 border_right_l">      
				  <div class="var">${bol.servico.descricao}</div>
				</td>
				<td class="t30 border_bot_l">      
				  <div class="titulo">&nbsp;</div>
				  <div class="var">&nbsp;</div>
				</td>
			  </tr>

			  
			  <tr>
				<td colspan="6" class="t70 border_right_l">      
				  <div class="var">${bol.servico.descricao}</div>
				</td>
				<td class="t30 border_bot_l">      
				  <div class="titulo">(+) Juros / Multa</div>
				  <div class="var">&nbsp;</div>
				</td>
			  </tr>

			  <tr>
				<td colspan="6" class="t70 border_right_l">      
				  <div class="var">${bol.servico.descricao}</div>
				</td>
				<td class="t30 border_bot_l">      
				  <div class="titulo">(+) Outros Acréscimos</div>
				  <div class="var">&nbsp;</div>
				</td>
			  </tr>

			  <tr class="border_bot_s">
				<td colspan="6" class="t70 border_right_l">      
				  <div class="var">${bol.servico.descricao}</div>
				</td>
				<td class="t30">      
				  <div class="titulo">(=) Valor Cobrado</div>
				  <div class="var">${bol.servico.valor}</div>
				</td>
			  </tr>

			  <tr>
				<td colspan="7">
				  <div class="titulo">Nome do Pagador / CPF / CNPJ / Endereço</div>
				  <div class="var">${bol.cliente.nome} <br>000.000.000-00 <br>${bol.cliente.logradouro} ${bol.cliente.complemento} - ${bol.cliente.cidade} ${bol.cliente.uf}</div>
				</td>
			  </tr>
		  </table>

		  
		  <table class="t100 top-margin">
			<tr class="t100">
			  <td class="t100 pull-right">
				<div class="titulo pull-right">Autenticaçao Mecânica - FICHA DE COMPENSAÇÃO</div>
			  </td>
			</tr>
		  </table>

		  
		  <table class="t100 top-margin">
			<td class="t100" nowrap>
			  <img src="/img/espaco.gif" valign="bottom" /><img src="/img/nb.gif"/><img src="/img/ns.gif"/><img src="/img/wb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/ws.gif"/><img src="/img/nb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/nb.gif"/><img src="/img/nb.gif"/><img src="/img/ns.gif"/><img src="/img/wb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/ws.gif"/><img src="/img/nb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/nb.gif"/><img src="/img/nb.gif"/><img src="/img/ns.gif"/><img src="/img/wb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/ws.gif"/><img src="/img/nb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/nb.gif"/><img src="/img/nb.gif"/><img src="/img/ns.gif"/><img src="/img/wb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/ws.gif"/><img src="/img/nb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/nb.gif"/><img src="/img/nb.gif"/><img src="/img/ns.gif"/><img src="/img/wb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/ws.gif"/><img src="/img/nb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/nb.gif"/><img src="/img/nb.gif"/><img src="/img/ns.gif"/><img src="/img/wb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/ws.gif"/><img src="/img/nb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/nb.gif"/><img src="/img/nb.gif"/><img src="/img/ns.gif"/><img src="/img/wb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/ws.gif"/><img src="/img/nb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/nb.gif"/><img src="/img/nb.gif"/><img src="/img/ns.gif"/><img src="/img/wb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/ws.gif"/><img src="/img/nb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/nb.gif"/><img src="/img/nb.gif"/><img src="/img/ns.gif"/><img src="/img/wb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/ws.gif"/><img src="/img/nb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/nb.gif"/><img src="/img/nb.gif"/><img src="/img/ns.gif"/><img src="/img/wb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/ws.gif"/><img src="/img/nb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/nb.gif"/><img src="/img/nb.gif"/><img src="/img/ns.gif"/><img src="/img/wb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/ws.gif"/><img src="/img/nb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/nb.gif"/><img src="/img/nb.gif"/><img src="/img/ns.gif"/><img src="/img/wb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/ws.gif"/><img src="/img/nb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/nb.gif"/><img src="/img/nb.gif"/><img src="/img/ns.gif"/><img src="/img/wb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/ws.gif"/><img src="/img/nb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/nb.gif"/><img src="/img/nb.gif"/><img src="/img/ns.gif"/><img src="/img/wb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/ws.gif"/><img src="/img/nb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/nb.gif"/><img src="/img/nb.gif"/><img src="/img/ns.gif"/><img src="/img/wb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/ws.gif"/><img src="/img/nb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/nb.gif"/><img src="/img/nb.gif"/><img src="/img/ns.gif"/><img src="/img/wb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/ws.gif"/><img src="/img/nb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/nb.gif"/><img src="/img/nb.gif"/><img src="/img/ns.gif"/><img src="/img/wb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/ws.gif"/><img src="/img/nb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/nb.gif"/><img src="/img/nb.gif"/><img src="/img/ns.gif"/><img src="/img/wb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/ws.gif"/><img src="/img/nb.gif"/><img src="/img/ws.gif"/><img src="/img/wb.gif"/><img src="/img/ns.gif"/><img src="/img/nb.gif"/>
			</td>
		  </table>

		  <div class="row top-margin border_top_l">
			<div class="col-12">

			</div>
		  </div>
		  <!-- <br> -->
		</div>

</body>
</html>