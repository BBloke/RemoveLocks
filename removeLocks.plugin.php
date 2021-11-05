// Removes locks
// BBloke
// Date: 5-11-21
//
// This plugin removes the locks from the designated tables below

// System Events: OnWebPagePrerender

$tables = array ("site_plugins", "site_snippets", "site_htmlsnippets", "site_templates", "site_tmplvars");

foreach ( $tables as $table )
{
	$sql = "UPDATE ".$modx->db->config['table_prefix'].$table. " SET locked=0 WHERE locked=1";
	$rs = $modx->db->query($sql);
	echo $sql."<br />";
}
