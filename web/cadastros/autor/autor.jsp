<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<jsp:include page="/header.jsp"/>
<jsp:include page="/menu.jsp"/>

               <h2>Autores</h2>
               <table id="datatable" class="display">
                   <thead>
                       <tr>
                           <th align="left">ID</th>
                           <th align="left">Descri��o</th>
                           <th align="right"></th>
                           <th align="right"></th>
                       </tr>
                   </thead>
                   <tbody>
                       <c:forEach var="autor" items="${autors}">
                           <tr>
                               <td align="left">${autor.idAutor}</td>
                               <td align="left">${autor.descricao}</td>
                               <td align="center">
                                   <a href="${pageContext.request.contextPath}/AutorExcluir?idAutor=${autor.idAutor}">
                                       Excluir</a></td>
                                       <td>
                                       <a href="${pageContext.request.contextPath}/AutorCarregar?idAutor=${autor.idAutor}">
                                       Alterar</a></td>
                           </tr>
                       </c:forEach>
                   </tbody>
               </table>
               
               <div align="center">
                   <a href="${pageContext.request.contextPath}/AutorNovo">Novo</a>
                   <a href="index.jsp">Voltar � P�gina Inicial </a>
               </div>
               
                       <script>
            
            $(document).ready(function(){
              console.log('entrei ready');  
                $('#datatable').DataTable({
                   "oLanguage":{
                       "sProcessing": "Processando...",
                       "sLengthMenu": "Mostrar _MENU_registros", 
                       "sZeroRecords": "Nenhum registro encontrado.",
                       "sInfo": "Mostrando de _START_at� _END_de _TOTAL_registros",
                       "sInfoEmpty": "Mostrando de 0 at� 0 de 0 registros",
                       "sInfoFiltered": "",
                       "sInfoPostFix": "",
                       "sSearch": "Buscar:",
                       "sUrl": "",
                       
                       "oPaginate": {
                           "sFirst": "Primeiro",
                           "sPrevious": "Anterior",
                           "sNext": "Seguinte",
                           "sLast": "�ltimo"
                       }
                   }          
               });
            });     
        </script>
        
         <%@include file="/footer.jsp"%>

