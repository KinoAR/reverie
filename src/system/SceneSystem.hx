package system;

import rev.SceneBase;


class SceneSystem {

  static var sceneStack:Array<SceneBase>;
  static var currentScene: SceneBase;

  public static function startSystem() {
    sceneStack = [];
    currentScene = null;
  }
  
  public static function changeScene(scene:SceneBase) {
    currentScene = scene;
  }

  public static function push(scene:SceneBase) {
    sceneStack.push(scene);
    currentScene = scene;
  }

  public static function pop():SceneBase {
    return sceneStack.pop();
  }

  public static function update() {
    currentScene.update();
  }
}