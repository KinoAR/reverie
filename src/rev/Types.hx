package rev;

typedef LstnrCntnr<T> = {id:Int, lstnr:T};

enum ListenerType {
  MouseDwn;
  MouseUp;
  MouseMove;
  MouseWheel;
  MouseLeave;
}