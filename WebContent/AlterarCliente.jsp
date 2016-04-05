<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="to.ClienteTO" %>
        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>cerveja.biz - Alterar Cliente</title>

            <link href="css/bootstrap.min.css" rel="stylesheet">
            <link href="css/style.css" rel="stylesheet">
        </head>

        <body>
            <%ClienteTO to=( ClienteTO)request.getAttribute( "cliente"); %>
                <!-- Barra superior com os menus de navegação -->
                <nav class="navbar navbar-inverse navbar-fixed-top">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="index.html">cerveja.biz</a>
                        </div>
                        <div id="navbar" class="navbar-collapse collapse">
                            <ul class="nav navbar-nav navbar-right">
                                <li><a href="listar_clientes.html">Clientes</a>
                                </li>
                                <li><a href="#">Marcas</a>
                                </li>
                                <li><a href="#">Estilos</a>
                                </li>
                                <li><a href="#">Países</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- Container Principal -->
                <div id="main" class="container">
                    <h3 class="page-header">Alterar Cliente #<%=to.getId() %></h3>
                    <!-- Formulario para alteração de clientes -->
                    <form action="ManterCliente.do" method="post">
                        <!-- area de campos do form -->
                        <input type="hidden" name="id" value="<%=to.getId() %>" />
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="nome">Nome</label>
                                <input type="text" class="form-control" name="nome" id="nome" required maxlength="100" placeholder="nome completo" value="<%=to.getNome()%>">
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="fone">Celular</label>
                                <input type="tel" class="form-control" name="fone" id="fone" maxlength="15" pattern="(?:\(\d{2}\)|\d{2})[- ]?\d{5}[- ]?\d{4}" placeholder="opcional; celular com ddd no formato (99) 99999-9999" value="<%=to.getFone()%>">
                            </div>

                            <div class="form-group col-md-6">
                                <label for="email">E-Mail</label>
                                <input type="email" class="form-control" name="email" id="email" required maxlength="60" placeholder="email obrigatório" value="<%=to.getEmail()%>">
                            </div>
                        </div>
                        <hr />
                        <div id="actions" class="row">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary" name="acao" value="Alterar">Salvar</button>
                                <a href="listar_clientes.html" class="btn btn-default">Cancelar</a>
                            </div>
                        </div>
                    </form>
                </div>
                <script src="js/jquery.min.js"></script>
                <script src="js/bootstrap.min.js"></script>
        </body>

        </html>