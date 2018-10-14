#include <cstdio>
#include <opencv2/opencv.hpp>
using namespace cv;

int main() {
  Mat image = imread("dianracing.jpg");
  
  Mat GaussianBlur7;
  GaussianBlur(image, GaussianBlur7, Size(7,7) ,0 ,0);
  
  imshow("origin", image);
  imshow("gaussianBlur_7", GaussianBlur7);
  imwrite("dianracing_result.jpg", GaussianBlur7);
  
  waitKey(0);
  return 0;
}
