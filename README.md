# libmp3
To build:

######make

--or--

change the parameters in the build.sh to include your own paths

######sudo chmod x+ build.sh

######./build.sh

also look in mp3example.cpp to see uses of the library

# Functions

#### Constructors

MP3();

MP3(std::string filepath);

------------------------------------------------------------------

#### Destructor

~MP3();

-------------------------------------------------------------------

#### IMPORTANT

If you did not specify the filepath in the constructor, you need to call:

int parse_mp3(std::string filepath); //retuns 0 on success

before you can call any of the following functions

--------------------------------------------------------------------

#### Getters

double get_len(void);

int get_bitrate(void);

std::string get_name(void);

std::string get_artist(void);

std::string get_pic(void);

---------------------------------------------------------------------

#### Save embedded picture

int save_pic(std::string filename); //filename for the embedded jpg
