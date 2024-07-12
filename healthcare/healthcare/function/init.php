<?php
session_start();

// date_default_timezone_set('Asia/Jakarta');
date_default_timezone_set('Asia/Kuala_Lumpur');
const ADMIN_ROLE = 1;

require_once 'db.php';
require_once 'array.php';
require_once 'Request.php';
require_once 'helper.php';
require_once 'query.php';
require_once 'validation.php';
require_once 'File.php';
require_once 'session.php';
require_once 'date.php';
require_once "partials.php";
