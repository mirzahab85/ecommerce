<?php require_once("../../resources/config.php");


if(isset($_GET['delete_slide_id'])) {

$query = query("DELETE FROM slides WHERE slide_id = " . escape_string($_GET['delete_slide_id']) . " ");
confirm($query);

$target_path = "../../resources/uploads/";
unlink($target_path);

set_message("Slide Deleted");
redirect("index.php?slides");

} else {

redirect("index.php?slides");

}






?>