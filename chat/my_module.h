#include "sylar/module.h"
#include "sylar/http/http_server.h"
#include "sylar/http/servlet.h"

#include <functional>
#include <vector>
#include <string>

namespace chat {

class MyModule : public sylar::Module {
public:
    typedef std::shared_ptr<MyModule> ptr;
    MyModule();
    bool onLoad() override;
    bool onUnload() override;
    bool onServerReady() override;
    bool onServerUp() override;
};

}
