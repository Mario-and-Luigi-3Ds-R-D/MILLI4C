#include <cstddef>
namespace Mem{
extern "C" void free(void* ptr)
{
    (void)ptr; // bare-metal no-op
}

extern "C" void* malloc(size_t size)
{
    (void)size;
    return nullptr; // or implement your own allocator
}
}