
#include <iostream>
#include <sys/time.h>
#include "src/types.hpp"

#include "src/vadd.hpp"

using namespace std;

// #define HBM_SIZE 67108864 // 256 M ints
// #define HBM_SIZE 4194304 // 256 M * 512-bit
#define HBM_SIZE 1024 // 256 M * 512-bit
// #define OUTPUT_SIZE (QUERY_NUM * PRIORITY_QUEUE_LEN)

int main(int argc, char *argv[]) {


  // ap_uint512_t* HBM_in0 = new ap_uint512_t(HBM_SIZE);
  // ap_uint512_t* HBM_in1 = new ap_uint512_t(HBM_SIZE);
  // ap_uint512_t* HBM_in2 = new ap_uint512_t(HBM_SIZE);
  // ap_uint512_t* HBM_in3 = new ap_uint512_t(HBM_SIZE);
  // ap_uint512_t* HBM_in4 = new ap_uint512_t(HBM_SIZE);
  // ap_uint512_t* HBM_in5 = new ap_uint512_t(HBM_SIZE);
  // ap_uint512_t* HBM_in6 = new ap_uint512_t(HBM_SIZE);
  // ap_uint512_t* HBM_in7 = new ap_uint512_t(HBM_SIZE);
  // ap_uint512_t* HBM_in8 = new ap_uint512_t(HBM_SIZE);

  int* HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid = 
    new int(HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid_depth);
  float* HBM_query_vectors  = 
    new float(1024);
  float* HBM_vector_quantizer = 
    new float(1024);
  float* HBM_product_quantizer = 
    new float(1024);
  float* HBM_OPQ_matrix = 
    new float(1024);

  float* HBM_out = new float(output_size);

  vadd(
    // HBM_in0, 
    // HBM_in1, 
    // HBM_in2, 
    // HBM_in3, 
    // HBM_in4, 
    // HBM_in5, 
    // HBM_in6, 
    // HBM_in7, 
    // HBM_in8, 
    // HBM21: assigned for HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid
    HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid, 
    // HBM22: query vectors
    HBM_query_vectors,
    // HBM23: center vector table (Vector_quantizer)
    HBM_vector_quantizer,
    // HBM24: PQ quantizer
    HBM_product_quantizer,
    // HBM25: OPQ Matrix
    HBM_OPQ_matrix,
    // HBM26: output (vector_ID, distance)
    HBM_out
    );

  bool success = true;

  // if (out_column.get_num_items() != sw_out_column.get_num_items()) {
  //   cout << "HW (" << out_column.get_num_items() << ") and SW ("
  //        << sw_out_column.get_num_items() << ") num_matches are different!"
  //        << endl;
  //   success = false;
  // } else {
  //   for (unsigned i = 0; i < out_column.get_num_items(); i++) {
  //     if (out_column.get_item(i) != sw_out_column.get_item(i)) {
  //       cout << "Mismatch at " << i << ": HW " << out_column.get_item(i)
  //            << ", SW " << sw_out_column.get_item(i) << endl;
  //       success = false;
  //     }
  //   }
  // }

  if (success) {
    cout << "SUCCESS!" << endl;
  } else {
    cout << "FAIL!" << endl;
  }

  return 0;
}
