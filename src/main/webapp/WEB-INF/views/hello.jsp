<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd" >
<html lang="en">
<head>
<script type="text/javascript" language="JavaScript1.2">
	var _html_start_time = (new Date()).getTime();
</script>
<title>TELUS Technology Strategy: Performance Test Toolkit</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="PRAGMA" content="NO-CACHE">
<!--  <link rel="shortcut icon" href="/images/interface/logo.ico"> -->
<link href="<c:url value="/resources/css/default.css" />"
	title="default" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="<c:url value="/resources/css/jquery-ui.css" />">


<script type="text/javascript" language="JavaScript1.2">
	// Locale Info
	decimalSeparator = ".";
	groupingSeparator = ",";
	_WEEK_START_DAY = 1;
	function getDateFormat() {
		return "YYYY-MM-DD";
	}
	function getDateFormatUILabel() {
		return "YYYY-MM-DD";
	}
	function getTimeFormat() {
		return "HH:MM";
	}
	function isRtl() {
		return false;
	}
</script>

<script type='text/javascript' language='JavaScript1.2'>
	if (typeof (_jsp_start_time) == 'undefined') {
		_jsp_start_time = '1457466200827';
	}
	if (typeof (_CSRF_TOKEN_NAME) == 'undefined') {
		var _CSRF_TOKEN_NAME = 'sgjy';
		var _CSRF_TOKEN_VALUE = '4070ac7f\x2D89e9\x2D4560\x2Daffa\x2D592921b0b48c';
	}
	_session_timeout = '1200';
	document.cookie = 'lastAccessTime=' + new Date().getTime();
	var enablePinnedActionBar = true;
	function getMessage(label) {
		var bundle = new Array();
		bundle['label.name'] = "Name";
		bundle['label.rfx'] = "RFX";
		bundle['label.loading'] = "Loading";
		bundle['label.today'] = "Today";
		bundle['label.expandCollapse'] = "Expand\x20\x2F\x20Collapse";
		bundle['label.feeType'] = "Fee\x20Rate\x20Type";
		bundle['label.capitalizedFlag'] = "Capitalized\x3F";
		bundle['label.category'] = "Category";
		bundle['label.description'] = "Description";
		bundle['label.rate'] = "Rate";
		bundle['label.unit'] = "Unit";
		bundle['label.maxUnits'] = "Maximum\x20Units";
		bundle['label.product'] = "Product";
		bundle['label.january'] = "January";
		bundle['label.february'] = "February";
		bundle['label.march'] = "March";
		bundle['label.april'] = "April";
		bundle['label.may'] = "May";
		bundle['label.june'] = "June";
		bundle['label.july'] = "July";
		bundle['label.august'] = "August";
		bundle['label.september'] = "September";
		bundle['label.october'] = "October";
		bundle['label.november'] = "November";
		bundle['label.december'] = "December";
		bundle['label.sunday'] = "Sunday";
		bundle['label.monday'] = "Monday";
		bundle['label.tuesday'] = "Tuesday";
		bundle['label.wednesday'] = "Wednesday";
		bundle['label.thursday'] = "Thursday";
		bundle['label.friday'] = "Friday";
		bundle['label.saturday'] = "Saturday";
		bundle['label.su'] = "Su";
		bundle['label.mo'] = "Mo";
		bundle['label.tu'] = "Tu";
		bundle['label.we'] = "We";
		bundle['label.th'] = "Th";
		bundle['label.fr'] = "Fr";
		bundle['label.sa'] = "Sa";
		bundle['label.save'] = "Save";
		bundle['label.edit'] = "Edit";
		bundle['label.cancel'] = "Cancel";
		bundle['label.expandPreviewPane'] = "Expand\x20preview\x20pane";
		bundle['label.collapsePreviewPane'] = "Collapse\x20preview\x20pane";
		bundle['label.start'] = "Start";
		bundle['label.end'] = "End";
		bundle['label.selectedWorkSchedules'] = "label.selectedWorkSchedules";
		bundle['label.uomUnitType'] = "UOM\x2FUnit\x20Type";
		bundle['label.refresh'] = "Refresh";
		bundle['label.remove'] = "Remove";
		bundle['label.calculated'] = "Calculated";
		bundle['label.calculatedMouseOver'] = "This\x20is\x20calculated\x20based\x20on\x20the\x20total\x20monthly\x20rate\x20\x2F\x20total\x20number\x20of\x20work\x20days\x20in\x20that\x20month\x20\x2F\x20total\x20number\x20of\x20hours\x20per\x20day.";
		bundle['label.yes'] = "Yes";
		bundle['label.no'] = "No";
		bundle['label.success'] = "Success\x21";
		bundle['label.draftStatus'] = "Draft";
		bundle['label.verify'] = "Verify";
		bundle['label.details'] = "Details";
		bundle['label.owner'] = "Owner";
		bundle['label.logout'] = "Log\x20Out";
		bundle['label.keepWorking'] = "Keep\x20Working";
		bundle['label.secondsText'] = "Seconds";
		bundle['label.sessionTimeoutWarning'] = "Session\x20Timeout\x20Warning";
		bundle['label.sessionTimeoutWarningMessage'] = "Your\x20Session\x20is\x20about\x20to\x20Timeout\x20in";
		bundle['label.more'] = "More";
		bundle['label.rateDefinedOnFees'] = "Defined\x20on\x20Fees";
		bundle['label.addOrRemoveCustomField'] = "Add\x20or\x20Remove\x20Custom\x20Field";
		bundle['label.pleaseUpdateOtherSCF'] = "Only\x20one\x20segmented\x20field\x20can\x20be\x20edited\x20at\x20a\x20time.\x0D\x0AThere\x20is\x20an\x20open\x20segmented\x20field,\x20click\x20the\x20\x27Update\x27\x20or\x20\x27Cancel\x27\x20link\x20to\x20close\x20it.";
		bundle['label.pleaseUpdateSCF'] = "In\x20order\x20to\x20continue,\x20you\x20need\x20to\x20complete\x20the\x20open\x20segmented\x20field.\x20Click\x20the\x20Update\x20or\x20Cancel\x20link\x20to\x20complete\x20the\x20changes\x20or\x20cancel\x20the\x20changes\x20to\x20the\x20segmented\x20field.";
		bundle['label.itemGroup'] = "Item\x20Group";
		bundle['label.calculateFeeRateAmount'] = "Calculate\x20Fee\x20Rate\x20Amount";
		bundle['label.ago'] = "ago";
		bundle['label.fromNow'] = "from\x20now";
		bundle['label.anyMomentNow'] = "any\x20moment\x20now";
		bundle['label.lessThanAMinute'] = "less\x20than\x20a\x20minute";
		bundle['label.aboutAMinute'] = "about\x20a\x20minute";
		bundle['label.aboutAnHour'] = "about\x20an\x20hour";
		bundle['label.aDay'] = "a\x20day";
		bundle['label.aboutAMonth'] = "about\x20a\x20month";
		bundle['label.aboutAYear'] = "about\x20a\x20year";
		bundle['label.myReportMinutes'] = "\x7B0\x7D\x20minutes";
		bundle['label.myReportDays'] = "\x7B0\x7D\x20days";
		bundle['label.myReportHours'] = "about\x20\x7B0\x7D\x20hours";
		bundle['label.myReportMonths'] = "\x7B0\x7D\x20months";
		bundle['label.myReportYears'] = "\x7B0\x7D\x20Years";
		bundle['label.noDataFound'] = "No\x20items\x20found";
		bundle['label.site'] = "Site";
		bundle['label.parentSite'] = "Parent\x20Site";
		bundle['label.groupBy'] = "Group\x20By";
		bundle['label.saveAsCsv'] = "Save\x20as\x20CSV";
		bundle['label.clearSort'] = "Clear\x20Sort";
		bundle['label.clearFilters'] = "Clear\x20Filters";
		bundle['label.expandAll'] = "Expand\x20All";
		bundle['label.collapseAll'] = "Collapse\x20All";
		bundle['label.stacked'] = "Stacked";
		bundle['label.exploreFeePricing'] = "Explore\x20Pricing\x20Options";
		bundle['label.workerBasedFee'] = "Defined\x20on\x20Fees\x20\x2D\x20Fee\x20with\x20SOW\x20Workers";
		bundle['label.atleastOneCostCenterShouldBeSelected'] = "Please\x20select\x20at\x20least\x20one\x20Cost\x20Center.";
		bundle['label.clickToSort'] = "Click\x20to\x20sort";
		bundle['label.itemsFound2'] = "Items\x20Found";
		bundle['label.continue'] = "Continue";
		bundle['label.optionalLower'] = "optional";
		bundle['label.appMaintWarningSubject'] = "System\x20Maintenance\x20Warning";
		bundle['label.appMaintWarningRestartMessage'] = "Warning\x21\x20System\x20maintenance\x20is\x20scheduled\x20to\x20occur\x20in\x20\x7B0\x7D\x20minutes.\x20To\x20avoid\x20being\x20systematically\x20signed\x20out,\x20click\x20the\x20Sign\x20Out\x20button\x20now\x20and\x20then\x20immediately\x20sign\x20back\x20in.\x20Your\x20can\x20then\x20continue\x20working\x20uninterrupted.";
		bundle['label.appMaintWarningShutdownMessage'] = "Warning\x21\x20System\x20maintenance\x20is\x20scheduled\x20to\x20occur\x20in\x20\x7B0\x7D\x20minutes.\x20Please\x20sign\x20out\x20by\x20then\x20to\x20avoid\x20losing\x20any\x20work.\x20A\x20maintenance\x20screen\x20will\x20be\x20displayed\x20during\x20this\x20time.\x20Once\x20the\x20maintenance\x20screen\x20is\x20removed,\x20you\x20may\x20sign\x20back\x20into\x20the\x20system.";
		bundle['label.viewAllErrorsMsg'] = "View\x20all\x20error\x20messages";
		bundle['label.closeAllErrorsMsg'] = "Close\x20all\x20error\x20messages";
		bundle['label.changeFeeOwner'] = "Change\x20Fee\x20Owner";
		return bundle[label];
	}
	function replaceValue(labelValue, min) {
		var res = labelValue;
		var label = res.replace("{0}", min);
		return label;
	}
	function linkAccLoading() {
		$("body").addClass("loadingMask");
	}
	window['__cidAttrName'] = '__cid';
	window[__cidAttrName] = 'cid73627606';
	window['__requestThreadId__'] = '\x2Fmessage_center.do\x20GET\x4073705674893600';
	window['ENABLE_TAB_SESSIONS'] = true;
</script>
<script type="text/javascript" language="JavaScript1.2"
	src="<c:url value="/resources/js/firefoxScript.js" />"></script>
<script type="text/javascript" language="Javascript1.2"
	src="<c:url value="/resources/js/jquery.min.js" />"></script>
<script type="text/javascript" language="Javascript1.2"
	src="<c:url value="/resources/js/jquery.plugins.min.js" />"></script>
<script type="text/javascript" language="Javascript1.2"
	src="<c:url value="/resources/js/jquery.ui.js" />"></script>
<script type="text/javascript" language="Javascript1.2"
	src="<c:url value="/resources/js/fieldglass_default.js" />"></script>
<script type="text/javascript" language="Javascript1.2"
	src="<c:url value="/resources/js/FGTooltip.js" />"></script>
<script type="text/javascript" language="Javascript1.2"
	src="<c:url value="/resources/js/rate_form_tag.js" />"></script>
<script type="text/javascript" language="Javascript1.2"
	src="<c:url value="/resources/js/rate_schedule_form_tag.js" />"></script>
<script type="text/javascript" language="Javascript1.2"
	src="<c:url value="/resources/js/FGBroadcaster.js" />"></script>
<script type="text/javascript" language="Javascript1.2"
	src="<c:url value="/resources/js/FGSessionReviver.js" />"></script>

<script type='text/javascript' language='JavaScript1.2'>
	$(document).ready(function() {
		if (window.parent == window) {
			try {
				new FG.SessionReviver({
					warningPeriodBeforeTimeoutSeconds : 120,
					serverSessionTimeoutSeconds : 1200,
					csrfTokenName : 'sgjy',
					csrfTokenValue : '4070ac7f-89e9-4560-affa-592921b0b48c',
					autoReviveSessionOnFormChange : true
				}).enable();
			} catch (e) {
			}
		}
	});
</script>



<script type="text/javascript" language="JavaScript1.2">
	var openMenuMode = false;
	var selectedMenuTitle = null;
</script>

<script type="text/javascript" language="JavaScript1.2"
	src="<c:url value="/resources/js/calendar.js" />"></script>
<script type="text/javascript" language="JavaScript1.2"
	src="<c:url value="/resources/js/fieldglass_ajax.js" />"></script>
<script type="text/javascript" language="Javascript1.2"
	src="<c:url value="/resources/js/FusionCharts.js" />"></script>
<script type="text/javascript" language="Javascript1.2"
	src="<c:url value="/resources/js/jquery.timeago.js" />"></script>




<script type="text/javascript" language="JavaScript1.2"
	src="<c:url value="/resources/js/menus_3.js" />"></script>


<script type="text/javascript" language="JavaScript1.2">
	document.onmousedown = documnetOnMouseDown;
	window.onfocus = clearOpenMenuMode;
	initFusionCharts(); // needs to be before onload function.

	$(function() {
		initBrowserLayout();

		initMenuLayout();
		initSocialBar();
		showAdvisor(true);
		if (typeof advisorHideTime != 'undefined') {
			window.setTimeout('hideAdvisor();', advisorHideTime);
		}
		if (window.name != "helpWin") {
			//to attach the onmousin/out events to all buttons
			attachEventsToButtons();

			// for CR 36022
			updateModuleColumns();
			window.name = "FgBase";
		} else {
			attachEventsToHelpButtons();

			// for CR 36022
			updateModuleColumns();
			window.name = "helpWin";
		}

	});
</script>


<!-- Pagespecific javascript-->

<script type="text/javascript" language="JavaScript1.2">
	$(function() {
		updateColors();
		updateReadStatus();
		updateRowSelection();
		$('.notificationTypeChk').click(updateColors);
		$("#mcMenuMessage").hide();
	})

	function updateColor(selector, className) {
		if ($(selector).is(":checked")) {
			$(selector).parent().parent().addClass(className);
		} else {
			$(selector).parent().parent().removeClass(className);
		}
	}
	function updateColors() {
		updateColor("#showChat", "chatColor");
		updateColor("#showReminder", "reminderColor");
		updateColor("#showStar", "starColor");
		updateColor("#showQuestion", "questionColor");
		updateColor("#showNotification", "notificationColor");
		updateColor("#showBroadcast", "broadcastColor");
		updateColor("#showAlert", "alertColor");
	}

	function selectAllTypes() {
		$('.notificationTypeChk').attr("checked", true);
		updateColors();

	}
	function deSelectAllTypes() {
		$('.notificationTypeChk').attr("checked", false);
		updateColors();

	}

	function updateReadStatus() {
		$('#message_center_list  tr > td:first-child').each(function() {
			if ($(this).text() == "28") {
				$(this).siblings().css("font-weight", "bold");
			}
		});
	}

	function getDialogArgs() {

		var objectIds = new Array();
		var dialogArg = new Object();
		var checkboxes = document.getElementsByName("cSelCheckBox");
		var index = 0;
		if (checkboxes && checkboxes.length > 0) {
			for (var i = 0; i < checkboxes.length; i++) {
				if (checkboxes[i].checked) {
					objectIds[index] = checkboxes[i].value;
					index++;
				}
			}
		}

		dialogArg.objectIds = objectIds;
		if (objectIds.length == 0) {
			alert("Please select a message");
			return null;
		}
		return dialogArg;
	}

	function buildUrl(url, dialogArg) {
		if (dialogArg && dialogArg.objectIds && dialogArg.objectIds.length == 1) {
			url += "&objectId=" + dialogArg.objectIds[0];
		}

		if (dialogArg && dialogArg.objectIds) {
			url += "&itemCount=" + dialogArg.objectIds.length;
		}
		return url
	}
	function removeNotifications() {

		var dialogArg = getDialogArgs();
		if (dialogArg == null) {
			return;
		}

		var url = "action_remove_notifications.do?recipientId=z16020919361241708750904&type=0";
		url = buildUrl(url, dialogArg);
		openModal(url, dialogArg);
	}

	function markAsReadNotifications() {

		var dialogArg = getDialogArgs();
		if (dialogArg == null) {
			return;
		}

		$("#markAsReadObjectIds").val(dialogArg.objectIds.join(","));
		submitActionAjax(
				$("#removeNotificationsForm").get(0),
				"Mark as Read",
				"/action_remove_notifications.do?recipientId=z16020919361241708750904",
				markAsReadCallBack);
	}
	function markAsReadCallBack(data) {
		if (trim(data) == "success") {
			$('#message_center_list  input:checked').each(function() {
				$(this).parent().siblings().css("font-weight", "normal");
			});
			$("[name='cSelCheckBox']").attr('checked', false);
			$("#numberOfItemseSelected").html("0");
		} else {
			alert("Unknown Error.");
		}
	}

	function updateRowSelection() {
		$("#message_center_list td").css("cursor", "pointer");
		$("#message_center_list td").click(
				function() {
					var row = null;
					if (this != null) {
						if (this.cellIndex < 2) {
							return;
						}
						row = $(this).parent();
					}
					if (row != null && row.get(0).cells.length > 2) {
						var url = "/notification_detail.do?id="
								+ $(row.get(0).cells[2]).text();
						url = addCSRFTokenToURL(url);
						location.href = url;
					}
				});
	}
</script>
<link href="<c:url value="/resources/css/message_center.css" />"
	title="default" rel="stylesheet" type="text/css" />



</head>

<body class="layoutBase" onbeforeunload="beforeUnload()">
	<!--Div to disable user interaction on page while Ajax calls being executed-->

	<div id="interfaceBlocker"
		style="text-align: center; display: none; vertical-align: middle;">
		<div style="vertical-align: middle; top: 40%; position: absolute;">
			<img
				src="<c:url value="/resources/images/interface/ajax-loader-big.gif" />"
				alt="loading..">
		</div>
	</div>

	<div id="main">
		<div id="header">
			<div id="left">
				<a href="/worker_desktop.do"><img
					src="<c:url value="/resources/images/logos/TELUS-logo.svg" />"
					border=0 alt="Home"></a> <span
					style="font-size: 10pt; font-weight: bold; color: red; margin-left: 10px; display: inline-block; vertical-align: top; padding-top: 5px">&nbsp;</span>
			</div>
			<div id="right">
				<div id="linkDiv" class="noPrint">
					<ul id="rightCornerList">
						</li>
						<li class="box" id="helpMenuOpener" tabIndex="0" role="menu"
							aria-label="Help"><div id="helpicon" class="helpicon"
								title="Help"></div>
							<ul class="mega" role="menu" id="helpMenu">
								<li tabIndex="0" class="item" role="menuitem"
									id="helpMenu_3_onlineHelp" title="Help menu">Online Help</li>
								<li tabIndex="0" class="item" role="menuitem"
									id="helpMenu_3_releaseNotes" title="Help menu">Release
									Notes</li>
								<li tabIndex="0" class="item" role="menuitem"
									id="helpMenu_3_referenceLibrary" title="Help menu">Reference
									Library</li>
								<li tabIndex="0" class="item" role="menuitem"
									id="helpMenu_3_submitHelpTicket" title="Help menu">Submit
									Support Case</li>
								<li tabIndex="0" class="item" role="menuitem"
									id="helpMenu_3_contactUs" title="Help menu">Contact Us</li>
								<li tabIndex="0" class="item" role="menuitem"
									id="helpMenu_3_about" title="Help menu">About...</li>
							</ul></li>
						<li class="box" id="accountOpener" tabIndex="0"><div
								id="activelinkedUserName" class="activelinkedUserName clearfix">
								<div class="linkedUserName" title="">
									<span class="vizHide">Name:</span>Zhang, Yongqiang
								</div>
								<span id="linkDivMenuHandle" class="linkDivExpand"
									title="Expand / Collapse"></span>
								<div class="noCompCode"></div>
							</div>
							<ul id="accountMenu" class="mega" style="display: none;">
								<li class="header">Personal Settings</li>
								<li class="ProfilePicPan"></li>
								<li class="personalSettingsPan"><ul
										class="personalSettings clearfix">
										<li class="myProfile" role="link"
											onClick="location.href=addCSRFTokenToURL('/my_profile.do')"
											tabIndex="0"><div class="icon"></div>My Profile
											<div class="greyDesc">View and edit personal
												information</div></li>
										<li class="myPreferences" role="link"
											onClick="location.href=addCSRFTokenToURL('/my_preferences.do')"
											tabIndex="0"><div class="icon"></div>My Preferences
											<div class="greyDesc">Change Locale, Home page and
												Message Settings</div></li>
									</ul></li>
								<li class="signOutPan" aria-label="Sign Out"><a
									class="signOut" href="/logout.jsp">Sign Out</a></li>
							</ul></li>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<!--HEADER END-->
		<!-- 
		<div id="oDownload" style="display: none"></div>
		<input id="widths" type="hidden"> <input id="listId"
			type="hidden">
-->
		<!-- MENU BAR -->

		<!-- MENU BAR -->
		<!-- 
		<div class="mainMBar1 clearfix">
			<div class="mainMBar2 clearfix">
				<span class="mainMBar3"></span>
				<ul id="menuBarId" class="menu">
					<li class="menuLink" id="homeMenuTitle"
						style="border-left: 0 none;"><a href="/worker_desktop.do "
						title="Home"></a></li>
					<li class="menuOpener" id="viewMenuTitle"><a href="#">View</a>
						<div id="viewMenu" class="mega">
							<ul class="menuColumns clearfix">
								<li class="column"><div>
										<ul class="columnList">
											<li class="header myItems" id="viewMenu_3_myItems_header">My
												Items</li>
											<li class="item" id="viewMenu_3_messages"><a href='#'
												id="viewMenu_3_messages_link">Messages</a></li>
											<li class="item" id="viewMenu_3_myCostCenters"><a
												href='#' id="viewMenu_3_myCostCenters_link">My Cost
													Centers</a></li>
										</ul>
									</div></li>
								<li class="column"><div>
										<ul class="columnList">
											<li class="item" id="viewMenu_3_timeSheets"><a href='#'
												id="viewMenu_3_timeSheets_link">Time Sheets</a></li>
											<li class="item" id="viewMenu_3_expenseSheets"><a
												href='#' id="viewMenu_3_expenseSheets_link">Expense
													Sheets</a></li>
											<li class="item" id="viewMenu_3_milestone"><a href='#'
												id="viewMenu_3_milestone_link">Milestone</a></li>
										</ul>
									</div></li>
							</ul>
						</div></li>
					<li class="menuOpener" id="createMenuTitle"><a href="#">Create</a>
						<div id="createMenu" class="mega">
							<ul class="menuColumns clearfix">
								<li class="column"><div>
										<ul class="columnList">
											<li class="item" id="createMenu_3_expenseSheet"><a
												href='#' id="createMenu_3_expenseSheet_link">Expense
													Sheet</a></li>
										</ul>
									</div></li>
							</ul>
						</div></li>
				</ul>

			</div>
			-->
		<!--MENU END-->


		<!-- 
			<div class="printLine"></div>
 -->

		<!--BODY START-->
		<div class="contentWrapper">
			<ul id="listpanlink" class="clearfix emptyCell ">
				<li class="listLink fr"><a tabIndex="0" class="helpLink"
					onmouseenter="skipDisableButtons=true;"
					href="javascript:openOnlineHelp(0, 'message_center')">Page Help</a></li>
			</ul>
			<div class="badge clearfix">
				<h1>
					<div class="titleheaderpan fl list_notification">Control
						Panel</div>
				</h1>
			</div>

			<div id="list">


				<form name="cSelForm" method="post" style="margin: 0px;"
					id="cSelForm" action="/message_center.do"
					onsubmit="return  listViewValidationOnSubmit(this);">
					<table class="layoutTbl">

						<tr>
							<td class="mcLeftCell">
								<div id="mcLeftPanel">
									<div style="padding: 0px 16px 12px 16px">
										<div>
											<div class="mc_label">
												<label for="message_center_list_subject_sch">Keyword</label>
											</div>
											<input type="text" name="message_center_list_subject_sch"
												id="message_center_list_subject_sch" value=""
												style="width: 190px"
												onkeydown="listViewKeyPressEvent(event,'cSelForm')">
											<div class="formElementInstruction"
												style="font-size: 9px; padding-top: 2px; white-space: normal">Press
												'Enter' or click 'Filter Plans'.</div>
										</div>

									</div>
									<div style="padding: 12px 16px; border-top: 1px solid #d3e3ed">
										<div class="mc_label">Test Type</div>
										<div style="margin-bottom: 6px">
											<span tabIndex="0" class="actionLink actionLinkText pr12px"
												role="link" onclick="selectAllTypes()"
												style="border-right: 1px solid #dcdcdc">Select All</span> <span
												tabIndex="0" class="actionLink actionLinkText" role="link"
												onclick="deSelectAllTypes()">Select None</span>
										</div>

										<ul class="messagetypeList">









											<li>
												<div class="blueBox clearfix">
													<div class="fl">
														<input type="checkbox" class="notificationTypeChk"
															name="notificationType" value="0" id="showNotification"
															checked><label for="showNotification">DNS</label>

													</div>
													<div class="fr">
														<span class="circle notificationColor"></span>
													</div>
												</div>
											</li>
											<li>
												<div class="blueBox clearfix">
													<div class="fl">
														<input type="checkbox" class="notificationTypeChk"
															name="notificationType" value="8" id="showBroadcast"
															checked><label for="showBroadcast">PCRF</label>


													</div>
													<div class="fr">
														<span class="circle broadcastColor"></span>
													</div>
												</div>
											</li>

											<li>
												<div class="blueBox clearfix">
													<div class="fl">
														<input type="checkbox" class="notificationTypeChk"
															name="notificationType" value="0" id="showNotification"
															checked><label for="showNotification">OCS</label>

													</div>
													<div class="fr">
														<span class="circle notificationColor"></span>
													</div>
												</div>
											</li>


										</ul>

									</div>
									<div style="padding: 12px 16px; border-top: 1px solid #d3e3ed">
										<div class="mc_label">Test Status</div>
										<div style="margin: 8px 0">
											<input type="checkbox" name="messageStatus" value="28"
												id="readMessages" checked><label for="readMessages">Running</label>
										</div>
										<div>
											<input type="checkbox" name="messageStatus" value="29"
												id="unReadMessages" checked><label
												for="unReadMessages">Stopped</label>
										</div>
									</div>
									<div style="padding: 16px 16px; border-top: 1px solid #d3e3ed;">
										<div class="">
											<input type="submit" class="listButton" enableAfterLoad="yes"
												value="Filter Plans" name="message_center_list_search">
										</div>
									</div>
								</div>


							</td>
							<td>



























								<div class="listcontrol2 clearfix">
									<span class="listcontrol2Inner"><span class="title">Test
											Plans</span></span><span class="fr"><span style="line-height: 25px;">Test
											Plans Found: </span><span class="filter itemsCount pl5px "
										style="line-height: 25px">3</span><span class="label"><label
											for="message_center_list_r">Rows</label>:</span><span><select
											name="message_center_list_r" id="message_center_list_r"
											onchange="listViewDropDownSubmitForm('cSelForm');">
												<option value="1">1</option>
												<option value="5">5</option>
												<option value="10">10</option>
												<option value="25">25</option>
												<option value="50">50</option>
												<option value="100" selected>100</option>
												<option value="500">500</option>
												<option value="1000">1000</option>
										</select> </span></span>
								</div>
								<table style="width: 100%; table-layout: fixed; border: 0px"
									cellpadding="0" cellspacing="0">
									<tr>
										<td style="padding: 0px"><div
												id="listViewContainer_message_center_list"
												class="resizeableListView">
												<table id="listheaderTable_message_center_list" class="list">
													<colgroup>
														<col id="listheaderTable_message_center_list_col_0"
															style="width: 1px" />
														<col id="listheaderTable_message_center_list_col_1"
															style="width: 0" />
														<col id="listheaderTable_message_center_list_col_2"
															style="width: 25px" />
														<col id="listheaderTable_message_center_list_col_3"
															style="width: 5px" />
														<col id="listheaderTable_message_center_list_col_4"
															style="width: 0px" />
														<col id="listheaderTable_message_center_list_col_5"
															style="width: 0" />
														<col id="listheaderTable_message_center_list_col_6"
															style="width: 100px" />
														<col id="listheaderTable_message_center_list_col_7"
															style="width: 5px" />
														<col id="listheaderTable_message_center_list_col_8"
															style="width: 160px" />
														<col id="listheaderTable_message_center_list_col_9"
															style="width: 5px" />
														<col id="listheaderTable_message_center_list_col_10"
															style="" />
														<col id="listheaderTable_message_center_list_col_11"
															style="width: 5px" />
														<col id="listheaderTable_message_center_list_col_12"
															style="width: 120px; text-align: right;" />
														<col id="listheaderTable_message_center_list_col_13"
															style="width: 5px" />
														<col id="listheaderTable_message_center_list_col_14"
															style="width: 1px" />
													</colgroup>
													<thead>
														<tr>
															<th class="listTopBorder" id="message_center_list_row_0"
																style="padding: 0px"></th>
															<th class="listTopBorder" id="message_center_list_row_1"
																style="padding: 0px"></th>
															<th class="listTopBorder" id="message_center_list_row_2"
																style="padding: 0px"></th>
															<th class="listTopBorder" id="message_center_list_row_3"
																style="padding: 0px"></th>
															<th class="listTopBorder" id="message_center_list_row_4"
																style="padding: 0px"></th>
															<th class="listTopBorder" id="message_center_list_row_5"
																style="padding: 0px"></th>
															<th class="listTopBorder" id="message_center_list_row_6"
																style="padding: 0px"></th>
															<th class="listTopBorder" id="message_center_list_row_7"
																style="padding: 0px"></th>
															<th class="listTopBorder" id="message_center_list_row_8"
																style="padding: 0px"></th>
															<th class="listTopBorder" id="message_center_list_row_9"
																style="padding: 0px"></th>
															<th class="listTopBorder" id="message_center_list_row_10"
																style="padding: 0px"></th>
															<th class="listTopBorder" id="message_center_list_row_11"
																style="padding: 0px"></th>
															<th class="listTopBorder" id="message_center_list_row_12"
																style="padding: 0px"></th>
															<th class="listTopBorder" id="message_center_list_row_13"
																style="padding: 0px"></th>
															<th class="listTopBorder" id="message_center_list_row_14"
																style="padding: 0px"></th>
														</tr>

														<tr>
															<th></th>
															<th class="columnDivider"></th>
															<th><input type="checkbox" name="top"
																aria-label="Select&#x20;All"
																onClick="toggleCheckmarksForList('cSelCheckBox', this.checked, false, this.form);"></th>
															<th class="columnDivider"></th>
															<th></th>
															<th class="columnDivider"></th>
															<th id="notification_btn_{0}_header"><span
																class="clickable" title="Click&#x20;to&#x20;sort"
																role="link"
																onclick="setFormValue('cSelForm', 'message_center_list_st', 'a'); setFormValue('cSelForm', 'message_center_list_s', 'notification_type');  submitForm('cSelForm'); ">Type</span></th>
															<th class="columnDivider"
																id="notification_btn_&#x7b;0&#x7d;_divider"
																title="Drag&#x20;to&#x20;resize"><div
																	ondragstart="return false" class="listColumnSeperator"
																	onmousedown="startResize(event, 6,'message_center_list',1,15)">
																	<div class="listColumnSeperatorInner"></div>
																</div></th>
															<th><span class="clickable"
																title="Click&#x20;to&#x20;sort" role="link"
																onclick="setFormValue('cSelForm', 'message_center_list_st', 'a'); setFormValue('cSelForm', 'message_center_list_s', 'creator_name');  submitForm('cSelForm'); ">Plan
																	Name</span></th>
															<th class="columnDivider"
																title="Drag&#x20;to&#x20;resize"><div
																	ondragstart="return false" class="listColumnSeperator"
																	onmousedown="startResize(event, 8,'message_center_list',1,15)">
																	<div class="listColumnSeperatorInner"></div>
																</div></th>
															<th><span class="clickable"
																title="Click&#x20;to&#x20;sort" role="link"
																onclick="setFormValue('cSelForm', 'message_center_list_st', 'a'); setFormValue('cSelForm', 'message_center_list_s', 'subject');  submitForm('cSelForm'); ">Description</span></th>
															<th class="columnDivider"
																title="Drag&#x20;to&#x20;resize"><div
																	ondragstart="return false" class="listColumnSeperator"
																	onmousedown="startResize(event, 10,'message_center_list',1,15)">
																	<div class="listColumnSeperatorInner"></div>
																</div></th>
															<th style="text-align: right;"><span
																class="clickable" title="Click&#x20;to&#x20;sort"
																role="link"
																onclick="setFormValue('cSelForm', 'message_center_list_st', 'a'); setFormValue('cSelForm', 'message_center_list_s', 'date');  submitForm('cSelForm'); ">Last
																	Modified</span></th>
															<th class="columnDivider"
																title="Drag&#x20;to&#x20;resize"><div
																	ondragstart="return false" class="listColumnSeperator"
																	onmousedown="startResize(event, 12,'message_center_list',1,15)">
																	<div class="listColumnSeperatorInner"></div>
																</div></th>
															<th></th>
														</tr>
													</thead>
												</table>
												<div class="listButtonBar clearfix">
													<ul class="listbuttonpan">
														<li class="fstlist"><div class="listActionArrow"></div></li>
														<li><input type="button" value="Start Selected"
															disabled="yes" enableAfterLoad="yes" class="listButton"
															onclick="markAsReadNotifications('');" /></li>
														<li><input type="button" value="Stop Selected"
															disabled="yes" enableAfterLoad="yes" class="listButton"
															onclick="removeNotifications('');" /></li>
														<li class="itemvalue"><div
																id="numberOfItemseSelected">0</div> selected items</li>
													</ul>
												</div>
												<table class="list" onmousemove="listMouseMove(event)"
													id="message_center_list">
													<colgroup>
														<col id="message_center_list_col_0" style="width: 1px" />
														<col id="message_center_list_col_1" style="width: 0" />
														<col id="message_center_list_col_2" style="width: 25px" />
														<col id="message_center_list_col_3" style="width: 5px" />
														<col id="message_center_list_col_4" style="width: 0px" />
														<col id="message_center_list_col_5" style="width: 0" />
														<col id="message_center_list_col_6" style="width: 100px" />
														<col id="message_center_list_col_7" style="width: 5px" />
														<col id="message_center_list_col_8" style="width: 160px" />
														<col id="message_center_list_col_9" style="width: 5px" />
														<col id="message_center_list_col_10" style="" />
														<col id="message_center_list_col_11" style="width: 5px" />
														<col id="message_center_list_col_12"
															style="width: 120px; text-align: right;" />
														<col id="message_center_list_col_13" style="width: 5px" />
														<col id="message_center_list_col_14" style="width: 1px" />
													</colgroup>
													<thead>
														<tr>
															<td class="listTopBorder"><div
																	style="width: 0px; height: 0px"></div></td>
															<td class="listTopBorder"><div
																	style="width: 0px; height: 0px"></div></td>
															<td class="listTopBorder"><div
																	style="width: 0px; height: 0px"></div></td>
															<td class="listTopBorder"><div
																	style="width: 0px; height: 0px"></div></td>
															<td class="listTopBorder"><div
																	style="width: 0px; height: 0px"></div></td>
															<td class="listTopBorder"><div
																	style="width: 0px; height: 0px"></div></td>
															<td class="listTopBorder"><div
																	style="width: 0px; height: 0px"></div></td>
															<td class="listTopBorder"><div
																	style="width: 0px; height: 0px"></div></td>
															<td class="listTopBorder"><div
																	style="width: 0px; height: 0px"></div></td>
															<td class="listTopBorder"><div
																	style="width: 0px; height: 0px"></div></td>
															<td class="listTopBorder"><div
																	style="width: 0px; height: 0px"></div></td>
															<td class="listTopBorder"><div
																	style="width: 0px; height: 0px"></div></td>
															<td class="listTopBorder"><div
																	style="width: 0px; height: 0px"></div></td>
															<td class="listTopBorder"><div
																	style="width: 0px; height: 0px"></div></td>
															<td class="listTopBorder"></td>
														</tr>
													</thead>


													<c:if test="${empty files}">
														<tbody>
															<tr id="noDataFound">
																<td class="first nodata" colspan=14>No test plans
																	found</td>
															</tr>
														</tbody>
													</c:if>
													<c:if test="${not empty files}">
														<tbody>
															<c:forEach items="${files}" var="fileName"
																varStatus="loopStatus">

																<tr
																	class="${loopStatus.index % 2 == 0 ? 'evenRow' : 'oddRow'}">
																	<td class="first" colspan="2"
																		style="padding: 0px; visibility: hidden;"><nobr>29</nobr></td>
																	<td colspan="2" class=" checkpan "><input
																		type="checkbox" name="cSelCheckBox"
																		value="z16030421473844727167908"
																		onclick="onClickCheckMarkList(event)"
																		aria-label="z16030421473844727167908"></td>
																	<td colspan="2"
																		style="padding: 0px; visibility: hidden;"><nobr>z16030421473844727167908</nobr></td>
																	<td id="notification_btn_z16030421473844727167908"
																		colspan="2"><nobr>
																			<div class=" notificationType broadcastColor">DNS</div>
																		</nobr></td>
																	<td colspan="2"><nobr>
																			<c:out value="${fileName}" />
																		</nobr></td>
																	<td colspan="2"><nobr>DNS Test Plan!</nobr></td>
																	<td colspan="2" style="text-align: right;"><nobr>2016-03-05
																			04:47</nobr></td>
																	<td></td>
																</tr>

															</c:forEach>
														</tbody>
													</c:if>
												</table>
											</div></td>
									</tr>
								</table>
								<div class="listFooter clearfix">
									<span class="fl"><span class="listFooterItem"><span>Data
												as of 14&#x3a;43</span></span> <span class="listFooterItem linkLookaLike"
										tabIndex="0" role="link"
										onclick="setFormValue('cSelForm', 'message_center_list_refresh', 'true'); submitForm('cSelForm');"><span
											class="refreshIcon listFooterLink">Refresh</span><input
											type="hidden" name="message_center_list_refresh"></span> 
											<!-- 
											<span
										class="listFooterItem" tabIndex="0" role="link"
										onclick="getFile('/DownloadFile?tableName=message.center.list')"><span
											class="exportIcon listFooterLink">Save as CSV</span></span> </span>
											
											 -->
								</div> <script type="text/javascript" language="JavaScript1.2">
	 var message_center_list_MouseMoveFunction = function(e){doActionResize(e, "message_center_list", null  ,"message_center_list")};
	 var message_center_list_MouseUpFunction = function(e){stopResize(e, this ,"message_center_list", "message_center_list",15, null)};
skipDisableButtonsAlways=true;
calculateCheckmarksCount('cSelCheckBox');
</script>


							</td>
						</tr>

					</table>
				</form>

				<form name="removeNotificationsForm" id="removeNotificationsForm"
					method="post" action="/action_remove_notifications.do">
					<input type="hidden" name="markAsReadObjectIds"
						id="markAsReadObjectIds" value="" /> <input type="hidden"
						name="ajax" id="ajax" value="1" />
				</form>

			</div>


		</div>
	</div>

	<!-- BOTTOM MENU BAR -->


	<!-- ======================================================================== -->
	<!-- MAIN END                                                                 -->
	<!-- ======================================================================== -->
	<div id="disclaimer">
		<div class="footerLeft">
			Last Login Time: 2016-03-08 11:02 EST
			<div class="cl">
				&copy;&nbsp;2016 &nbsp;TELUS Communications Company<br />
				<a href="/PrivacyPolicy.en_US.pdf" target="_blank">Privacy
					Policy</a> &nbsp;&nbsp;&nbsp; <a href="/TermsOfUse.en_US.pdf"
					target="_blank">Terms of Use</a>
			</div>
		</div>
		<div class="footerRight">
			Technology Strategy Performance Test Toolkit
		</div>
		<div class="cl"></div>
	</div>

	</div>
	<div id="modalPanel" class="jqmWindow"></div>

	<div ID="calendar1" style="display: none">
		<div id='topCalFrame'></div>
		<div id='bottomCalFrame'></div>
	</div>




	<div id='monitorHolder' style='display: none'></div>

	<script type="text/javascript" language="JavaScript1.2">
var _monitor_url = "/sa_help/monitor_page_times.jsp";
_monitor_url +="?_jsp_start_time=" + _jsp_start_time ;
_monitor_url +="&_uniqueThreadId=z16030819432081138796905"
_monitor_url +="&_jsp_end_time=1457466200858"
_monitor_url +="&_html_start_time=" + _html_start_time;
_monitor_url +="&_html_end_time=" + (new Date()).getTime();
_monitor_url +="&page=" + escape(location.pathname);
_monitor_url +="&search=" + escape(location.search);
_monitor_url +="&server_name=fas-05 prod1";
_monitor_url +="&_action_start_time=1457466200811";
_monitor_url +="&_action_end_time=1457466200827";
_monitor_url +="&sgjy=4070ac7f-89e9-4560-affa-592921b0b48c";
var aaa="<iframe src='" +_monitor_url +"'  id='oMonitor'  title='Logging Frame' longdesc='Analytics'  style='position:absolute;height:20px;width:100px;' frameborder='0' >";
$('#monitorHolder').html(aaa);
</script>
	<!-- Time Monitoring -->



</body>
</html>
