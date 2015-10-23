<?php
	// SESSION SETUP
	session_start();
	error_reporting(E_ERROR | E_WARNING); // E_NOTICE by default
	date_default_timezone_set('Europe/Lisbon');

	// SET BASE DIRECTORY & URL
	$MAIN_DIR = 'ProjectoSINF/Webpage/';
	$BASE_DIR = '/Users/Miguel Moreira/Documents/Webpages/' . $MAIN_DIR;
	$BASE_URL = 'http://localhost/' . $MAIN_DIR;

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
