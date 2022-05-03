/// @desc scr_earthbound_bg_set_view_size(instance_id, view_w, view_h)
/// @param instance_id
/// @param view_w
/// @param view_h
function scr_earthbound_bg_set_view_size() {

	/*-----------------------------------------------------------------------------
	INFO:
	-------------------------------------------------------------------------------
	This script is part of the earthbound-background-asset.
	It can be called from any other object - like a controller object.
	It can only be called after creating an earthbound-background-instance with
	scr_earthbound_bg_create().

	Check the note "Earthbound Backgrounds - Manual" for more general information
	on this asset.

	This script is needed to match the effect strength to the size of the view and
	thus should always be called at least once when the background instance is
	created and also every time the view changes.

	Or depending on how you're grafics are built: set it to the surface size or to
	the GUI size.


	-------------------------------------------------------------------------------
	ARGUMENTS:
	-------------------------------------------------------------------------------
	instance_id		real	the instance id of the earthbound-background-instance
							previously created with scr_earthbound_bg_create()

	view_w			real	the width of whatever you're drawing upon:
							the view, the surface or gui

	view_h			real	the height of whatever you're drawing upon:
							the view, the surface or gui


	-------------------------------------------------------------------------------
	RETURN:
	-------------------------------------------------------------------------------
	N/A


	-------------------------------------------------------------------------------
	EXAMPLE:
	-------------------------------------------------------------------------------
	In a controller objects event:
	------------------------------

		layer_1 = scr_earthbound_bg_create(room_width * 0.5, room_height * 0.5, layer);
		scr_earthbound_bg_set_view_size(layer_1, camera_get_view_width(view_camera[0]),
		                                         camera_get_view_height(view_camera[0]));
	
	This will:
	- create an earthbound-background-instance and
	- sets its effect strength to match the size of the view.

	-----------------------------------------------------------------------------*/

	with (argument[0]) {
		view_size = [argument[1], argument[2]];
	}



}
