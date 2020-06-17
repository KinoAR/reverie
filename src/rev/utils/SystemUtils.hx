package rev.utils;

import kha.System;


class SystemUtils {

  public static function shutdown() {
    //Not Available on All Targets
    System.stop();
  }
}