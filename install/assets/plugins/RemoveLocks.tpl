/**
 * RemoveLocks
 *
 * Plugin to unset all locks in designated table list
 *
 * @category    plugin
 * @version     1.0
 * @license     http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @package     evo
 * @internal    @events OnWebPagePrerender,
 * @internal    @modx_category Manager and Admin
 * @internal    @installset base
 * @reportissues https://github.com/BBloke/RemoveLocks/issues/
 * @author      BBloke
 * @lastupdate  11-11-2021
 */

$tables = array ("site_plugins", "site_snippets", "site_htmlsnippets", "site_templates", "site_tmplvars");

foreach ( $tables as $table )
{
	$sql = "UPDATE ".$modx->db->config['table_prefix'].$table. " SET locked=0 WHERE locked=1";
	$rs = $modx->db->query($sql);
}
