macro "Synthetic Data Test"{
	sourceDir = "C:/Oma/Deakin/METODOLOGIA2010/Julkaisu/webStart/SyntheticData/";
	visualDir = "C:/Oma/Deakin/METODOLOGIA2010/Julkaisu/webStart/sCheckImageJ/";
	files = getFileList(sourceDir);
	for (i = 0; i<files.length;++i){
		run("Stratec pQCT", "select="+sourceDir+files[i]);
		run("Distribution Analysis", "fat=40.0000 area=550.0000 bmd=690.0000 scaling_coefficient=1.7240 scaling_constant=-322.0000 roi_selection=Bigger rotation_selection=According_to_Imax/Imin analyse_cortical_results analyse_density_distribution suppress_result_image flip_distribution_results save_visual_result_image_on_disk image_save_path="+visualDir);
		close();
	}
}
