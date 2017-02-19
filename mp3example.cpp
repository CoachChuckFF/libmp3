#include <iostream>
#include <cstdlib>
#include "mp3.h"
#include "mp3frame.h"

using namespace std;

int main(){
 
  MP3 mp3("path/to/song.mp3");

  cout << mp3.get_name();
  cout << mp3.get_artist();
  cout << mp3.get_len() << " length\n";
  cout << mp3.get_bitrate() << " bitrate\n";
  //cout << mp3.get_pic();
  mp3.save_pic("where/you/want/to/save.jpg");
}
