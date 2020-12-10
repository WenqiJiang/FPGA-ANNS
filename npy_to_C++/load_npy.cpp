// http://www.cplusplus.com/reference/fstream/ifstream/
//  http://www.cplusplus.com/reference/istream/istream/read/
//  http://www.cplusplus.com/reference/istream/istream/read/
//   read binary file to array

#include <fstream>
#include <iostream>
#include <cstring> 
#include <vector>

#define vec_1D_elements 4
#define vec_1D_size (vec_1D_elements * 4)

#define vec_2D_elements 8
#define vec_2D_size (vec_2D_elements * 4)

#define ALIGNED_ALLOCATOR

template <typename T>
struct aligned_allocator
{
  using value_type = T;
  T* allocate(std::size_t num)
  {
    void* ptr = nullptr;
    if (posix_memalign(&ptr,4096,num*sizeof(T)))
      throw std::bad_alloc();
    return reinterpret_cast<T*>(ptr);
  }
  void deallocate(T* p, std::size_t num)
  {
    free(p);
  }
};

int main() {


#ifdef ALIGNED_ALLOCATOR

    std::cout << "\nAligned Allocator Version\n";

    // Somehow the file must be read to an char array, and then using
    //   memcpy to copy the char string to float
    char* buffer_vec_1D_c = (char*) malloc(vec_1D_size);
    std::vector<float, aligned_allocator<float>> buffer_vec_1D(vec_1D_elements, 0);

    std::ifstream vec_1D ("vec_1D.bin", std::ios::in | std::ios::binary);
    vec_1D.read(buffer_vec_1D_c, vec_1D_size);
    std::cout << "vec_1D read bytes: " << vec_1D.gcount() << std::endl;
    
    // char* buffer_addr = (char*) buffer_vec_1D;
    // vec_1D.read(buffer_addr, vec_1D_size);
    // vec_1D.read((char*) buffer_vec_1D, vec_1D_size);

    memcpy(&buffer_vec_1D[0], buffer_vec_1D_c, vec_1D_size);

    for (int i = 0; i < vec_1D_elements; i++) {
        std::cout << buffer_vec_1D[i] << std::endl;
    }

    ////////////////////     2D vector     ////////////////////

    char* buffer_vec_2D_c = (char*) malloc(vec_2D_size);
    std::vector<float, aligned_allocator<float>> buffer_vec_2D(vec_2D_elements, 0);

    std::ifstream vec_2D ("vec_2D.bin", std::ios::in | std::ios::binary);
    vec_2D.read(buffer_vec_2D_c, vec_2D_size);
    std::cout << "vec_2D read bytes: " << vec_2D.gcount() << std::endl;

    vec_2D.read(buffer_vec_2D_c, vec_2D_size);
    memcpy(&buffer_vec_2D[0], buffer_vec_2D_c, vec_2D_size);

    for (int i = 0; i < vec_2D_elements; i++) {
        std::cout << buffer_vec_2D[i] << std::endl;
    }
#else 

    std::cout << "\nMalloc Version\n";
    // Somehow the file must be read to an char array, and then using
    //   memcpy to copy the char string to float
    char* buffer_vec_1D_c = (char*) malloc(vec_1D_size);
    float* buffer_vec_1D = (float*) malloc(vec_1D_size);
    std::ifstream vec_1D ("vec_1D.bin", std::ios::in | std::ios::binary);
    vec_1D.read(buffer_vec_1D_c, vec_1D_size);
    std::cout << "vec_1D read bytes: " << vec_1D.gcount() << std::endl;
    
    // char* buffer_addr = (char*) buffer_vec_1D;
    // vec_1D.read(buffer_addr, vec_1D_size);
    // vec_1D.read((char*) buffer_vec_1D, vec_1D_size);

    memcpy(buffer_vec_1D, buffer_vec_1D_c, vec_1D_size);

    for (int i = 0; i < vec_1D_elements; i++) {
        std::cout << buffer_vec_1D[i] << std::endl;
    }

    ////////////////////     2D vector     ////////////////////

    char* buffer_vec_2D_c = (char*) malloc(vec_2D_size);
    float* buffer_vec_2D = (float*) malloc(vec_2D_size);
    std::ifstream vec_2D ("vec_2D.bin", std::ios::in | std::ios::binary);
    vec_2D.read(buffer_vec_2D_c, vec_2D_size);
    std::cout << "vec_2D read bytes: " << vec_2D.gcount() << std::endl;

    vec_2D.read(buffer_vec_2D_c, vec_2D_size);
    memcpy(buffer_vec_2D, buffer_vec_2D_c, vec_2D_size);

    for (int i = 0; i < vec_2D_elements; i++) {
        std::cout << buffer_vec_2D[i] << std::endl;
    }
#endif 


    return 0;
}