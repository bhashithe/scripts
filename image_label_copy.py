import os
import shutil

def image_label_copy(inpath, write_path):
	"""
	@inpath: string path for the image files to be copied
		 this path should have images in directories with their label names
		 loads data using 
	returns => nothing
	"""
	data = []
	working_dir = os.getcwd()+'/'
	os.chdir(inpath)
	for label in os.listdir():
		os.chdir(label)
		images = os.listdir()
		for image in images:
			shutil.copyfile(image, working_dir+write_path+label+'_'+image)
			print(write_path+label[:-1]+'_'+image+' done')
		os.chdir('../')
	os.chdir(working_dir)
	

def main():
	print("use to image files with a label")
if __name__ == '__main__':
	main()
