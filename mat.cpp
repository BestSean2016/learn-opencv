#include <opencv2/opencv.hpp>

using namespace cv;

int main(int argc, char* argv[]) {
    Mat A, C;                          // creates just the header parts
    A = imread("lena.jpg", IMREAD_COLOR); // here we'll know the method used (allocate matrix)

    Mat B(A);                          // Use the copy constructor
    C = A;
    
    
    int ppp = 0;
    return (0);
}
