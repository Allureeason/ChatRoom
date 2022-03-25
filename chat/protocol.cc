#include "protocol.h"
#include "sylar/util.h"

namespace chat {

ChatMessage::ptr ChatMessage::Create(const std::string& v) {
    Json::Value json;
    if(!sylar::JsonUtil::FromString(json, v)) {
        return nullptr;
    }
    auto names = json.getMemberNames();
    ChatMessage::ptr msg(new ChatMessage);
    for(auto i : names) {
        msg->m_datas[i] = json[i].asString();
    }
    return msg;
}

ChatMessage::ChatMessage() {

}


std::string ChatMessage::get(const std::string& name) {
    auto it = m_datas.find(name);
    return it == m_datas.end() ? "" : it->second;
}

void ChatMessage::set(const std::string& name, const std::string& v) {
    m_datas[name] = v;
}

std::string ChatMessage::toString() const {
    Json::Value v;
    for(auto i : m_datas) {
        v[i.first] = i.second;
    }
    return sylar::JsonUtil::ToString(v);
}

}