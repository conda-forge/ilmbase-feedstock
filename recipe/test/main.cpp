#include <half.h>
#include <ImathVec.h>
#include <Iex.h>
#include <IlmThreadMutex.h>

#include <string>

int main()
{
    const half value(1.5f);
    const Imath::V3f vector(3.0f, 4.0f, 0.0f);
    const Iex::ArgExc error("ilmbase smoke test");
    IlmThread::Mutex mutex;
    IlmThread::Lock lock(mutex);
    return float(value) == 1.5f && vector.length() == 5.0f &&
                   std::string(error.what()) == "ilmbase smoke test"
               ? 0
               : 1;
}
