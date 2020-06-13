package rev;
import rev.input.Mouse;
import rev.Types.LstnrCntnr;

class Interactive<T> {

  public var entity:T;
  public var onMouseDown (get,set):MseStdLstnr;
  private var mouseDownListener:LstnrCntnr<MseStdLstnr>;

  private var mouseUpListener:LstnrCntnr<MseStdLstnr>;
  private var mouseMoveListener:LstnrCntnr<MseMoveLstnr>;
  private var mouseLeaveListener:LstnrCntnr<MseLeaveLstnr>;

  public function new(entity:T) {
    this.entity = entity;
  }

  private function set_onMouseDown(listener:MseStdLstnr): MseStdLstnr {
    if(listener != null) {
      var mouseDownId = Mouse.addDownListener(listener);
      mouseDownListener = {id:mouseDownId, lstnr:listener};
      return mouseDownListener.lstnr;
    } else {
      return null;
    }
  }

  private function get_onMouseDown():MseStdLstnr {
    return mouseDownListener.lstnr;
  }

}