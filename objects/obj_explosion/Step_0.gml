/// @description Scale
if(growing){
	scale+=scale_step;
	growing = (scale<max_scale);
}else{
	scale-=scale_step;
	if(scale<min_scale){
		instance_destroy();
	}
}

image_xscale = scale;
image_yscale = scale;