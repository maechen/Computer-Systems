#include <stdio.h>
#include "cs1300bmp.h"
#include <iostream>
#include <fstream>
#include <stdlib.h>
#include "Filter.h"

using namespace std;

#include "rdtsc.h"

//
// Forward declare the functions
//
Filter * readFilter(string filename);
double applyFilter(Filter *filter, cs1300bmp *input, cs1300bmp *output);

int
main(int argc, char **argv)
{

  if ( argc < 2) {
    fprintf(stderr,"Usage: %s filter inputfile1 inputfile2 .... \n", argv[0]);
      return 1;
  }

  //
  // Convert to C++ strings to simplify manipulation
  //
  string filtername = argv[1];

  //
  // remove any ".filter" in the filtername
  //
  string filterOutputName = filtername;
  string::size_type loc = filterOutputName.find(".filter");
  if (loc != string::npos) {
    //
    // Remove the ".filter" name, which should occur on all the provided filters
    //
    filterOutputName = filtername.substr(0, loc);
  }

  Filter *filter = readFilter(filtername);

  double sum = 0.0;
  short samples = 0;

  for (int inNum = 2; inNum < argc; inNum++) {
    string inputFilename = argv[inNum];
    string outputFilename = "filtered-" + filterOutputName + "-" + inputFilename;
    struct cs1300bmp *input = new struct cs1300bmp;
    struct cs1300bmp *output = new struct cs1300bmp;
    short ok = cs1300bmp_readfile( (char *) inputFilename.c_str(), input);

    if ( ok ) {
      double sample = applyFilter(filter, input, output);
      sum += sample;
      samples++;
      cs1300bmp_writefile((char *) outputFilename.c_str(), output);
    }
    delete input;
    delete output;
  }
  fprintf(stdout, "Average cycles per sample is %f\n", sum / samples);

}

class Filter *
readFilter(string filename)
{
  ifstream input(filename.c_str());

  if ( ! input.bad() ) {
    short size = 0;
    input >> size;
    Filter *filter = new Filter(size);
    short div;
    input >> div;
    filter -> setDivisor(div);

	short value;
	input >> value;
	filter -> set(0,0,value);
	input >> value;
	filter -> set(0,1,value);
          
	input >> value;
	filter -> set(0,2,value);
          
	input >> value;
	filter -> set(1,0,value);
          
	input >> value;
	filter -> set(1,1,value);
          
	input >> value;
	filter -> set(1,2,value);
          
	input >> value;
	filter -> set(2,0,value);
          
	input >> value;
	filter -> set(2,1,value);
          
	input >> value;
	filter -> set(2,2,value);

    return filter;
  } else {
    cerr << "Bad input in readFilter:" << filename << endl;
    exit(-1);
  }
}


double
// applyFilter(class Filter *filter, cs1300bmp *input, cs1300bmp *output)
// {

//   long long cycStart, cycStop;

//   cycStart = rdtscll();

//   // make a short? also change in cs1300bmp.h
//   // optimize every .h .cpp file
//   int h = (input -> height);
//   int w = (input -> width);
//   output -> width = w;
//   output -> height = h;
    
// for(int row = 1; row < h - 1 ; row = row + 1) {
//     for(int col = 1; col < w - 1; col = col + 1) {
//         // unroll this too
//         for(int plane = 0; plane < 3; plane++) {
//             output -> color[plane][row][col] = 0;

//             // can unroll this
//             for (int i = 0; i < 3; i++) {
//                 for (int j = 0; j < 3; j++) {
//                     output -> color[plane][row][col]
//                       = output -> color[plane][row][col]
//                       + (input -> color[plane][row + i - 1][col + j - 1] 
//                       * filter -> get(i, j) ); // dont call this here. call out of bug loop still 2d loop
//                 }
//             }
	
//         output -> color[plane][row][col] = 	
//         output -> color[plane][row][col] / filter -> getDivisor();

//         if ( output -> color[plane][row][col]  < 0 ) {
//           output -> color[plane][row][col] = 0;
//         }

//         if ( output -> color[plane][row][col]  > 255 ) { 
//           output -> color[plane][row][col] = 255;
//         }
//       }
//     }
//   }

//   cycStop = rdtscll();
//   double diff = cycStop - cycStart;
//   double diffPerPixel = diff / (output -> width * output -> height);
//   fprintf(stderr, "Took %f cycles to process, or %f cycles per pixel\n",
// 	  diff, diff / (output -> width * output -> height));
//   return diffPerPixel;
// }

applyFilter(class Filter *filter, cs1300bmp *input, cs1300bmp *output) {
    long long cycStart, cycStop;
    cycStart = rdtscll();

    short h = input->height;
    short w = input->width;
    
    output->width = w;
    output->height = h;

    short fDivisor = filter->getDivisor(); // Precompute divisor

    // Precompute filter values and store them in a temporary array
    char filterValues[3][3];
    filterValues[0][0] = filter->get(0, 0);
    filterValues[0][1] = filter->get(0, 1);
    filterValues[0][2] = filter->get(0, 2);

    filterValues[1][0] = filter->get(1, 0);
    filterValues[1][1] = filter->get(1, 1);
    filterValues[1][2] = filter->get(1, 2);

    filterValues[2][0] = filter->get(2, 0);
    filterValues[2][1] = filter->get(2, 1);
    filterValues[2][2] = filter->get(2, 2);

    for (short row = 1; row < h - 1; row++) {
        for (short col = 1; col < w - 1; col++) {
            short result0 = 0;
            short result1 = 0;
            short result2 = 0;
            
            result0 += input->color[0][row - 1][col - 1] * filterValues[0][0];
            result0 += input->color[0][row - 1][col] * filterValues[0][1];
            result0 += input->color[0][row - 1][col + 1] * filterValues[0][2];
            result0 += input->color[0][row][col - 1] * filterValues[1][0];
            result0 += input->color[0][row][col] * filterValues[1][1];
            result0 += input->color[0][row][col + 1] * filterValues[1][2];
            result0 += input->color[0][row + 1][col - 1] * filterValues[2][0];
            result0 += input->color[0][row + 1][col] * filterValues[2][1];
            result0 += input->color[0][row + 1][col + 1] * filterValues[2][2];

            result1 += input->color[1][row - 1][col - 1] * filterValues[0][0];
            result1 += input->color[1][row - 1][col] * filterValues[0][1];
            result1 += input->color[1][row - 1][col + 1] * filterValues[0][2];
            result1 += input->color[1][row][col - 1] * filterValues[1][0];
            result1 += input->color[1][row][col] * filterValues[1][1];
            result1 += input->color[1][row][col + 1] * filterValues[1][2];
            result1 += input->color[1][row + 1][col - 1] * filterValues[2][0];
            result1 += input->color[1][row + 1][col] * filterValues[2][1];
            result1 += input->color[1][row + 1][col + 1] * filterValues[2][2];

            result2 += input->color[2][row - 1][col - 1] * filterValues[0][0];
            result2 += input->color[2][row - 1][col] * filterValues[0][1];
            result2 += input->color[2][row - 1][col + 1] * filterValues[0][2];
            result2 += input->color[2][row][col - 1] * filterValues[1][0];
            result2 += input->color[2][row][col] * filterValues[1][1];
            result2 += input->color[2][row][col + 1] * filterValues[1][2];
            result2 += input->color[2][row + 1][col - 1] * filterValues[2][0];
            result2 += input->color[2][row + 1][col] * filterValues[2][1];
            result2 += input->color[2][row + 1][col + 1] * filterValues[2][2];

            result0 /= fDivisor;
            result1 /= fDivisor;
            result2 /= fDivisor;


            if ( result0  < 0 ) {
              result0 = 0;
            }
            else if ( result0  > 255 ) { 
              result0 = 255;
            }
            if ( result1  < 0 ) {
              result1 = 0;
            }
            else if ( result1  > 255 ) { 
              result1 = 255;
            }
            if ( result2  < 0 ) {
              result2 = 0;
            }
            else if ( result2  > 255 ) { 
              result2 = 255;
            }
            output->color[0][row][col] = result0;
            output->color[1][row][col] = result1;
            output->color[2][row][col] = result2;
        }
    }

    cycStop = rdtscll();
    double diff = cycStop - cycStart;
    double diffPerPixel = diff / (w * h);

    fprintf(stderr, "Took %f cycles to process, or %f cycles per pixel\n", diff, diffPerPixel);
    return diffPerPixel;
}


