/**
 * A website context permission records a grants or deny permission for a given user benefit, permission key and context.
 *
 */
component extends="preside.system.base.SystemPresideObject" displayname="Website context permission" noLabel=true output="false" {

	property name="permission_key" type="string"  dbtype="varchar" maxlength="100" required=true uniqueindexes="context_permission|1";
	property name="context"        type="string"  dbtype="varchar" maxlength="100" required=true uniqueindexes="context_permission|2";
	property name="context_key"    type="string"  dbtype="varchar" maxlength="100" required=true uniqueindexes="context_permission|3";
	property name="granted"        type="boolean" dbtype="boolean"                 required=true;

	property name="benefit" relationship="many-to-one" relatedto="website_benefit" required=false uniqueindexes="context_permission|4";
	property name="user"    relationship="many-to-one" relatedto="website_user"    required=false uniqueindexes="context_permission|5";

}