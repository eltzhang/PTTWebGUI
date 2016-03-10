
function menuItemSelect(option) {
	var option= $(this).attr("id");
	if (1==2){}
	else if (option == "viewMenu_3_messages") {
        $("body").addClass("loadingMask") ;
        location.href = addCSRFTokenToURL('/message_center.do');
    }else if (option == "viewMenu_3_absence") {
        $("body").addClass("loadingMask") ;
        location.href = addCSRFTokenToURL('/worker_absence_list.do');
    }else if (option == "viewMenu_3_myCostCenters") {
        $("body").addClass("loadingMask") ;
        location.href = addCSRFTokenToURL('/worker_cost_center_list.do');
    }else if (option == "viewMenu_3_workSchedule") {
        $("body").addClass("loadingMask") ;
        location.href = addCSRFTokenToURL('/worker_shift_schedule_list.do');
    }else if (option == "viewMenu_3_timeSheets") {
        $("body").addClass("loadingMask") ;
        location.href = addCSRFTokenToURL('/time_sheet_list.do');
    }else if (option == "viewMenu_3_expenseSheets") {
        $("body").addClass("loadingMask") ;
        location.href = addCSRFTokenToURL('/expense_sheet_list.do');
    }else if (option == "viewMenu_3_milestone") {
        $("body").addClass("loadingMask") ;
        location.href = addCSRFTokenToURL('/milestones_list.do');
    }else if (option == "createMenu_3_expenseSheet") {
        $("body").addClass("loadingMask") ;
        location.href = addCSRFTokenToURL('/expense_sheet_form.do');
    }else if (option == "createMenu_3_absence") {
        $("body").addClass("loadingMask") ;
        location.href = addCSRFTokenToURL('/worker_absence_form.do');
    }else if (option == "helpMenu_3_onlineHelp") {
        helpAudit(0, 1740, null);window.open('/online_help.do?mode=1', 'helpWin','toolbar=no,location=yes,resizable=yes,scrollbars=yes,width=800,height=640,screenX=50,screenY=50,left=50,top=50');
    }else if (option == "helpMenu_3_releaseNotes") {
        window.open('/fieldglass_release_notes.do', '','toolbar=no,location=yes,resizable=yes,scrollbars=yes,width=800,height=640,screenX=50,screenY=50,left=50,top=50');
    }else if (option == "helpMenu_3_referenceLibrary") {
        $("body").addClass("loadingMask") ;
        location.href = addCSRFTokenToURL('/document_form.do?action=List');
    }else if (option == "helpMenu_3_submitHelpTicket") {
        window.open('/submit_case.do', 'submitCase','toolbar=no,location=yes,resizable=yes,scrollbars=yes,width=500,height=640,screenX=50,screenY=50,left=50,top=50');
    }else if (option == "helpMenu_3_contactUs") {
        fgShowModalDialog('/contact_us.do','forceSize',500,540,true);
    }else if (option == "helpMenu_3_about") {
        fgShowModalDialog('/about.jsp');
    }else {
		var action= $(this).attr("action");
		if (typeof(action!= 'undefined')) {
			eval(action);
		}
	}

}

