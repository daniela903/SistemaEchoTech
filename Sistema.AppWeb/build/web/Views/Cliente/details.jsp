<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="sistema.entidadesdenegocio.Cliente"%>
<% Cliente cliente = (Cliente) request.getAttribute("cliente");%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="/Views/Shared/title.jsp" />
        <title>Detalles</title>
    </head>
    <body>
        <jsp:include page="/Views/Shared/headerBody.jsp" />  
        <main class="container">   
            <h5>Detalles del Cliente</h5>
            <div class="row">
                <div class="input-field col l4 s12">
                    <input disabled  id="txtNombre" type="text" value="<%=cliente.getNombre()%>">
                    <label for="txtNombre">Nombre</label>
                </div>
                <div class="input-field col l4 s12">
                    <input disabled  id="txtApellido" type="text" value="<%=cliente.getApellido()%>">
                    <label for="txtApellido">Apellido</label>
                </div>
                <div class="input-field col l4 s12">
                    <input disabled  id="txtTelefono" type="text" value="<%=cliente.getTelefono()%>">
                    <label for="txtTelefono">Teléfono</label>
                </div>
                <div class="input-field col l4 s12">
                    <input disabled  id="txtDireccion" type="text" value="<%=cliente.getDireccion()%>">
                    <label for="txtDireccion">Direccion</label>
                </div>
            </div>
            <div class="row">
                <div class="col l12 s12">
                    <a href="Cliente?accion=edit&id=<%=cliente.getId()%>" class="waves-effect waves-light btn blue"><i class="material-icons right">edit</i>Ir modificar</a>                        
                    <a href="Cliente" class="waves-effect waves-light btn blue"><i class="material-icons right">cancel</i>Cancelar</a>                          
                </div>
            </div>         
        </main>
        <jsp:include page="/Views/Shared/footerBody.jsp" />
    </body>
</html>