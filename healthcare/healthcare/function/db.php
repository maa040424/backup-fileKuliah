<?php
function connect_DB()
{
  $conn = new mysqli('localhost', 'root', '', 'healthcare');

  if ($conn->connect_error) {
    echo "Database Error : $conn->connect_error";
    die;
  }

  return $conn;
}

$conn = null;




