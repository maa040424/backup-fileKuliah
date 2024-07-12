<?php

function hasSession(string $name): bool
{
  return isset($_SESSION[$name]);
}

function login(?string $name = null)
{
  if ($name) {
    return isset($_SESSION['login'][$name]) ? $_SESSION['login'][$name] : null;
  } else {
    if (isset($_SESSION['login'])) {
      return $_SESSION['login'];
    } else {
      return false;
    }
    
  }
}
