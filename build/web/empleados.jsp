<%-- 
    Document   : empleados
    Created on : 7/09/2024, 4:21:54 p. m.
    Author     : aguin
--%>
<%@page import="modelo.puesto" %>
<%@page import="java.util.HashMap" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1"> <!--pra que sea responsive=-->
        <title>EMPLEADOS</title>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    </head>
    <body>
        <h1>FORMULARIO EMPLEADOS</h1>
        <a href="index.jsp">Menu</a>
        <div class="container">
        <form action="#" method="post" class="form-group needs-validation" novalidate> <!--get=url, post=ayuda a que no cargen los datos en el link-->
            
            <label for="lbl_id" class="form-label"> <b>ID</b> </label>
            <input type="text" name="txt_id" id="txt_id" value="0" class="form-control" readonly> <!--readonly no permite cambiar los datos=-->
            <div class="valid-feedback">
            Successful
            </div>
            <div class="invalid-feedback">
            Incorrect please enter it again
            </div>
            
            <label for="lbl_codigo" class="form-label"> <b>CODIGO</b> </label>
            <input type="text" name="txt_codigo" id="txt_codigo" placeholder="Ejemplo: E001" pattern="[E]{1}[0-9]{3}" class="form-control" required> <!--gplaceholder sirve para mostrar eriqueta de ayuda=-->
            <div class="valid-feedback">
            Successful
            </div>
            <div class="invalid-feedback">
            Incorrect please enter it again
            </div>           
            
            <label for="lbl_nombres" class="form-label"> <b>NOMBRES</b> </label>
            <input type="text" name="txt_nombres" id="txt_nombres" placeholder="nombre1, nombre2" class="form-control" required> 
            <div class="valid-feedback">
            Successful
            </div>
            <div class="invalid-feedback">
            Incorrect please enter it again
            </div>  
            
            <label for="lbl_apellidos" class="form-label"> <b>APELLIDOS</b> </label>
            <input type="text" name="txt_apellidos" id="txt_apellidos" placeholder="Ejemplo: apellido 1 apellido2" class="form-control" required> 
            <div class="valid-feedback">
            Successful
            </div>
            <div class="invalid-feedback">
            Incorrect please enter it again
            </div>  
            
            <label for="lbl_direccion" class="form-label"> <b>DIRECCION</b> </label>
            <input type="text" name="txt_direccion" id="txt_direccion" placeholder="Ejemplo:calle, av" class="form-control" required> 
            <div class="valid-feedback">
            Successful
            </div>
            <div class="invalid-feedback">
            Incorrect please enter it again
            </div>  
            
            <label for="lbl_telefono" class="form-label"> <b>TELEFONO</b> </label>
            <input type="number" name="txt_telefono" id="txt_telefono" placeholder="Ejemplo:2334551" class="form-control" required> 
            <div class="valid-feedback">
            Successful
            </div>
            <div class="invalid-feedback">
            Incorrect please enter it again
            </div>  
            
            <label for="lbl_fn" class="form-label"> <b>NACIMIENTO</b> </label>
            <input type="date" name="txt_fn" id="txt_fn" placeholder="Ejemplo: aaaa-MM-dd" class="form-control" required> 
            <div class="valid-feedback">
            Successful
            </div>
            <div class="invalid-feedback">
            Incorrect please enter it again
            </div>  
            
            <label for="lbl_puesto" class="form-label"> <b>PUESTO</b> </label>
            <select name="drop_puesto" id="drop_puesto" class="form-select" required> 
                <option selected disabled value="">SELECCIONE AQUI</option>
                <%
                puesto Puesto = new puesto ();
                HashMap<String,String> drop = puesto.drop_puesto();
                for (String i:drop.keySet ()){
                    out.println ("<option Value='" + i + "'>"+ drop.get (i)+"</option>");
                    }
                %>
            </select>
            
            <button name="btn_crear" id="btn_crear" class="btn btn-primary" value="crear"><i class="bi bi-floppy2-fill"></i> Crear</button> <!--pattern="[E]{1}[0-9]{3}" SE UTILIZA ESTABLECER DATOS A INGRESAR=-->
            <button name="btn_actualizar" id="btn_actualizar" class="btn btn-primary" value="actualizar"><i class="bi bi-pencil"></i>Actualizar</button>
            <button name="btn_borrar" id="btn_borrar" class="btn btn-primary" value="borrar">Borrar</button>

        </form> 
    </div>
        <script>
            // Example starter JavaScript for disabling form submissions if there are invalid fields
(() => {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  const forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.from(forms).forEach(form => {
    form.addEventListener('submit', event => {
      if (!form.checkValidity()) {
        event.preventDefault()
        event.stopPropagation()
      }

      form.classList.add('was-validated')
    }, false)
  })
})()
        </script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</body>
</html>
