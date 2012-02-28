macro "Synthetic Data Test"{
	setBatchMode(true);
	sourceDir = "H:/densityDistributionTutorial/densityDistributionTutorial/SyntheticData/";	//Replace this path with the path to the synthetic data on your computer
	visualDir = "H:/densityDistributionTutorial/densityDistributionTutorial/sCheck/";	//Replace this path with the path to where you want to save the visualization images on your computer
	parameterString = " air_threshold=-40.0 fat=40.0 muscle_threshold=40.0 marrow_threshold=80 soft_tissue_threshold=200 rotation_threshold=169.000 area=550.0000 bmd=690.0000 roi_selection=Bigger rotation_selection=According_to_Imax/Imin analyse_cortical_results analyse_density_distribution suppress_result_image flip_distribution_results save_visual_result_image_on_disk image_save_path="+visualDir;
	files = getFileList(sourceDir);
	for (i = 0; i<files.length;++i){
		showProgress(i+1, files.length);
		run("Stratec pQCT", "select="+sourceDir+files[i]);
		run("Distribution Analysis", parameterString);
		close();
	}
	setBatchMode(false);
}
