#include "my_module.h"
#include "sylar/config.h"
#include "sylar/log.h"
#include "sylar/application.h"
#include "sylar/http/ws_server.h"
#include "resource_servlet.h"
#include "chat_servlet.h"
#include "sylar/env.h"

#include <fstream>
#include <sstream>
#include <string>

namespace chat {

static sylar::Logger::ptr g_logger = SYLAR_LOG_ROOT();

// static int32_t loginHandle(sylar::http::HttpRequest::ptr request
//                    , sylar::http::HttpResponse::ptr response
//                    , sylar::http::HttpSession::ptr session) {
//     std::ifstream ifs("chat/html/login.html");
//     std::string body;
//     if(ifs.is_open()) {
//         std::string line;
//         while(!ifs.eof()) {
//             getline(ifs, line);
//             body += line;
//         }
//     }
//     if(body.empty()) {
//         body = "<html><head><title>404 Not Found"
//         "</title></head><body><center><h1>404 Not Found</h1></center>"
//         "<hr><center>html/login.html</center></body></html>";
//     }

//     response->setHeader("content", "text/html");
//     response->setBody(body);

//     return 0;
// }


MyModule::MyModule()
    :sylar::Module("chat_room", "1.0", "") {
}

bool MyModule::onLoad() {
    SYLAR_LOG_INFO(g_logger) << "onLoad";
    return true;
}

bool MyModule::onUnload() {
    SYLAR_LOG_INFO(g_logger) << "onUnload";
    return true;
}

bool MyModule::onServerReady() {
    SYLAR_LOG_INFO(g_logger) << "onServerReady";
    std::vector<sylar::TcpServer::ptr> srvs;
    sylar::Application::GetInstance()->getServer("http", srvs);
    for(auto &i : srvs) {
        sylar::http::HttpServer::ptr http_server =
            std::dynamic_pointer_cast<sylar::http::HttpServer>(i);
        if(!http_server) {
            continue;
        }
        auto slt = http_server->getServletDispatch();
        slt->addGlobServlet("/html/*", chat::http::ResourceServlet::ptr(
            new chat::http::ResourceServlet(sylar::EnvMgr::GetInstance()->getCwd())
        ));
    }

    srvs.clear();
    if(!sylar::Application::GetInstance()->getServer("ws", srvs)) {
        return false;
    }

    for(auto &i : srvs) {
        sylar::http::WSServer::ptr server =
            std::dynamic_pointer_cast<sylar::http::WSServer>(i);
        sylar::http::ServletDispatch::ptr slt_dispatch = server->getWSServletDispatch();
        slt_dispatch->addServlet("/chat", chat::ChatServlet::ptr(new chat::ChatServlet));
    }

    return true;
}

bool MyModule::onServerUp() {
    SYLAR_LOG_INFO(g_logger) << "onServerUp";
    return true;
}

}

extern "C" {

sylar::Module* CreateModule() {
    sylar::Module* module = new chat::MyModule;
    SYLAR_LOG_INFO(chat::g_logger) << "CreateModule " << module;
    return module;
}

void DestoryModule(sylar::Module* module) {
    SYLAR_LOG_INFO(chat::g_logger) << "CreateModule " << module;
    delete module;
}

}
