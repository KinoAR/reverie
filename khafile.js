const icon = "";
let project = new Project('Reverie');

project.localLibraryPath = "libs";

project.addAssets('assets/**');
project.addShaders('shaders/**');
project.addSources('src');

project.addLibrary("echo");


resolve(project);
