<!DOCTYPE html>

<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->

<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<cfset curr_page = replaceNoCase(replaceNoCase(CGI.SCRIPT_NAME,'/',''),'.cfm','')/>
<cfswitch expression="#curr_page#" >
	<cfcase value="index">
		<cfset pageTitle = "HOME"/>
	</cfcase>
	<cfcase value="about">
		<cfset pageTitle = "ABOUT"/>
	</cfcase>
	<cfcase value="contact">
		<cfset pageTitle = "CONTACT"/>
	</cfcase>
	<cfcase value="meeting">
		<cfset pageTitle = "MEETING INFO"/>
	</cfcase>
	<cfcase value="archive">
		<cfset pageTitle = "ARCHIVE #dateformat(now(),'yyyy')#"/>
	</cfcase>
	<cfdefaultcase>
		<cfset pageTitle = "\0/ Bacon!"/>
	</cfdefaultcase>
</cfswitch>
<head>
	<meta charset="UTF-8">

	<!-- Remove this line if you use the .htaccess -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<meta name="viewport" content="width=device-width">

	<meta name="description" content="Designa Studio, a HTML5 / CSS3 template.">
	<meta name="author" content="Sylvain Lafitte, Web Designer, sylvainlafitte.com">

	<title><cfoutput>#pageTitle#</cfoutput> // NCFAUG</title>

	<link rel="shortcut icon" type="image/x-icon" href="/img/favicon.ico">
	<!---<link rel="shortcut icon" type="image/png" href="favicon.png">--->

	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="/css/style.css">
	<link rel="stylesheet" href="/css/socialsprites.css">	

	<!--[if lt IE 9]>
	<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
</head>

<body>
<!-- Prompt IE 7 users to install Chrome Frame -->
<!--[if lt IE 8]><p class=chromeframe>Your browser is <em>ancient!</em> <a href="http://browsehappy.com/">Upgrade to a different browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to experience this site.</p><![endif]-->
