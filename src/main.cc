#include <stdlib.h>
#include "FontDescriptor.h"

// this is implemented by the platform
ResultSet *getAvailableFonts();

int main(int argc, char *argv[]) {
  getAvailableFonts()->printJson();
  return 0;
}
