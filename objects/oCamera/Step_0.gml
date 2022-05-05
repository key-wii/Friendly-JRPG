if (shakeSudden <= 0 && shakeSteady <= 0 && shakeMax == 0) {
	cameraX = clamp(cameraX, 0, room_width - cameraWidth);
	cameraY = clamp(cameraY, 0, room_height - cameraHeight);
}
if (shakeSudden > 0) {
	//Camera Shake stops suddenly
	if (!noHor) {
		cameraX += irandom_range(-shakeSudden - plusShake, shakeSudden + plusShake - 1);
		if (cameraX >= 0) cameraX++; //don't let 0 be an option
	}
	if (!noVer) {
		cameraY += irandom_range(-shakeSudden - plusShake, shakeSudden + plusShake - 1);
		if (cameraY >= 0) cameraY++; //don't let 0 be an option
	}
	
	if (shakeSudden > 20) shakeSudden -= .6;
	else shakeSudden -= .2;
	if (shakeSudden <= 0) reset_cam_vals();
}
//Camera Shake steadily slows down
if (shakeSteady > 0) {
	if (!noHor) {
		cameraX += irandom_range(-shakeSteady - plusShake, shakeSteady);
		if (cameraX >= 0) cameraX++; //don't let 0 be an option
	}
	if (!noVer) {
		cameraY += irandom_range(-shakeSteady - plusShake, shakeSteady);
		if (cameraY >= 0) cameraY++; //don't let 0 be an option
	}
	
	if (shakeSteady > 20) shakeSudden -= 4;
	else shakeSteady -= 2;
	if (shakeSteady <= 0) reset_cam_vals();
}
//Camera Shake at shake value(s)
if (shakeMax != 0) {
	//Camera Shake stops suddenly
	if (!noHor) cameraX += shakeMax + plusShake;
	if (!noVer) cameraY += shakeMax + plusShake;
	
	if (shakeMax > 0) shakeMax -= 1;
	else if (shakeMax < 0) shakeMax += 1;
	if (shakeMax < 1 && shakeMax > -1) reset_cam_vals();
}

//Set Camera Pos
camera_set_view_pos(view_camera[0], cameraX, cameraY);
