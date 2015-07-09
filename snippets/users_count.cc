/*******************************************************************************
 The MIT License (MIT)

 Copyright (c) 2015 Alexander Zolotarev <me@alex.bio> from Minsk, Belarus

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 *******************************************************************************/

// This define is needed to preserve client's timestamps in events.
#define ALOHALYTICS_SERVER
#include "../Alohalytics/src/event_base.h"

#include "../Alohalytics/src/Bricks/rtti/dispatcher.h"

#include <iostream>
#include <iomanip>
#include <typeinfo>

using namespace std;

struct Processor {
  map<string, uint64_t> ids;
  void operator()(const AlohalyticsBaseEvent &) {}
  void operator()(const AlohalyticsIdEvent & event) { ++ids[event.id]; }
};

int main(int, char **) {
  cereal::BinaryInputArchive ar(std::cin);
  Processor processor;
  while (true) {
    std::unique_ptr<AlohalyticsBaseEvent> ptr;
    try {
      ar(ptr);
    } catch (const cereal::Exception & ex) {
      cout << "Cereal exception" << endl;
      break;
    }
    try {
      bricks::rtti::RuntimeDispatcher<AlohalyticsBaseEvent, AlohalyticsIdEvent>::DispatchCall(*ptr, processor);
    } catch (const bricks::rtti::UnrecognizedPolymorphicType & ex) {
    }
  }

  cout << "Total unique users: " << processor.ids.size() << endl;
  multimap<uint64_t, string> m;
  for (const auto & i : processor.ids) {
    m.insert(make_pair(i.second, i.first));
  }
  for (const auto & i : m) {
    cout << i.first << endl;
  }
  return 0;
}
