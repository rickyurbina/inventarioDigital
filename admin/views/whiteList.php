<!-- Contenido  -->
<?php
    if($pagina=="inicio" ||
        $pagina == "salidas" || 
        $pagina == "nvaSalidas" || 
        $pagina == "salidasAdd" || 
        $pagina == "salidasList" || 
        $pagina == "salidasEdita" ||
        $pagina == "salidasEdit" || 
        $pagina == "salidaDel" || 
        $pagina == "entradas" || 
        $pagina == "entradaAdd" || 
        $pagina == "entradasList" || 
        $pagina == "entradasEdit" || 
        $pagina == "entradaEdit_" || 
        $pagina == "entradaDel" || 
        $pagina == "salidas" ||
        $pagina == "search" ||
        $pagina == "asistencia" ||
        $pagina == "mensualidad" ||
        $pagina == "venta" ||
        $pagina == "ventaList" ||
        $pagina == "userEdit" || 
        $pagina == "userList" || 
        $pagina == "userAdd" ||
        $pagina == "userDel" ||
        $pagina == "proveedorEdit" || 
        $pagina == "proveedorList" || 
        $pagina == "proveedorAdd" ||
        $pagina == "proveedorDel" ||
        $pagina == "brandAdd" ||
        $pagina == "brandList" ||
        $pagina == "brandEdit" ||
        $pagina == "brandDel" ||
        $pagina == "eqTypeAdd" ||
        $pagina == "eqTypeList" ||
        $pagina == "eqTypeEdit" ||
        $pagina == "eqTypeDel" ||
        $pagina == "clientAdd" ||
        $pagina == "clientDel" ||
        $pagina == "clientEdit" ||
        $pagina == "clientList" ||
        $pagina == "socioAdd" ||
        $pagina == "socioDel" ||
        $pagina == "socioEdit" || 
        $pagina == "socioList" ||
        $pagina == "productAdd" ||
        $pagina == "productDel" ||
        $pagina == "productEdit" || 
        $pagina == "productList" || 
        $pagina == "productStatus" ||
        $pagina == "logOut" ||
        $pagina == "search" )
        {
            include "views/".$pagina.".php";
        }
?>
<!-- fin de contenido -->