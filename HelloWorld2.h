#include <string>

namespace internal {
template <typename T>
class ExplicitlyConstructed {
 public:
    ExplicitlyConstructed(int i) {}
 
#if LANG_CXX11
  constexpr
#endif
      const T&
      get() const {
    return reinterpret_cast<const T&>("");
  }
};
// Default empty string object. Don't use this directly. Instead, call
// GetEmptyString() to get the reference.
extern ExplicitlyConstructed< ::std::string> fixed_address_empty_string;

inline const ::std::string& GetEmptyStringAlreadyInited() {
  return fixed_address_empty_string.get();
}
}

void helloWorld2(int a);

