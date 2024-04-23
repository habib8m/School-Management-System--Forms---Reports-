
declare
		pl_id             paramlist;
		pl_name           varchar2(10) := 'temp';
		report_id         report_object;
		v_c_report_status varchar2(100);
		reportserverjob   varchar2(100);
		v_jobid           varchar2(100);

begin
	
		/* Creating parameters for report*/
		pl_id := Get_Parameter_List('tempdata');
		if not Id_Null(pl_id) Then
			DESTROY_PARAMETER_LIST('TEMPDATA');
		END IF;
		
		PL_ID := CREATE_PARAMETER_LIST('tempdata');
	 	/* Calling report */
		report_id := find_report_object('EMPLOYEES');

		--------------------
		-- system parameters
		--------------------
		set_report_object_property(report_id,report_comm_mode,synchronous);
		--	set_report_object_property(report_id,report_destype,'FILE');
		set_report_object_property(report_id,report_desformat,'PDF');
		set_report_object_property(report_id,report_server,'rep_wls_reports_habib_asinst_1');
  		set_report_object_property(report_id,report_other,'paramform=no');
----------------------------------------------------------------------------


		ADD_PARAMETER(pl_id,'DESTYPE',TEXT_PARAMETER,'SCREEN');
		ADD_PARAMETER(pl_id,'PARAMFORM',TEXT_PARAMETER,'NO');

		--ADD_PARAMETER(PL_ID,'P_ORDER_ID',TEXT_PARAMETER,:REP_BLCK.ORDER_ID);	
		--ADD_PARAMETER(PL_ID,'P_TO_DATE',TEXT_PARAMETER,TO_CHAR(:REP_BLCK.TO_DATE, 'DD/MM/YYYY'));
		--ADD_PARAMETER(PL_ID,'P_COMPANY_CODE',TEXT_PARAMETER,:lg.company_code);

----------------------------------------------------------------------------
		reportserverjob :=run_report_object(report_id=>report_id,paramlist_id=>pl_id);
		v_jobid :=substr(reportserverjob,length('rep_wls_reports_habib_asinst_1')+2,length(reportserverjob));
		v_c_report_status := report_object_status(reportserverjob);
		
		if v_c_report_status = 'FINISHED' then
			Web.show_document('http://Habib:9002/reports/rwservlet/getjobid'||v_jobid||'?server=rep_wls_reports_habib_asinst_1','_blank');	
		else
			message(v_c_report_status); 
			message(' ');
		end if;
end;
