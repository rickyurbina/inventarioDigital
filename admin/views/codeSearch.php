<?php
$name = $_POST['name'];
require_once("../models/mdlProductos.php");
$b = new mdlProductos();
$data = $b->mdlCodeSearch($name);

echo json_encode($data);