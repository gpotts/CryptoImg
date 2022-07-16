# export CXXFLAGS="-std=c++11 -I ./Source -I ../ntl/include"
export CXXFLAGS="-std=c++11 -I ./Source"
export OBJDIR=./Source
# export LDFLAGS="-L ./Source -L ../ntl/src/.libs -lgmp"
export LDFLAGS="-L ./Source  -lgmp"
export NTLLIBPATH="../ntl/src/.libs"
# export CXX="c++ -v"
make  -f Source/math/Makefrag
make  -f Source/crypto/Makefrag
c++ -I. -I/usr/local/include/opencv4 $CXXFLAGS $LDFLAGS Source/test_Paillier_Image.cc Source/imgP.cc Source/img.cc -lopencv_core -lopencv_imgcodecs -lopencv_imgproc -lopencv_highgui -lcipher -lmath