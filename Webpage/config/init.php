<?php
	// SESSION SETUP
	session_start();
	error_reporting(E_ERROR | E_WARNING); // E_NOTICE by default
	date_default_timezone_set('Europe/Lisbon');
	header("Access-Control-Allow-Origin: *");
	ini_set("max_execution_time", 1200);
	
	// SET BASE DIRECTORY & URL
	//$MAIN_DIR = 'ProjectoSINF/Webpage/';
	//$MAIN_DIR = 'SINF/';
	//$MAIN_DIR_WINDOWS = 'ProjectoSINF/';
	
	// WINDOWS
	$BASE_DIR = '/xampp/htdocs/Webpage/';
	//$BASE_DIR = $_SERVER['DOCUMENT_ROOT'].'/';
	$BASE_URL = 'http://localhost:3000/Webpage/';

	// LINUX / MAC
	
	//$BASE_DIR = '/usr/users2/mieic2012/ei12012/public_html/'  . $MAIN_DIR . 'Webpage/';
	//$BASE_DIR_DB = '/usr/users2/mieic2012/ei12012/public_html/'  . $MAIN_DIR . 'Database/';
	//$BASE_URL = 'http://gnomo.fe.up.pt/~ei12012/' . $MAIN_DIR . 'Webpage/';
	
	$adminLogin = 'admin@rvvo.com';
	$adminPassword = 'admin';
	
	// ERROR LOG
	ini_set("log_errors", 1);
	ini_set("error_log", $BASE_DIR . "php-error.log");

	// DATABASE SETUP
	include_once("connection.php");

	// CHECK PERMISSIONS
	//include_once("permission.php");

	// TRATAMENTO DE MENSAGENS
	include_once("messages.php");

	// INCLUDE EXTERNAL FILES
	include_once("general.php");
?>
