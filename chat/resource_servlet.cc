#include "resource_servlet.h"
#include "sylar/log.h"

#include <sstream>
#include <string>
#include <fstream>

namespace chat {
namespace http {

static sylar::Logger::ptr g_logger = SYLAR_LOG_ROOT();

ResourceServlet::ResourceServlet(const std::string& path)
    :Servlet("ResourceServlet")
    ,m_path(path) {
}

int32_t ResourceServlet::handle(sylar::http::HttpRequest::ptr request
                   , sylar::http::HttpResponse::ptr response
                   , sylar::http::HttpSession::ptr session) {
    std::string path = m_path + request->getPath();
    if(path.find("..") != std::string::npos) {
        response->setBody("error path");
        response->setStatus(sylar::http::HttpStatus::NOT_FOUND);
        return 0;
    }

    path.erase(path.find("//"), 1);
    SYLAR_LOG_INFO(g_logger) << "resource file path=" << path;

    std::ifstream ifs(path);
    if(!ifs.is_open()) {
        response->setBody("not found file by path: " + request->getPath());
        response->setStatus(sylar::http::HttpStatus::NOT_FOUND);
        return 0;
    }

    std::stringstream ss;
    std::string line;
    while(std::getline(ifs, line)) {
        ss << line << std::endl;
    }

    response->setHeader("content-type", "text/html;charset=utf8");
    response->setBody(ss.str());
    return 0;
}

}
}