const icon = ""
const project = new Project('Reverie')
//project.icon = icon
project.addAssets('assets/**')


project.addSources('src')

project.localLibraryPath = "libs"
project.addLibrary('echo')
project.addLibrary('domkit')
project.addParameter('-cp src')
project.addParameter('-main Main')


resolve(project)
