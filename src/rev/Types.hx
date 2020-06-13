package rev;

typedef LstnrCntnr<T> = {id:Int, lstnr:T};

enum MseListenerT {
  MouseDwn;
  MouseUp;
  MouseMove;
  MouseWheel;
  MouseLeave;
}

enum KeyListenerT {
  KeyDown;
  KeyUp;
  KeyPress;
}