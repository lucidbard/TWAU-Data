#include <iostream>
#include <cstring>

#include "poppler-document.h"
#include "poppler-page.h"
using namespace std;
using namespace poppler;

string ustring_to_utf8(ustring x){
  byte_array str = x.to_utf8();
  string y(std::string(str.begin(), str.end()));
  return y;
}

string ustring_to_latin1(ustring x){
  string y(x.to_latin1());
  return y;
}

int main()
{
  document *doc = document::load_from_file("/Users/lucid/Dropbox/TWAU-data/dissertation/index.pdf");
    const int pagesNbr = doc->pages();
    cout << pagesNbr << endl;
    for(int i = 0; i < doc->pages(); i++) {
      page *p(doc->create_page(i));
      page::text_layout_enum show_text_layout = page::physical_layout;
      rectf target(p->page_rect(page_box_enum::trim_box));
      if(p->orientation() == page::landscape || p->orientation() == page::seascape){
        target.set_right(target.right() * 2);
      }
      ustring str = p->text(target, show_text_layout);
      cout << ustring_to_utf8(str) << endl;
    }
}
