<cfoutput>
	#renderView( view="/admin/datamanager/_addRecordForm", args={
		  objectName            = "email_template"
		, addRecordAction       = event.buildAdminLink( linkTo='emailCenter.customTemplates.addAction' )
		, cancelAction          = event.buildAdminLink( linkTo='emailCenter.customTemplates' )
		, draftsEnabled         = true
		, canPublish            = IsTrue( prc.canPublish   ?: "" )
		, canSaveDraft          = IsTrue( prc.canSaveDraft ?: "" )
		, allowAddAnotherSwitch = true
	} )#
</cfoutput>